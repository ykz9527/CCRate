run:
	make run-sql;
	make run-ccrate;

run-sql:
	docker run --name postgres \
        -e POSTGRES_PASSWORD=wellcloud  \
	-p 5432:5432 \
	-v ${PWD}/call.sql:/docker-entrypoint-initdb.d/call.sql \
	-d postgres:9.6

run-ccrate:
	 docker run -d --network host \
        --name ccrate registry:5000/wecloud/ccrate:master-7
