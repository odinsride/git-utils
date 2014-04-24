#!/bin/bash
######################################################################################
#
#     PROGRAM       : clone-all.sh
#     DESCRIPTION   : This script will perform a "git clone" operation to pull down
#                     all Git repositories to the developer's machine.
#
#     CREATED BY    : Kevin Custer
#     CREATION DATE : 03-Mar-2014
#
#     INSTRUCTIONS  : Place this script where you would like to clone the list of Git
#                     repositories into.  Update the USER_ID variable to use your
#                     computing ID.  Make sure you have setup SSH keys to authenticate
#                     on the Git server.
#
######################################################################################

USER_ID=;
GIT_SERVER=;

REPOLIST[0]="";

echo -e "\nCloning Git repositories into `pwd`\n";

for REPOSITORY in "${REPOLIST[@]}"
do
      git clone ssh://$USER_ID@$GIT_SERVER/$REPOSITORY.git/
      echo;
done

echo -e "All Git repositories have been cloned.\n";
