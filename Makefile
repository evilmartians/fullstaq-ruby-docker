.PHONY: bump guard-%

bump: guard-VERSION
	$(eval escaped_minor := $(shell echo ${VERSION} | sed -n 's/\([0-9]\+\.[0-9]\+\).*/\1/p' | sed -e 's/[]\/$*.^[]/\\&/g'))
	sed -i "s/${escaped_minor}\.[0-9]\+/${VERSION}/g" README.md .github/workflows/build-push.yml

guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Environment variable $* not set"; \
		exit 1; \
	fi
