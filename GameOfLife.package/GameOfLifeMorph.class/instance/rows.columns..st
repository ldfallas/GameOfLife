intialization
rows: rowCount columns: columnCount
	"Sets the row and column count of the grid"
       rows := rowCount.
       columns := columnCount.
       content := Matrix rows: rows columns: columns.
       content atAllPut: 0.
       ^self.
