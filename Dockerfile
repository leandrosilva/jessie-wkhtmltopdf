FROM debian:jessie as base
RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN apt-get install -y ca-certificates wget
RUN apt-get install -y fontconfig libfreetype6 libjpeg62-turbo libpng12-0 libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base

FROM base AS install
RUN wget -nv https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.jessie_amd64.deb
RUN dpkg -i wkhtmltox_0.12.5-1.jessie_amd64.deb
RUN apt-get purge -y --auto-remove wget xz-utils \
	&& rm -rf /var/lib/apt/lists/*
