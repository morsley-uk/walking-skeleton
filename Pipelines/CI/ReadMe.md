```
fly --target lh login --username test --password test --concourse-url http://localhost:8080
```

```
fly --target lh set-pipeline --config pipeline.yaml --pipeline walking-skeleton
```

```
fly --target lh watch --pipeline walking-skeleton
```

```
fly --target lh destroy-pipeline --pipeline walking-skeleton
```