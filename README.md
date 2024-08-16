# argocd-dr-cronjob-eks
ArgoCD Disaster Recovery Cronjob EKS

## Create image from this Dockerfile
```docker build -t registry-url/argocd-kubectl:snapshot .```

## Push to registry
```docker push registry-url/argocd-kubectl:snapshot```

## Apply yaml file (create your secret and set your infos)
```kubectl apply -f cronjob.yaml```

## If you wanna test manually
```kubectl create job --from=cronjob/argocd-backup argocd-backup```\
```klo -f pod-name```

## If you need restore
```argocd admin import - < your-file.yaml```

Doc: https://argo-cd.readthedocs.io/en/stable/operator-manual/disaster_recovery/

Enjoy!
