as yet unclassified
drawOn: canvas
	"Draws the game of life widget with the current state"

	| cellWidth cellHeight rectangle  cellColor |
	
	cellWidth :=   (self width) / columns.
	cellHeight :=   (self height) / rows.
      1 to: rows do: [ :row |
	       1 to: columns do: [ :column |
		      cellColor := (content at: row at: column) = 1 ifTrue: [ Color red ] ifFalse: [ Color black  ].
                  rectangle := Rectangle left: (self bounds left) + ((column - 1)*cellWidth) 
                                                      right: (self bounds left) + ((column - 1)*cellWidth) + cellWidth
                                                      top: (self bounds top) + ((row - 1)*cellHeight )
                                                      bottom: (self bounds top) + ((row - 1)*cellHeight ) + cellHeight.
         
		      canvas fillRectangle:  rectangle color:  cellColor.
             ]
       ].
  	^self.