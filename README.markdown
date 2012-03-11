# Trigger

Trigger listens for changes to a directory, and executes a command whenever a change occurs.

## Usage

trigger [<paths>] -- <command>

e.g.

```sh
# Run some python tests if any files changes
trigger . -- python -m unittest discover

# Show the git status when ever a file changes
# (Doesn't work on the root of a repository, as running git status fires an event)
trigger ./osx -- git status
```

## Why use it?
[Guard](https://github.com/guard/guard) is good, but is over the top for my purposes. Trigger is a 'real' command-line utility, and is simpler to install.

## Installation
Copy the trigger and fsevent_watch files into your path, in the same place.

## Compatibility
Mac OSX only at the moment. A Linux version is definately on the todo list. As it's new only limited testing has been done.

## Thanks to
[ttilley (Travis Tilley)](https://github.com/ttilley) for his [fsevent_watch](https://github.com/ttilley/fsevent_watch) tool.

## Status
Being developed. Contributions are welcome.

## TODO

 - Linux version.
 - Install Mac version via brew.
 - Run command as a one off when trigger is launched.
 - Option to clear screen every trigger (like watch).
 - For long running commands, Work out best approach when files are updated during it's run.
 - Option to ignore directories (e.g. .git)
 - Option for more verbosity.
 - Pass changed dirs to the command.
 - Listen for individual files rather than directories.
 - Windows version.
