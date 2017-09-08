# Start using git with the current directory
git init
git config --global user.name "User Name"
git config --global user.email "user@gmail.com"

# Push changes to remote repo "origin" from local branch "master"
git push -u origin master

# Pull (checkout) to local branch "master" from remote repo "origin"
git pull origin master

### Cloning ###

# Cloning a git repo, remote or local
git clone git@github.com:__user__/__repo__.git
git clone hello hello-clone

# Do things... changes new files...
git add ejemplo.txt         #- Adding to the local repo
git commit -m "now in local repo" #  - Push changes into the remote repo
git push git@github.com:__user__/__repo__.git

# Get changes from other users
# You do not need to specify the local branch if you are already sitting in it.
git pull

# Change remote origin
git remote set-url origin __repo__
git remote set-url origin __repo__

# Clone specific branch
git clone <url> --branch <branch> --single-branch [<folder>]
git clone user@git-server:project_name.git -b branch_name /some/folder
git clone user@git-server:project_name.git -b branch_name --single-branch /some/folder

### Basic Commands ###
git status       # Checking the status of your repository
git ls-files     # Seeing what files have been committed
git rm <file>    # Scheduling deletion of a file ``````
git log          # Viewing a log of your commits ( -v: pagination )
git log --stat
git changes      # Visualizing
git --all

# Creating a new tag and pushing it to the remote branch
git tag "v1.3"
git push --tags

# SVN revert equivalent
git log                     # search the SHA1_HASH where you want to go
git reset --hard SHA1_HASH  # SHA1_HASH must me something like: 85102eac830990afa60136419bd09ffeea7eb646

# other
git clone -b <branch> <remote_repo>
git clone -b my-branch git@github.com:user/myproject.git

# With Git 1.7.10 and later, add --single-branch to prevent fetching of all branches.
git clone -b 2.4 --single-branch https://github.com/Itseez/opencv.git opencv-2.4

# merge different remotes
git remote add openshift git@github.com:__user__/__repo__.git
git fetch openshift
git merge openshift/master
git commit

# merge master into current branch (get master into branch)
git checkout dev_branch     # gets you "on branch dev_branch"
git fetch origin            # gets you up to date with origin
git merge origin/master

# merge my branch into master
git checkout master       # change to branch `master`
git pull origin master    # update from remote `origin`
git merge dev             # merge with my branch `dev`
git push origin master    # push changes
