version 1.0

workflow test {
  call hello
}

task hello {
  runtime {
    docker: "ubuntu:latest"
  }
  input {
    File textFile1
    File textFile2
  }
  command {
    bash echo '~{read_string(textFile1)}' >> output_file.txt
    bash echo '~{read_string(textFile2)}' >> output_file.txt
  }
  output { File totalReadsFile  = "output_file.txt" }
}
