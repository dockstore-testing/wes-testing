version 1.0
import "secondaryDescriptor.wdl" as sub

workflow main_workflow {

    call sub.hello_and_goodbye { input: hello_and_goodbye_input = "sub world" }

    # call myTask { input: hello_and_goodbye.hello_output }

    output {
        String main_output = hello_and_goodbye.hello_output
    }
}
