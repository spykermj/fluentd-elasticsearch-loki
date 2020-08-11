FROM grafana/fluent-plugin-loki:master as loki

FROM fluent/fluentd-kubernetes-daemonset:v1.9.3-debian-elasticsearch7-1.0

COPY --from=loki /fluentd/plugins/out_loki.rb /fluentd/plugins/out_loki.rb
