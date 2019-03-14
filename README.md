# blog
rikoroku.comにデプロイする静的サイト

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
