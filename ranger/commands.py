# This is a sample commands.py.  You can add your own commands here.
#
# Please refer to commands_full.py for all the default commands and a complete
# documentation.  Do NOT add them all here, or you may end up with defunct
# commands when upgrading ranger.

# A simple command for demonstration purposes follows.
# -----------------------------------------------------------------------------

from __future__ import absolute_import, division, print_function

# You can import any python module as needed.
import os

# You always need to import ranger.api.commands here to get the Command class:
from ranger.api.commands import Command

# Any class that is a subclass of "Command" will be integrated into ranger as a
# command.  Try typing ":my_edit<ENTER>" in ranger!


class my_edit(Command):
    # The so-called doc-string of the class will be visible in the built-in
    # help that is accessible by typing "?c" inside ranger.

    """:my_edit <filename>

    A sample command for demonstration purposes that opens a file in an editor.
    """

    # The execute method is called when you run this command in ranger.

    def execute(self):
        # self.arg(1) is the first (space-separated) argument to the function.
        # This way you can write ":my_edit somefilename<ENTER>".
        if self.arg(1):
            # self.rest(1) contains self.arg(1) and everything that follows
            target_filename = self.rest(1)
        else:
            # self.fm is a ranger.core.filemanager.FileManager object and gives
            # you access to internals of ranger.
            # self.fm.thisfile is a ranger.container.file.File object and is a
            # reference to the currently selected file.
            target_filename = self.fm.thisfile.path

        # This is a generic function to print text in ranger.
        self.fm.notify("Let's edit the file " + target_filename + "!")

        # Using bad=True in fm.notify allows you to print error messages:
        if not os.path.exists(target_filename):
            self.fm.notify("The given file does not exist!", bad=True)
            return

        # This executes a function from ranger.core.acitons, a module with a
        # variety of subroutines that can help you construct commands.
        # Check out the source, or run "pydoc ranger.core.actions" for a list.
        self.fm.edit_file(target_filename)

    # The tab method is called when you press tab, and should return a list of
    # suggestions that the user will tab through.
    # tabnum is 1 for <TAB> and -1 for <S-TAB> by default
    def tab(self, tabnum):
        # This is a generic tab-completion function that iterates through the
        # content of the current directory.
        return self._tab_directory_content()


# This command uses fasd to jump to a frequently visited directory with a
# given substring of its path.


class fasd(Command):

    """
    :fasd

    Jump to directory using fasd
    """

    def execute(self):
        import subprocess

        arg = self.rest(1)
        if arg:
            directory = subprocess.check_output(
                ["fasd", "-d"] + arg.split(), universal_newlines=True
            ).strip()
            self.fm.cd(directory)


# mcd


class mcd(Command):

    """
    :mcd <dirname>

    Creates a directory with the name <dirname> and enters it.
    """

    def execute(self):
        from os.path import join, expanduser, lexists
        from os import makedirs
        import re

        dirname = join(self.fm.thisdir.path, expanduser(self.rest(1)))
        if not lexists(dirname):
            makedirs(dirname)

            match = re.search("^/|^~[^/]*/", dirname)
            if match:
                self.fm.cd(match.group(0))
                dirname = dirname[match.end(0) :]

            for m in re.finditer("[^/]+", dirname):
                s = m.group(0)
                if s == ".." or (
                    s.startswith(".") and not self.fm.settings["show_hidden"]
                ):
                    self.fm.cd(s)
                else:
                    # We force ranger to load content before calling `scout`.
                    self.fm.thisdir.load_content(schedule=False)
                    self.fm.execute_console("scout -ae ^{}$".format(s))
        else:
            self.fm.notify("file/directory exists!", bad=True)


# go to path in the clipboard


class goclip(Command):
    """:goclip

    cd to the contents of the clipboard
    """

    def execute(self):
        import subprocess

        def clipboards():
            from ranger.ext.get_executables import get_executables

            clipboard_managers = {
                "xclip": [["xclip", "-selection", "clipboard", "-o"]],
                "xsel": [["xsel", "-b", "-o"]],
                "pbpaste": [["pbpaste"]],
            }
            ordered_managers = ["pbpaste", "xclip", "xsel"]
            executables = get_executables()
            for manager in ordered_managers:
                if manager in executables:
                    return clipboard_managers[manager]
            return []

        clipboard_commands = clipboards()

        for command in clipboard_commands[:1]:
            process = subprocess.Popen(
                command, universal_newlines=True, stdout=subprocess.PIPE
            )
            (clipcontents, _) = process.communicate()
            self.fm.cd(clipcontents)


