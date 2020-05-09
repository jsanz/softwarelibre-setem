.DEFAULT_GOAL := build

.PHONY: update
update:
	yarn install

.PHONY: build
build:
	yarn build

.PHONY: dev
dev:
	yarn dev

.PHONY: publish
publish: build
	$(if $(MESSAGE),, \
      $(error Undefined MESSAGE (M)))
	git commit -m "$(MESSAGE)"
	git push
