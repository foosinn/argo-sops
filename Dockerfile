FROM ghcr.io/getsops/sops:v3.9.1 as sops

FROM quay.io/argoproj/argocd:v2.12.4

COPY --from=sops /usr/local/bin/sops /usr/local/bin/sops