# ss-ext-pack

This extension pack install common utilities and create aliases useful for daily administrative tasks.

## Installed packages

### htop
An interactive process viewer for Unix systems. It is a text-mode application (for console or X terminals) and requires ncurses.

[website](https://hisham.hm/htop/)

### vim
Vim (a contraction of Vi IMproved) is a clone, with additions, of Bill Joy's vi text editor program for Unix.

[website](https://www.vim.org/)

### gitflow
A collection of Git extensions to provide high-level repository operations for Vincent Driessen's branching model.

[website](https://github.com/nvie/gitflow)

### rmtrash
Put files (and directories) in trash using the trash-put command in a way that is, otherwise as trash-put itself, compatible to GNUs rm and rmdir.

[website](https://sandrospadaro.github.io/rmtrash/)

### mannaggia
Automatic saint invocation used by expert Linux System Administrators.

[website](https://sandrospadaro.github.io/mannaggia/)

## Most useful aliases and bash function

* `where` is for `find / -iname`
* `calc` is for `bc`
* `la` is for `ls -lah`
* `ps` is for `ps -aux`
* `netstat` is for `netstat -pnt`
* `mkcdir` is for `mkdir` and `cd` into created directory

For the complete list see the source code.

## How to install

* Configure yum repository:
```
$ cd /etc/yum.repos.d/
$ sudo curl http://sandrospadaro.altervista.org/sandrospadaro.repo --output sandrospadaro.repo
```

* install the packege:
```
$ sudo dnf install ss-ext-pack -y
```
### Warning
Aliases and the bash function are defined in `/etc/profile.d/ss-ext-pack.sh`; so pay attention to not override i.e. in `.bashrc`.

Aliases and the bash function will be available only after reboot or you run `source /etc/profile.d/ss-ext-pack.sh`.
