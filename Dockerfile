FROM grafana/grafana
ENV GF_INSTALL_PLUGINS grafana-clock-panel,natel-discrete-panel,briangann-gauge-panel,vonage-status-panel,neocat-cal-heatmap-panel,grafana-piechart-panel,speakyourcode-button-panel
ENV GF_SECURITY_ALLOW_EMBEDDING true
ENV GF_AUTH_ANONYMOUS_ENABLED false
ENV GF_AUTH_AZUREAD_ENABLED true
ENV GF_AUTH_AZUREAD_ALLOW_SIGN_UP true
ENV GF_AUTH_AZUREAD_SCOPES openid email profile
# ENV GF_AUTH_AZUREAD_CLIENT_ID YOUR_AZURE_AD_APPLICATION_CLIENT_ID - Set on heroku app
# ENV GF_AUTH_AZUREAD_CLIENT_SECRET YOUR_AZURE_AD_APPLICATION_CLIENT_SECRET - Set on heroku app
# ENV GF_AUTH_AZUREAD_AUTH_URL https://login.microsoftonline.com/YOUR_TENANT_ID/oauth2/v2.0/authorize - Set on heroku app
# ENV GF_AUTH_AZUREAD_TOKEN_URL https://login.microsoftonline.com/YOUR_TENANT_ID/oauth2/v2.0/token - Set on heroku app
# ENV GF_AUTH_AZUREAD_ALLOWED_DOMAINS YOUR_DOMAIN.com - Set on heroku app
# ENV GF_AUTH_AZUREAD_ALLOWED_GROUPS YOUR_AZURE_AD_GROUP_IDS - Set on heroku app
ADD heroku-run.sh /
ADD grafana.ini /etc/grafana/grafana.ini
ENTRYPOINT [ "/heroku-run.sh" ]
