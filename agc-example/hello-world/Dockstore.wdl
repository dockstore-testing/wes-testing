version 1.0
workflow w {
    call hello {}
}
task hello {
    command { echo "Hello from AGC" }
    runtime {
        docker: "ubuntu:latest"
    }
    output { String out = read_string( stdout() ) }
}
