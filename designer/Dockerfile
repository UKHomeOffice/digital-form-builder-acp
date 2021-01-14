FROM ghcr.io/xgovformbuilder/digital-form-builder-designer:latest
WORKDIR /usr/src/app

RUN deluser --remove-home appuser && \
 addgroup -g 1001 appuser && \
 adduser -S -u 1001 -G appuser appuser

EXPOSE 3000
USER 1001

CMD [ "yarn", "designer", "start" ]
