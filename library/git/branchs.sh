# show current brannch and all
git branch
git show-branch -a

# create and switch to a branch
git branch iss53
git checkout iss531
# in one step
git checkout -b iss53

# Merging into master
git checkout master
git merge iss53


git checkout -b api_auth
git checkout api_auth
