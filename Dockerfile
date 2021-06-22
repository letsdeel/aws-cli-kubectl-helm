FROM amazon/aws-cli

COPY --from=lachlanevenson/k8s-kubectl:latest /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=alpine/helm /usr/bin/helm /usr/bin/helm

RUN helm plugin install https://github.com/chartmuseum/helm-push.git
