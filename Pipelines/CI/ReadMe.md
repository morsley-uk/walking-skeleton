```
fly --target aws login --username test --password test --concourse-url http://concourse.morsley.io:8080
```

```
fly --target aws set-pipeline --config pipeline.yaml --pipeline walking-skeleton
```


To pass paramaters in on the command line use:

```
--var docker-username=johnmorsley --var docker-password=[PASSWORD]
```

Or, to use a file , which contains the variables, use:


```
--load-vars-from credentials.yaml
```

Example credentials.yaml:

```
docker-username: johnmorsley
docker-password: [PASSWORD]
```

i.e.

```
fly --target aws set-pipeline --config pipeline.yaml --pipeline walking-skeleton --load-vars-from credentials.yaml
```

```
fly --target aws watch --pipeline walking-skeleton
```

```
fly --target aws destroy-pipeline --pipeline walking-skeleton
```