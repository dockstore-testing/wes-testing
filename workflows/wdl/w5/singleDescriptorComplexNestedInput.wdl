version 1.0

workflow test {
  call hello
}

task hello {
  input {
    File textFile1
    File textFile2
  }
  command {
    cat textFile1 >> output_file.txt
    cat textFile2 >> output_file.txt
  }
  output { File totalReadsFile  = "output_file.txt" }
}
