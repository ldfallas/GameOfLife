as yet unclassified
mouseDown: anEvent
      |cellRow cellColumn|  
      Transcript clear.
 
      cellRow :=  (((anEvent cursorPoint y) - (bounds top))/ self height ) asFloat * rows.
      cellRow := cellRow truncated.
      cellColumn :=(  ((anEvent cursorPoint x) - (bounds left))/ self width) asFloat * columns.
      cellColumn := cellColumn truncated.
      content at: cellRow at: cellColumn put: 1.

	self changed.