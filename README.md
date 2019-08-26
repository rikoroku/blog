# blog

## Development
```
$ cd ~/Documents/git/blog/hugo
$ hugo new post/new_post.md
$ hugo -t kiss --themesDir ./themes/ server
```

## Deploy
```
$ hugo -t kiss
$ rm -fr ~/Documents/git/blog/docs/* && mv ~/Documents/git/blog/hugo/public/* ~/Documents/git/blog/docs/
$ cd ~/Documents/git/blog/docs && git add --all && git commit -m "[add] Publishing to docs" && git push origin master
```

### old
```
$ ~/node_modules/.bin/firebase deploy
```
