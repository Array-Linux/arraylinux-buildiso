# Arraylinux

![arraylinux-title_white](https://github.com/user-attachments/assets/90678f09-ab0e-4673-a0a0-da2040295861)


Distro State
> The Distro is still 40% finished
## Build 
> (not recommended to do yet)
### build it on your home folder (recommended)

    $ git clone https://github.com/Array-Linux/arraylinux-buildiso.git

Create the folder named "array-repo" in root folder 

    $ mkdir /array-repo

Move all packages inside "repo" folder on the cloned repository to /array-repo/ and create a local repository using:

    # to create the .db file
    $ repo-add /array-repo/array-repo.db.tar.gz
     
    # to add packages to the repository
    $ repo-add -n /array-repo/array-repo.db.tar.gz *.zst

If you want to add any other packages, you should add the package (which has .pkg.tar.zst extension) inside ``/array-repo/`` and do the command to add the packages to the local repo again

 then modify ``packages.x86_64`` inside ``arraylinux-buildiso/`` by putting the name of the package added in any line

Now you can proceed to modify anything you want before building the ISO by doing these commands:

    $ mkdir ~/work
    $ mkdir ~/out

    $ sudo mkarchiso -v ~/arraylinux/arraylinux-buildiso -w ~/work -o ~/out

or you can write a script called ``build.sh`` or anything you want

    #!/bin/bash

    mkdir ~/work
    mkdir ~/out

    sudo mkarchiso -v ~/arraylinux/arraylinux-buildiso -w ~/work -o ~/out
then do ``chmod +x build.sh``

If you need to change anything, you should use ```sudo rm -r``` on both folders "work" and "out" before building the ISO again
