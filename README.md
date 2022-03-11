# wes-testing
This repo houses testing workflows for the Dockstore CLI's WES integration and example workflows that can be run against various WES servers.

To keep test maintenance concise, try to use verbose naming and avoid small changes included in separate tags/branches. For example, if you want to create a multi-descriptor workflow with input parameters, creating an entirely new workflow under `./workflows/wdl/` named `multiDescriptorWithInput` is preferred, as compared to modifying the existing `singleDescriptorWithInput` on a separate branch.

### Toil Workflows

- `./workflows/wdl/w1` contains a basic single-descriptor workflow that takes a single input json with a String parameter
- `./workflows/wdl/w2` contains a basic multi-descriptor workflow that takes no input parameters
- `./workflows/wdl/w3` contains a basic single-descriptor workflow that takes no input parameters
- `./workflows/wdl/w4` contains a basic single-descriptor workflow that takes an input json which points to an input file
- `./workflows/wdl/w5` contains a basic single-descriptor workflow that takes an input json which points to multiple input files in different directories

### AGC Workflows
- `./agc-examples/hello-world` contains a basic single-descriptor workflow with no inputs
- `./agc-examples/hello-world-inputs` contains a basic single-descriptor workflow with a String input
- `./agc-examples/fastq` contains a complex single-descriptor workflow with an S3 bucket input
