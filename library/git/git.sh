# Start using git with the current directory
git init
git config --global user.name "User Name"
git config --global user.email "user@gmail.com"
git config --global user.signingkey __KEYID__

git config --local -e
git config --local core.editor "nvim"
git config --local commit.gpgsign true

# Push changes to remote repo "origin" from local branch "master"
git push -u origin master

# Pull (checkout) to local branch "master" from remote repo "origin"
git pull origin master

# Cloning a git repo, remote or local
git clone git@github.com:__user__/__repoName__.git
git clone __REPO__ __DIR__

# Do things... changes new files...
git add ejemplo.txt         #- Adding to the local repo
git commit -m "now in local repo" #  - Push changes into the remote repo
git push __repo__

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

# revert to specific commit (commits you did after will no longer be in the history)
git log -10                 # search the hash where you want to go
git reset --hard __HASH__   # hash sample: 85102eac830990afa60136419bd09ffeea7eb646
git reset --hard HEAD       # remove all you uncommited changes
git reset --soft HEAD       # stage your changes
git reset --mixed HEAD      # keep changes as modified

# other
git clone -b __branch__ __repo__
git clone -b __branch__ --single-branch __repo__

# small change to last commit
git add .
git commit --amend

# merge different remotes
git remote add openshift __repo__
git fetch openshift
git merge openshift/master
git commit
