#fastq_phred_convert
## Description
The two little scripts fastq_33_to_64.pl and fastq_64_to_33.pl do
allow the convertion from phred offset 33 to 64 and vice versa.

## Usage
The command have to be called with a single fastq filename as single
parameter. The output will be written to STDOUT.

### Example
./fastq_33_to_64.pl input.fq     # this will convert the input file from
                                 # phred offset 33 to 64

## Author
Frank Förster (frank.foerster@uni-wuerzburg.de)

If you have any comments or request please feel free to use the github
issue system
(https://github.com/greatfireball/fastq_phred_convert/issues) or send
an email to frank.foerster@uni-wuerzburg.de

## Licence
See the file LICENCE for licence information.
