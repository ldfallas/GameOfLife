game of life rules
getNextGenerationFor: row column: column
	"Verifies the Game Of Life rules"
      |topLeft top topRight left right bottomLeft bottomRight bottom neighbors|

      topLeft :=  self getCellValue: (row - 1) column: (column - 1).
      top := self getCellValue: (row - 1) column: column.
      left := self getCellValue: row column: (column - 1).
      right := self getCellValue: row column: (column + 1).
      topRight := self getCellValue: (row - 1) column: (column + 1).
      bottomRight := self getCellValue: (row + 1) column: (column + 1).
      bottom := self getCellValue: (row + 1) column: column.
      bottomLeft := self getCellValue: (row + 1) column: (column - 1).
   
      neighbors := topLeft + top + left + right + topRight + bottomRight + bottom  + bottomLeft.

      ^ ((content at: row at: column) = 1) 
             ifTrue: [ (neighbors < 2 | (neighbors > 3)) ifTrue: [ 0 ] ifFalse: [ 1 ]  ] 
             ifFalse: [ (neighbors = 3) ifTrue: [ 1 ] ifFalse: [ 0 ] ].
