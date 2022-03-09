version 1.0

workflow test {
  call hello
}

task hello {
  input {
    String name
  }
  command {
    echo 'hello ${name}!' > output_file.txt
  }
  runtime {
      docker: "ubuntu:latest"
  }
  output { File totalReadsFile  = "output_file.txt" }
}
