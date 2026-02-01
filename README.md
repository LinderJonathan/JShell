# JShell - light weight unix shell
JShell is a light weight shell. The purpose of the project was two-fold:
1. Better understand OS: how system calls are handled through creating and handling of program processes.
2. TODO: write about every-day use

## Supported funtionality

JShell supports the fundamental functionality for POSIX shells. It supports POSIX utility functionality like 

### POSIX utility

### Built-in utility


## How to use

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

2. Navigate to a folder of chouce, and clone the repository

```bash
git clone https://github.com/LinderJonathan/jshell.git
```

3. TODO: continue here

## Future improvements