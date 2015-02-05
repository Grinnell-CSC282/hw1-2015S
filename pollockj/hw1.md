[sed]: http://unixhelp.ed.ac.uk/CGI/man-cgi?sed
[tr]: http://unixhelp.ed.ac.uk/CGI/man-cgi?tr
## Exercises: Some simple tasks
 CSC-282 Homework for January 28th, 2015  
 Wesley Pollock and Vasilisa Bashlovkina

#####1. Given a DOS-formatted text file (lines end with \r\n rather than just
\n), convert it to a standard text file.  

* `dos2unix` works if it is installed.
* `tr -d '\r' < infile > outfile`
* `sed 's/\r//g' infile > outfile`

   Info from:
   The [sed][sed] man page,
   The [tr][tr] man page,
   and this [forum page](http://askubuntu.com/questions/172982/what-is-the-difference-between-redirection-and-pipe) about redirection and pipe.

#####2. Given a standard text file, convert all uppercase letters to lowercase.

* `tr [:upper:] [:lower:] < infile > outfile`     
       
   Info from:
   The [tr][tr] man page.

#####3. Given a standard text file, remove all blank spaces at the end of lines.
* `sed 's/\s+$//g' infile > outfile`

   Info from:
   The [sed][sed] man page, the [tr] man page, and this unix [forum page].(http://www.unix.com/shell-programming-and-scripting/23602-how-remove-plank-spaces-end-lines.html):

#####4. Make a list of all misspelled words in a text file.
* `cat infile | aspell list`

   Info from:
   The [aspell](http://unixhelp.ed.ac.uk/CGI/man-cgi?aspell) man page.

#####5. Given a CSV file in which each line has the form
   LastName,FirstName,Assignment,NumericGrade
   find the the five highest grades on homework 2.
* `gawk -F ',' '{ if ($3 == 2) print $4}' | sort -nr | head -n5`

   Info from:
   The [gawk](http://unixhelp.ed.ac.uk/CGI/man-cgi?gawk),
   [sort](http://unixhelp.ed.ac.uk/CGI/man-cgi?sort),
   and [head](http://unixhelp.ed.ac.uk/CGI/man-cgi?head) man page
