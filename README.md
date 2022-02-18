# Be careful when unpublishing any workflow in this repository on any Dockstore page, as it may be used in various integration tests.

# wes-testing
This repo houses testing workflows for the Dockstore CLI's WES integration.

To keep test maintenance concise, try to use verbose naming and avoid small changes included in separate tags/branches. For example, if you want to create a multi-descriptor workflow with input parameters, creating an entirely new workflow under `./workflows/wdl/` named `multiDescriptorWithInput` is preferred, as compared to modifying the existing `singleDescriptorWithInput` on a separate branch.

### Workflows

- `./workflows/wdl/w1` contains a basic single-descriptor workflow that takes a single input json with a String parameter
- `./workflows/wdl/w2` contains a basic multi-descriptor workflow that takes no input parameters
- `./workflows/wdl/w3` contains a basic single-descriptor workflow that takes no input parameters
- `./workflows/wdl/w4` contains a basic single-descriptor workflow that takes an input json which points to an input file
- `./workflows/wdl/w4` contains a basic single-descriptor workflow that takes an input json which points to multiple input files in different directories
