
.PHONY: a b c d
all: a b c d

a:
	docker build a/ -f a/Dockerfile -t ghcr.io/owenbrooks/challenges-a
b:
	docker build b/ -f b/Dockerfile -t ghcr.io/owenbrooks/challenges-b
c:
	docker build c/ -f c/Dockerfile -t ghcr.io/owenbrooks/challenges-c
d:
	docker build c/ -f d/Dockerfile -t ghcr.io/owenbrooks/challenges-d

run-a:
	docker run -it ghcr.io/owenbrooks/challenges-a
run-b:
	docker run -it ghcr.io/owenbrooks/challenges-b
run-c:
	docker run -it ghcr.io/owenbrooks/challenges-c
run-d:
	docker run -it ghcr.io/owenbrooks/challenges-d