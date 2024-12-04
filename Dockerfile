FROM ghcr.io/getsops/sops:v3.9.1 as sops

FROM quay.io/argoproj/argocd:v2.13.1

COPY --from=sops /usr/local/bin/sops /usr/local/bin/sops
COPY ./plugin.yaml /home/argocd/cmp-server/config/plugin.yaml
