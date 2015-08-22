game of life rules
getCellValue: row column: column
	"Gets the value of the specified cell"
      ^ ((row < 1) | (row > rows) | (column > columns) | (column < 1))
            ifTrue: [ 0 ]
            ifFalse: [ content at: row at: column ] .
