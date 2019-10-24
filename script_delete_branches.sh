for branch in $(git branch -r --merged develop | grep origin | grep -v develop | grep -v release | grep -v master | sed -E "s|^ *origin/||g")
do
    git push origin $branch --delete
done