# Search with fd
# fd is a great replacement for the venerable find. Put the following code in
# your ~/.config/ranger/commands.py, if you don't have one you can get one by
# running ranger --copy-config=commands. Note that fd returns its results
# according to your locale's collating order, this is somewhat annoying if your
# order in ranger differs (which it probably does because natural's the
# default).
# https://github.com/ranger/ranger/wiki/Custom-Commands

from collections import deque

fd_deq = deque()


class fd_search(Command):
    """:fd_search [-d<depth>] <query>

    Executes "fd -d<depth> <query>" in the current directory and focuses the
    first match. <depth> defaults to 1, i.e. only the contents of the current
    directory.
    """

    def execute(self):
        import subprocess
        from ranger.ext.get_executables import get_executables

        if not "fd" in get_executables():
            self.fm.notify("Couldn't find fd on the PATH.", bad=True)
            return
        if self.arg(1):
            if self.arg(1)[:2] == "-d":
                depth = self.arg(1)
                target = self.rest(2)
            else:
                depth = "-d1"
                target = self.rest(1)
        else:
            self.fm.notify(":fd_search needs a query.", bad=True)
            return

        # For convenience, change which dict is used as result_sep to change
        # fd's behavior from splitting results by \0, which allows for newlines
        # in your filenames to splitting results by \n, which allows for \0 in
        # filenames.
        null_sep = {"arg": "-0", "split": "\0"}
        nl_sep = {"arg": "", "split": "\n"}
        result_sep = null_sep

        process = subprocess.Popen(
            ["fd", result_sep["arg"], depth, target],
            universal_newlines=True,
            stdout=subprocess.PIPE,
        )
        (search_results, _err) = process.communicate()
        global fd_deq
        fd_deq = deque(
            (
                self.fm.thisdir.path + os.sep + rel
                for rel in sorted(
                    search_results.split(result_sep["split"]), key=str.lower
                )
                if rel != ""
            )
        )
        if len(fd_deq) > 0:
            self.fm.select_file(fd_deq[0])


class fd_next(Command):
    """:fd_next

    Selects the next match from the last :fd_search.
    """

    def execute(self):
        if len(fd_deq) > 1:
            fd_deq.rotate(-1)  # rotate left
            self.fm.select_file(fd_deq[0])
        elif len(fd_deq) == 1:
            self.fm.select_file(fd_deq[0])


class fd_prev(Command):
    """:fd_prev

    Selects the next match from the last :fd_search.
    """

    def execute(self):
        if len(fd_deq) > 1:
            fd_deq.rotate(1)  # rotate right
            self.fm.select_file(fd_deq[0])
        elif len(fd_deq) == 1:
            self.fm.select_file(fd_deq[0])


# fzf integration


class fzf_select(Command):
    """
    :fzf_select

    Find a file using fzf.

    With a prefix argument select only directories.

    See: https://github.com/junegunn/fzf
    """

    def execute(self):
        import subprocess
        import os.path

        if self.quantifier:
            # match only directories
            command = "find -L . \( -path '*/\.*' -o -fstype 'dev' -o -fstype 'proc' \) -prune \
            -o -type d -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"
        else:
            # match files and directories
            command = "find -L . \( -path '*/\.*' -o -fstype 'dev' -o -fstype 'proc' \) -prune \
            -o -print 2> /dev/null | sed 1d | cut -b3- | fzf +m"
        fzf = self.fm.execute_command(
            command, universal_newlines=True, stdout=subprocess.PIPE
        )
        stdout, stderr = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.rstrip("\n"))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)


# Source : https://wiki.archlinux.org/index.php/ranger#Compression

import os
from ranger.core.loader import CommandLoader


class compress(Command):
    def execute(self):
        """ Compress marked files to current directory """
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()

        if not marked_files:
            return

        def refresh(_):
            cwd = self.fm.get_directory(original_path)
            cwd.load_content()

        original_path = cwd.path
        parts = self.line.split()
        au_flags = parts[1:]

        descr = "compressing files in: " + os.path.basename(parts[1])
        obj = CommandLoader(
            args=["apack"]
            + au_flags
            + [os.path.relpath(f.path, cwd.path) for f in marked_files],
            descr=descr,
        )

        obj.signal_bind("after", refresh)
        self.fm.loader.add(obj)

    def tab(self):
        """ Complete with current folder name """

        extension = [".zip", ".tar.gz", ".rar", ".7z"]
        return [
            "compress " + os.path.basename(self.fm.thisdir.path) + ext
            for ext in extension
        ]
