git submodule foreach git push || { echo '---> push of submodule repo failed'; exit 1;}

if [ "$1" != "nc" ]; then
    echo '---> adding commit to master repo'
    git commit -am "master repo commit" || { echo '---> failed to create commit in master repo'; exit 1;}
fi

git push || { echo '---> push of master repo failed'; exit 1;}
echo '---> success';