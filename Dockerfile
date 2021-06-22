FROM curlimages/curl AS helm-push
WORKDIR /helm-push
RUN curl -L https://github.com/chartmuseum/helm-push/releases/download/v0.9.0/helm-push_0.9.0_linux_amd64.tar.gz | tar -xz

FROM amazon/aws-cli
COPY --from=lachlanevenson/k8s-kubectl:latest /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=alpine/helm /usr/bin/helm /usr/bin/helm
COPY --from=helm-push /helm-push /root/.local/share/helm/plugins/helm-push/
