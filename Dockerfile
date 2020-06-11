FROM jboss/keycloak:5.0.0

COPY theme/spacetab/ /opt/jboss/keycloak/themes/spacetab/

ENV KEYCLOAK_DEFAULT_THEME spacetab
