FROM appium/appium

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    build-essential \
    git \
    cmake \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g opencv4nodejs --unsafe-perm=true --allow-root