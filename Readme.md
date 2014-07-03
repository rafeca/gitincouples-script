# step-by-step solution for git-in-couples

This repo contains a bash script that resolves the
[git in couples](https://github.com/lodr/gitincouples) exercise.

Instead of relying on github, it creates the remote repositories in the local
machine, and it simulates the Pull Request actions locally.

## Requirements

The requirements are simple: a bash shell with git, wget and unzip commands

## How to run it

* Clone this repository:

```sh
$ git clone https://github.com/rafeca/gitincouples-script.git
```

* Run the `main.sh` script from any folder (do not run it from its same folder

```sh
$ mkdir resolution
$ cd resolution
$ ../gitincouples-script/main.sh
```

* Follow the instructions

### Pausing/resuming execution

You can `Ctrl+C` any time to stop the execution of the script.
To resume it from where you left it, execute the script passing the first step to
execure:

```sh
$ ../gitincouples-script/main.sh alice 3
```

* :beer:!
