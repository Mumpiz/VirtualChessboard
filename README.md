# VirtualChessboard


	---   VirtualChessBoard v1.0   ---


Was ist VirtualChessBoard?

	VirtualChessBoard ist ein Programm, welches ein reales Schachbrett simuliert.
	Es können Figuren platziert und entfernt werden, wie beim realen Äquivalent.


Wozu dient VirtualChessBoard?

	Mit VirtualChessBoard können zB. Schachpartien nachgespielt,
	Schachstellungen und Eröffnungen erprobt oder ausgetüftelt werden.

	Man kann zu zweit an einem PC Schach spielen,
	aber auch Fernschachpartien sind möglich.
	Dazu speichert Spieler 1 einfach sein Spiel und sendet diesen Speicherstand
	an Spieler 2 per E-Mail oder Skype oder dem Messenger seiner Wahl.

Features:
	- Drehe das Schachbrett
	- Züge werden farblich hervorgehoben
	- großzügige Undofunktion
	- einfache und unkomplizierte Bedienung



Hilfe/FAQs:

	F: Wohin speichert VirtualChessBoard die gespeicherten Spiele?
	A: VirtualChessBoard speichert die Spiele in den selbigen Ordner
	   wo sich ebenfalls alle anderen Dateien befinden. Der Dateiname
	   lautet "chess.vcb"

	F: VirtualChessBoard lädt immer nur mein zuletzt gespeichertes Spiel.
	A: VirtualChessBoard überspeichert automatisch das letzte Spiel und
	   überschreibt die Datei "chess.vcb"

	F: Wie kann ich mehrere Spiele speichern?
	A: Speichere dein gewünschtes Spiel und benenne die Datei "chess.vcb" um.

	F: Wie kann ich verschiedene Spiele wieder laden?
	A: Benenne die Datei wieder um in "chess.vcb"

	F: Wie kann ich eine Fernschachpartie mit einem Freund Spielen?
	A: Dazu startet Spieler Weiß einfach VirtualChessBoard und macht seinen
	   ersten Zug. Danach klickt er auf das Speichernsymbol (Diskette) und
	   schickt die Datei "chess.vcb" an Spieler Schwarz.
	   Dieser kopiert diese Datei in seinen eigenen VirtualChessBoard-Ordner
	   (kopieren und erstetzen seiner alten "chess.vcb"-Datei) und startet danach
	   VirtualChessBoard.
	   Dort klickt Spieler Schwarz dann auf das Spielladen-Symbol 
	   (kleiner Ordner mit Pfeil) um diese Partie zu laden.
	   Spieler Schwarz tätigt nun seinen Zug und speichert das Spiel ebenfalls wieder ab.
	   So geht es nun immer weiter... er schickt die Datei "chess.vcb" wieder zurück
	   an Spieler Weiß, welcher wiederum diese Datei in seinen VirtualChessBoard-Ordner
	   kopiert und das Spiel lädt und seinen Zug tätigt usw. usf. .

	F: Wie kann ich rochieren?
	A: Setze den Turm und den König einzeln (wie auf dem realen Schachbrett)

	F: Wie kann "en passant" geschlagen werden?
	A: Ziehe mit dem schlagenden Bauern "en passant" und
	   lösche den Bauern welcher "en passant" geschlagen wurde.
	   Ziehe dazu den geschlagenen Bauern per Drag&Drop auf das Mülleimer-Symbol
	   auf der rechten Seite.

	F: Wie kann ein Bauer umgewandelt werden, wenn er die letzte Reihe auf der
	   gegenüberliegenden Seite erreicht hat?
	A: Ziehe dazu diesen Bauern per Drag&Drop auf das Mülleimer-Symbol
	   auf der rechten Seite um ihn zu löschen, danach platziere eine
	   Königin(oder eine Figur nach Wahl) auf das Feld wo der Bauer zuvor stand.
	   Dazu einfach das zB. Königin-hinzufügen-Symbol auf der rechten Seite
	   anklicken, und diese per Drag&Drop auf das Feld
	   wo der Bauer zuvor stand platzieren.





