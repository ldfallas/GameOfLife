drawing
drawOn: canvas
	"Draws the game of life widget with the current state"

	| cellWidth cellHeight rectangle  cellColor cellValue|
	
	cellWidth :=   (self width) / columns.
	cellHeight :=   (self height) / rows.
      1 to: rows do: [ :row |
	       1 to: columns do: [ :column |
		      cellValue := (content at: row at: column).
		      cellColor := cellValue = 1 ifTrue: [ Color black ] ifFalse: [ Color white  ].
                  rectangle := Rectangle left: (self bounds left) + ((column - 1)*cellWidth) 
                                                      right: (self bounds left) + ((column - 1)*cellWidth) + cellWidth
                                                      top: (self bounds top) + ((row - 1)*cellHeight )
                                                      bottom: (self bounds top) + ((row - 1)*cellHeight ) + cellHeight.
         
		      cellValue = 1 ifTrue: [canvas fillRectangle:  rectangle color:  cellColor]
		                           ifFalse: [canvas frameAndFillRectangle: rectangle 
			                                              fillColor:  (Color white) 
			                                              borderWidth: 1 
			                                              borderColor: (Color black)].
             ]
       ].
  	^self.