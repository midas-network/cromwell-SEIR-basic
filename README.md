# cromwell-reproducibility-demo

This project demostrates running the SIERPLUS model using Anaconda/Miniconda, Cromwell, and Docker.

### To run the SEIRPLUS model using only cromwell:
  ./run_crom.sh
  
### To run the SEIRPLUS model using cromwell inside of a docker image:
1. `docker build .`

You will get lots of output, but at the end of the output, you will see the image name:

writing image sha256:88c3c455f7dfa636c9b69c4d4aee8f42adc13ff7362ebf7e8777840ec
  
2. `docker run <the image name>` (do not include sha256 in the image name)

   e.g. docker run 88c3c455f7dfa636c9b69c4d4aee8f42adc13ff7362ebf7e8777840ec

## Output from the cromwell run ONLY:

There is not a lot of ouptut at this stage.  Text output will be displayed to the console, however a PNG file is written to:


   cromwell-executions/myWorkflow/(run number)/call-myTask/execution
   
## Output from the docker run ONLY:

I am still working on supplying output for docker runs.
