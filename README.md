# blogs

## Development
```
$ cd ~/Documents/git/blogs/hugo
$ hugo new post/new_post.md
$ hugo -t kiss --themesDir ./themes/ server
```

## Deploy
```
$ hugo -t kiss
$ rm -fr ~/Documents/git/blogs/docs/* && mv public/* ~/Documents/git/blogs/docs/
$ ~/Documents/git/blogs/docs && git add --all && git commit -m "[add] Publishing to docs"
```

### old
```
$ ~/node_modules/.bin/firebase deploy
```
