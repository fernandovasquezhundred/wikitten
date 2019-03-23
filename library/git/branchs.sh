git branch				# show current brannch
git show-branch -a		# list all branches

# create and switch to a branch
git branch iss53        # create new branch
git checkout iss53      # move to new branch
git checkout -b iss53   # in one step

# merging branch into master
git checkout master
git pull origin master  # in the case you want to update master
git merge iss53
