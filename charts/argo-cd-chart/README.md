# Argo CD Chart

When installing a Helm chart, Argo CD checks the lock file for any dependencies and downloads them. Not having the lock file will result in an error.

```
$ helm repo add argo-cd https://argoproj.github.io/argo-helm
```

```
$ helm dep update charts/argo-cd/
```

This will create the Chart.lock and charts/argo-cd-<version>.tgz files. The .tgz file is only required for the initial installation from our local machine.

## Port Forwarding

```
$ kubectl port-forward svc/argo-cd-argocd-server 8080:443
```

```
$ kubectl get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

## Login

```
$ argocd login argocd.adftech.com.br --grpc-web
```

## Set user password

If you are managing users as the admin user, <current-user-password> should be the current admin password:

```
argocd account update-password \
  --account [account] \
  --current-password [current-user-password] \
  --new-password [new-user-password]
```
