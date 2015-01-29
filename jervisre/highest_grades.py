#Given a CSV file in which each line has the form LastName,FirstName,Assignment,NumericGrade 
#find the the five highest grades on homework 2.

import csv
source = open( "myfile.csv", "r" )
rdr= csv.reader( source )
grades = []
#extract all the grades
for row in rdr:
	if row[2] == 2
    grades.append(row[3])

#search for five highest grades? (not that great)
for _ in range(5):
	for agrade in grades:
	if grade = max(grades)
		print grade
		grade = 0  
