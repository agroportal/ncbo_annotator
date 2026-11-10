# Set by ontoportal_testkit from .ruby-version, the single Ruby pin
ARG OPTK_RUBY_VERSION
ARG DISTRO=bookworm
ARG TESTKIT_BASE_IMAGE=agroportal/testkit-base:ruby${OPTK_RUBY_VERSION}-${DISTRO}
FROM ${TESTKIT_BASE_IMAGE}

WORKDIR /app

# Keep the old CI slice size (default 500) so goo's sliced loading stays exercised
ENV GOO_SLICES=100

COPY Gemfile* *.gemspec ./

# Respect the project's Bundler lock when present.
RUN if [ -f Gemfile.lock ]; then \
      BUNDLER_VERSION=$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1 | tr -d ' '); \
      gem install bundler -v "$BUNDLER_VERSION"; \
    fi

RUN bundle install --jobs 4 --retry 3

COPY . ./

CMD ["bundle", "exec", "rake"]
