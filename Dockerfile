FROM docker:dind

COPY --from=amazon/aws-cli:latest /usr/local/bin/aws /usr/local/bin/aws
COPY --from=lachlanevenson/k8s-kubectl:latest /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=alpine/helm /usr/bin/helm /usr/bin/helm

ENV HELM_EXPERIMENTAL_OCI 1
