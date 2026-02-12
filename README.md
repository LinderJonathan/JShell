# JShell - light weight unix shell
JShell is a light weight, easy-to-use shell. The purpose of the project was two-fold:
1. Better understand OS how system calls are handled through creating and handling of program processes.
2. To serve as my 1st choice of shell for my everyday use. This way, if I require functionality that is not yet supported, I will be required to implement it (I use Windows OS at the time of writing, need to migrate to UNIX to use more frequently!)

## Supported funtionality
JShell supports the fundamental functionality for POSIX shells. It supports standard POSIX functionality most assicoated with UNIX-based systems, but also non-interface supported commands that require built-in support, like navigation. It also supports simple program interrupt signals.

### POSIX utility
JShell supports POSIX utility functionality, like navigating with ``cd``, viewing files in the current directory with ``ls`` and making directories and files with ``mkdir`` and ``touch``. For the complete functionality, follow the [link](https://en.wikipedia.org/wiki/List_of_POSIX_commands)

### Built-in utility
Apart from POSIX utility commands, JShell has functionality for a few built-in commands.

* ``jcd <directory>``: change the current directory to ``<directory>``. Since ``Fork()`` spawns a new image, changing directory will only occur inside the child process and thus directory navigation functionality needs to be built-in.
* ``jexit``: exit JShelll

### Signal interrupt functionality. 
JShell handles simple program interrupt signals. Currently handling SIGINT, it can be triggered by preccis ``CTRL+C``.

## How to use
JShell requires that your machine is installed with an operating system that supports POSIX, and a clone of the JShell repository. Follow the steps in the next section to ensure your machine is compliant with JShell.

### Prerequisites
JShell is built on the POSIX standards and utilizes POSIX specific system calls. If you are unsure if the OS your machine runs is POSIX compliant, you can read more [here](https://en.wikipedia.org/wiki/POSIX#Conformance). If windows is your OS, or you cannot find your OS in the list, consider installing and using [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)

**WSL installments**
The shell is written in C and requires a compiler and installing the C standard libraries as well as interrupt signal handler libraries. To install, run the following:
```bash
sudo apt update
sudo apt install build-essential
```

### Getting started

1. Open a new terminal. If you are using WSL, start the subsystem:
```bash
wsl
```

2. Navigate to the folder where you want to clone the repository:

```bash
git clone https://github.com/LinderJonathan/jshell.git
```

3. Build and run. The repository uses Make for building and compiling the project. Build and run the shell:

```bash
make all

./bin/jshell
```
The program is a lightweight REPL that continously reads and parses input. If a valid program name and arguments are entered, a child process will spawn and run execute the program. To exit the program, simply type ``jexit``
## Future improvements
JShell supports the very fundamental functionality you would expect from a shell. There is therefore heaps of room to improve current implemented functionality, but also to add more. Below is a listing of potential fixes and suggestions to new functionality
* There is currently ta bug with the parser where quotation marks are not parsed correctly. This is an issue when running commands that parse several words separated by space as a single argument. For example, committing in **git** is not possible.

```bash
git commit -m "each word in this commit message will be parsed as an argument, not the entire line starting amd ending with a quoation mark"
```

* New functionality! Just open a pull request I will likely accept anything