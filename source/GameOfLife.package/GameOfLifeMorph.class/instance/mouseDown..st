event handling
mouseDown: anEvent
	      |cellRow cellColumn|  
	 
	      cellRow :=  (((anEvent cursorPoint y) - (bounds top))/ self height ) asFloat * rows.
	      cellRow := cellRow truncated.
	      cellColumn :=(  ((anEvent cursorPoint x) - (bounds left))/ self width) asFloat * columns.
	      cellColumn := cellColumn rounded.
	      content at: (cellRow + 1) at: (cellColumn + 1) put: 1.

	      self changed.