Was ist VirtualChessBoard NICHT
	
	Ein Spielen gegen den Computer ist nicht möglich.
	VirtualChessBoard ist KEINE Schachengine.
	Daher wird weder auf legalität oder Quallität der Züge überprüft,
	noch werden "beste Züge" vorgeschlagen oder dergleichen.
	Auch werden das Rochieren und "en passant"-schlagen nicht erkannt 
	noch Bauernumwandlung automatisch erledigt.

	VirtualChessBoard ist, wie der Name schon sagt, ein virtuelles Schachbrett.
	Und wie beim realen Vorbild, sind die Spieler selbst für alles verantwortlich.






Figuren- und Schachbrettlayout ändern (Fortgeschritten)

	Es ist möglich eigene Layouts für VirtualChessBoard zu entwerfen und
	einzufügen.
	Dazu müssen einfach nur die Originalgrafiken die sich im Ordner befinden
	mit den eigenen ersetzt werden.
	- Es ist sehr zu empfehlen sich vorher von den Originalgrafiken Sicherheitskopien
	  zu machen! -
	
	Was unbedingt beachtet werden muss:
		1. Die Namen der Grafikdateien müssen identisch sein
		2. Die Maße der Grafikdateien müssen exakt die selben sein
		3. Es müssen alles Png-Dateien sein

		4. Bei der Schachbrettgrafik (board.png) ist darauf zu achten, dass
		   links das dunkle und rechts das helle Feld ist.
		   Ein Feld ist zudem 64 pixel breit sowie hoch.
		   Demnach muss die Grafik die Gesamtmaße von genau 128x64 pixel haben.
		5. Bei der Schachfigurengrafik ist darauf zu achten, dass die
		   Anordnung der Figuren exakt die Selbe ist. (Oben Weiß, unten Schwarz
		   und von links nach rechts: Bauer, Turm, Springer, Läufer,
		   Dame und zuletzt der König)
		   Eine Figur darf maximal 64 pixel breit sowie hoch sein.
		   Demnach muss die Grafik die Gesamtmaße von 284x128 pixel haben.


	Sollte VirtualChessBoard nach änderungen nicht mehr starten,
	wurde etwas übersehen oder falsch gemacht.
	Überprüfe am Besten nocheinmal alle Namen und Maße der Dateien.
	Sollte der Fehler nicht zu finden sein, sollten zu Testzwecken
	die Originalgrafiken wieder zurück in den Ordner kopiert werden um sicherzustellen,
	dass der Fehler an den eigenen Grafiken liegt.
	Auch ist es ratsam um Fehler zu vermeiden, nur immer eine Grafik nach der anderen
	zu ändern, und nach jeder Änderung VirtualChessBoard zu starten um festzustellen
	ob alles geklappt hat. So ist das Auffinden von eventuellen Fehlern um einiges leichter.



Buttonlayouts ändern (Fortgeschritten)
	
	Sowie es möglich ist das Figuren- und Schachbrettlayout zu ändern,
	so kann auch das Layout der Buttons geändert werden.
	Dies funktioniert genauso.
	Es ist wieder auf die selben Dinge zu achten wie beim
	Figuren- und Schachbrettlayout.

	- Identische Namen
	- Identische Maße
	  usw.

	Auch hier ist es wieder sehr zu empfehlen sich vorher von Diesen Sicherheitskopien
	zu machen!

	Sollte VirtualChessBoard nach änderungen nicht mehr starten,
	wurde etwas übersehen oder falsch gemacht.
	Überprüfe am Besten nocheinmal alle Namen und Maße der Dateien.
	Sollte der Fehler nicht zu finden sein, sollten zu Testzwecken
	die Originalgrafiken wieder zurück in den Ordner kopiert werden um sicherzustellen,
	dass der Fehler an den eigenen Grafiken liegt.
	Auch ist es ratsam um Fehler zu vermeiden, immer nur eine Grafik nach der anderen
	zu ändern, und nach jeder Änderung VirtualChessBoard zu starten um festzustellen
	ob alles geklappt hat. So ist das Auffinden von eventuellen Fehlern um einiges leichter.




