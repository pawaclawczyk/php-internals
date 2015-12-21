FROM php:5

RUN buildDeps=" \
  libxml2-dev \
  " \
  && set -x \
  && apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \
  && cd /usr/src/php \
  && ./buildconf --force \
  && ./configure --enable-phpdbg \
  && make -j"$(nproc)" \
  && make install-phpdbg \
  && { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } \
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
	&& make clean

CMD ["php", "-a"]
