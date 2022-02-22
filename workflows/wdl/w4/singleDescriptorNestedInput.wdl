
version 1.0

workflow test {
  call hello
}

task hello {
  input {
    File textFile
  }
  command {
    echo "${read_string(textFile)}" > output_file.txt
  }
  output { File totalReadsFile  = "output_file.txt" }
}
