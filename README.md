# blog
[rikoroku.com](https://rikoroku.com)にデプロイする静的サイト

## Development
```
$ cd ~/Documents/git/blog/hugo
$ hugo new post/new_post.md
$ hugo -t kiss --themesDir ./themes/ server
```

## Deploy
```
$ hugo -t kiss
$ ~/node_modules/.bin/firebase deploy
```
