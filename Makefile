lint:
	@go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.44.2
	golangci-lint run ./...

vet:
	@go vet

test:
	@go test ./... -v

build:
	@go build .