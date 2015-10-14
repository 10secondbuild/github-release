FROM ubuntu

RUN apt-get update -qq \
	&& apt-get install -qqy \
	curl jq git \
	--no-install-recommends

VOLUME /data/10second.build/checkout/
WORKDIR /data/10second.build/checkout/

COPY run /opt/10second.build/github-release/
RUN chmod u+x /opt/10second.build/github-release/run

ENTRYPOINT ["/opt/10second.build/github-release/run"]
