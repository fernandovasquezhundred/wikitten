git remote -v
git remote rm destination

# Add external (remote) repo named __REPO_NAME__
git remote add __REPO_NAME__ git@github.com:__USER__/__REPO__.git
#   By convention, "origin" is the original remote repository,
#     it is the 'primary' centralized repository as well.

git remote show origin       # show repo URL



###
### Merge REmotes
###
cloning yourRemoteRepo (that way, you can easily pull/push from that repo)
adding mainstreamRepo as a remote and fetch its branch, then track the one which interest you

git clone git://yourRemoteRepo
git remote add mainStreamRepo http://mainStreamRepo
git fetch mainStreamRepo
git checkout -b mainStreamMaster mainStreamRepo/master
git checkout master

# Then

- merge mainStreamMaster to your master,
- OR rebase your master on top of mainStreamMaster (in order to integrate the full history of mainStreamMaster into your master branch)
then make some evolutions to master (or to a topic-specific branch) that you can push to yourRemoteRepo.
