as yet unclassified
step
	"Verifies the rules of the Game Of Life"
	| tmp |
	
	
	1 to: rows do:  [ :row | 
		1 to: columns do:  [ :column |
			nextGrid at: row at: column put: (self getNextGenerationFor: row column: column).
			 ]
      ].
      tmp := content.
      content := nextGrid.
      nextGrid := tmp.
      self changed.