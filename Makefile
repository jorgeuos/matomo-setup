.DEFAULT: install
.PHONY: install clone

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

cmd-exists-%:
	@hash $(*) > /dev/null 2>&1 || \
		(echo "ERROR: '$(*)' must be installed and available on your PATH."; exit 1)

everything: install all-plugins

install: cmd-exists-git
	./scripts/get-matomo.sh

db-create:
	./scripts/create-db.sh

clone:
	./scripts/clone.sh

premium:
	./scripts/premium-plugins.sh

custom:
	./scripts/custom-plugins.sh

contrib:
	./scripts/contrib-plugins.sh

all-plugins:
	make premium
	make contrib
	make custom

activate:
	./scripts/activate-plugins.sh

activate-contrib:
	./scripts/activate-contrib.sh

activate-premium:
	./scripts/activate-premium.sh

activate-custom:
	./scripts/activate-custom.sh

copy-conf:
	./scripts/copy-conf.sh

get-maxmind:
	./scripts/get-maxminddb.sh

fix-permissions:
	./scripts/fix-permissions.sh
