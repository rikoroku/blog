# blog
[rikoroku.com](https://rikoroku.com)にデプロイする静的サイト


## Prepare
```
$ docker-compose build
$ docker-compose run --rm hugo new site hugo
```

## Development
```
$ docker-compose up
$ docker-compose run --rm hugo new post/new_post.md
```

## Deploy
```
$ docker-compose run --rm hugo -t kiss
$ ~/node_modules/.bin/firebase deploy
```
