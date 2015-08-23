event handling
mouseDown: anEvent
	      |cellRow cellColumn valueToSet|  
	 
	      cellRow :=  (((anEvent cursorPoint y) - (bounds top))/ self height ) asFloat * rows.
	      cellRow := cellRow truncated.
	      cellColumn :=(  ((anEvent cursorPoint x) - (bounds left))/ self width) asFloat * columns.
	      cellColumn := cellColumn truncated.
            valueToSet :=  ((content at: (cellRow + 1) at: (cellColumn + 1)) = 0) ifTrue: [ 1 ] ifFalse: [ 0 ].
	      content at: (cellRow + 1) at: (cellColumn + 1) put: valueToSet.

	      self changed.