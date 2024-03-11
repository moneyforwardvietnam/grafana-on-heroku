FROM grafana/grafana
ENV GF_INSTALL_PLUGINS grafana-clock-panel,natel-discrete-panel,briangann-gauge-panel,vonage-status-panel,neocat-cal-heatmap-panel,grafana-piechart-panel,speakyourcode-button-panel
ENV GF_SECURITY_ALLOW_EMBEDDING true
ENV GF_AUTH_ANONYMOUS_ENABLED false
ADD heroku-run.sh /
ADD grafana.ini /etc/grafana/grafana.ini
ENTRYPOINT [ "/heroku-run.sh" ]
