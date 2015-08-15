as yet unclassified
drawOn: canvas
	"Draws the game of life widget with the current state"

	| cellWidth cellHeight rectangle  cellColor |
	cellWidth := columns / (self width) .
	cellHeight := rows / (self height) .
      1 to: rows do: [ :row |
	       1 to: columns do: [ :column |
		      cellColor := (content at: row at: column) = 1 ifTrue: [ Color red ] ifFalse: [ Color black  ].
                  rectangle := Rectangle left: ((row - 1)*cellWidth) 
                                                      right: ((row - 1)*cellWidth) + cellWidth
                                                      top: ((column - 1)*cellHeight )
                                                      bottom: ((column - 1)*cellHeight ) + cellHeight.

		      canvas fillRectangle:  rectangle color:  cellColor.
             ]
       ].
  	^self.