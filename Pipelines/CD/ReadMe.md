```
fly --target ws login --username test --password test --concourse-url https://concourse.jasonmorsley.io
```




Example credentials.yaml:

```
docker-username: johnmorsley
docker-password: [PASSWORD]
```

i.e.

```
fly --target ws set-pipeline --config pipeline.yaml --pipeline walking-skeleton --load-vars-from credentials.yaml
```

```
fly --target ws destroy-pipeline --pipeline walking-skeleton
```