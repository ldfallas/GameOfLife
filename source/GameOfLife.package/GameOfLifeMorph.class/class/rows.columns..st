as yet unclassified
rows: rowCount columns: columnCount
	"Creates a new instance of the widget"

	| newInstance  |
	newInstance := GameOfLifeMorph new.
	newInstance rows: rowCount
                          columns: columnCount.	                   
	^newInstance.