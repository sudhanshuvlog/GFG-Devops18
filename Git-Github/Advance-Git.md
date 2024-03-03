# Git Commands

## Git Reset

- **git reset --soft HEAD~1**: Resets the commit history to the previous commit, Will keep the changes in the staging area, and will not make any changes on the working area
- **git reset --mixed HEAD~1**: Resets the commit history to the previous commit, It will unstage the changes, and will not make any changes to the working area 
- **git reset --hard HEAD~1**: Resets the commit history to the previous commit, discarding changes from everywhere.
- In soft and mixed reset, changes remain in the staging area and working directory, respectively, allowing for recommit.
- In a hard reset, changes are lost, and the commit history cannot be recovered.
- Soft and mixed reset allow retrieval of commit history with the old commit ID.

## Git Revert

- **git revert <commit-id>**: Preserves commit history by creating a new commit that undoes changes.

## Git Stash

- **git stash**: Saves changes in the stash, leaving the working directory clean.
- **git stash list**: Lists all stashes.
- **git stash save "message"**: Saves changes in the stash with a message.
- **git stash show stash@{0}**: Shows changes in the stash with stash id=0.
- **git stash pop stash@{0}**: Adds stash changes to the working directory, deleting the stash.
- **git stash apply stash@{0}**: Adds stash changes to the working directory, preserving the stash.
- **git stash drop stash@{0}**: Deletes the stash with stash id=0.

## .gitignore file

.gitignore is used to ignore files and folders in the git repository. Entries in .gitignore prevent these files and folders from being tracked.
