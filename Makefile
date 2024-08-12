setup-venv:
	python3 -m venv .venv
	bash setup_venv.sh
	exit
enter-venv:
	bash enter_venv.sh
setup-python:
	mkdir -p gen/python
	protoc --python_out=gen/python crs.proto
	cp gen/python/crs_pb2.py src/root_store_gen
	exit
build-packed-data:
	mkdir -p out/PKIMetadata
	