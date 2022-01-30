lint:
	docker compose run --rm hadolint hadolint Dockerfile

build:
	docker compose build

test:
	docker compose run --rm ansible sh -c 'goss -g ./tests/goss.yml validate'

test-jnit:
	docker compose run --rm ansible sh -c 'goss -g ./tests/goss.yml validate -f junit >./goss-validate.xml'
