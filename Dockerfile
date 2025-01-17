# Copyright 2019 Vinny Manjaly. All rights reserved. Blue Oak license.
FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install curl git
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN ls -lha /root/.local/bin/deno
ENTRYPOINT ["/root/.local/bin/deno", "--allow-read", "--allow-run", "https://deno.land/x/license_checker@v2.0.0/main.ts"]
