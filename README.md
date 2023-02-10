
## Building

### Build all images:
`make`

### Build a single challenge:
`make b`

## Release 
Automatically publishes the images on Github Container Registry when a new tag is added.

1. `git tag v0.0.2`
2. `git push origin v0.0.2`