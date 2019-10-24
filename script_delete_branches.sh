for branch in $(git branch -r --merged branch_1 | grep origin | grep -v branch_1 | grep -v branch_2 | grep -v master | sed -E "s|^ *origin/||g")
do
    git push origin $branch --delete
done
