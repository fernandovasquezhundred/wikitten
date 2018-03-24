git branch				# show current brannch
git show-branch -a		# list all branches

# create and switch to a branch
git branch iss53
git checkout iss531

git checkout -b iss53   # in one step

# Merging into master
git checkout master
git merge iss53

git checkout -b api_auth
git checkout api_auth
