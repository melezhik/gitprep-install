# SYNOPSIS

Installs, runs, stops [gitprep](https://github.com/yuki-kimoto/gitprep) server.

# INSTALL

    $ cpanm Sparrow
    $ sparrow index update 
    $ sparrow plg install gitprep

# Actions

## Install gitprep server

    # default action is `install'
    $ sparrow plg run gitprep

    # or say explicitly
    $ sparrow plg run gitprep --param action=install

## Run gitprep server

    $ sparrow plg run gitprep --param action=start

## Stop gitprep server

    $ sparrow plg run gitprep --param action=stop

# Configuring gitprep installation

One may configure gitprep installation using sparrow task:

    $ sparrow project create system

    $ sparrow task add gitprep-server gitprep

    $ EDITOR=nano sparrow task ini gitprep-server
    # the user to gitprep server under
    gitprep_user = gitprep

    # To install gitprep server
    $ sparrow task run gitprep-server

    # To run gitprep server
    $ sparrow task run gitprep-server --param action=start

    # To stop gitprep server
    $ sparrow task run gitprep-server --param action=stop
    
Right now gitprep_user is the only parameter one may set. If you need
more configuration parameters ( http port, etc ) let me know, creating an issue.

    
# Author

Alexey Melezhik
