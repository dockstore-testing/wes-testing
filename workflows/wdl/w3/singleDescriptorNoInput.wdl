version 1.0

workflow w {
    call hello {}
}

task hello {
    command { echo "Hello from somewhere" }
    runtime {
        docker: "ubuntu:latest"
    }
    output { String out = read_string( stdout() ) }
}
