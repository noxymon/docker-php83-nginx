BUILD_ARGS := $(BUILD_ARGS)
VERSION := $(or $(VERSION),$(VERSION),1.0.0)
BASE_VERSION := $(or $(BASE_VERSION),$(BASE_VERSION),1.0.0)

build:
	docker buildx build --push --platform linux/amd64,linux/arm64 $(BUILD_ARGS) --build-arg VERSION=$(BASE_VERSION) --build-arg RELEASE=$(BASE_RELEASE) -t noxymon/php-nginx:83 .