# revert a commit
git commit -m "Something terribly misguided"              (1)
$ git reset --soft HEAD~                                    (2)
<< edit files as necessary >>                               (3)
$ git add ...                                               (4)
$ git commit -c ORIG_HEAD


# While working on "feature" branch, suddenly need to go work on a hotfix:
git commit --all --message "Backup my feature work"
git checkout -b hotfix master
# You did your hotfix, and are ready to go back to feature
git checkout feature
git reset head^


# You can use git stash, which will save your changes without creating a commit.1
git stash
# Then switch to your other branch:
git checkout branch-B
# When you're reading, go back to your original branch and unstash your changes:
git checkout branch-A
git stash pop

# git reset
git reset --hard
git checkout HEAD -- <path>
