git remote -v
git remote rm destination

# Add external (remote) repo named __REPO_NAME__
git remote add __REPO_NAME__ git@github.com:__USER__/__REPO__.git
#   By convention, "origin" is the original remote repository,
#     it is the 'primary' centralized repository as well.

git remote show origin       # show repo URL
