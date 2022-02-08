version 1.0

task hello {
  input {
    String addressee
  }
  runtime {
    docker: "ubuntu:latest"
  }
  command {
    echo "Hello ${addressee}!"
  }
  output {
    String salutation = read_string(stdout())
  }
}

task goodbye {
  input {
    String addressee
  }
  runtime {
    docker: "ubuntu:latest"
  }
  command {
    echo "Goodbye ${addressee}!"
  }
  output {
    String salutation = read_string(stdout())
  }
}

workflow hello_and_goodbye {
  input {
    String hello_and_goodbye_input
  }

  call hello {input: addressee = hello_and_goodbye_input }
  call goodbye {input: addressee = hello_and_goodbye_input }

  output {
    String hello_output = hello.salutation
    String goodbye_output = goodbye.salutation
  }
}

