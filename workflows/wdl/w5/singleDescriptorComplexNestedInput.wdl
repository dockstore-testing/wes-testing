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
    echo "$(cat file1.txt)" >> output_file.txt
    echo "$(cat file1.txt)" >> output_file.txt
  }
  output { File totalReadsFile  = "output_file.txt" }
}
