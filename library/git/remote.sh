git remote -v
git remote rm __REPO__

# Add external (remote) repo with name __NAME__
git remote add __NAME__ __REPO__
#   By convention, "origin" is the original remote repository,
#     it is the 'primary' centralized repository as well.

git remote show origin       # show repo URL

# Merge remotes
git clone __REPO1__
git remote add __MAIN__ __REPO2__ 
git fetch __MAIN__
git checkout -b master __REPO2__/master
git checkout master

# Then

- merge mainStreamMaster to your master,
- OR rebase your master on top of mainStreamMaster (in order to integrate the full history of mainStreamMaster into your master branch)
then make some evolutions to master (or to a topic-specific branch) that you can push to yourRemoteRepo.
