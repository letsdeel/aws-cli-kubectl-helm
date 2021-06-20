FROM amazon/aws-cli:latest

COPY --from=lachlanevenson/k8s-kubectl:latest /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=alpine/helm /usr/bin/helm /usr/bin/helm

ENV HELM_EXPERIMENTAL_OCI 1
