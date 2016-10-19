;Enter the path to the .txt file
filePath = C:\Users\cloneruler\Desktop\killcounter\kill_counter.txt
FileReadLine, deathVar, %filePath%, 1

;When you press Mousebutton4 it will increment and update the death counter in the .txt
;You can change 'XButton1' to another key - I have included another .txt file for the buttons list
	XButton1::
		;Creates txt file if it doesn't exist.
		IfNotExist, %filePath%
			FileAppend,0, %filePath%
		;Created a file.
		;Inputs number of deaths in deathVar variable.
		FileReadLine, deathVar, %filePath%, 1
		Var := ++deathVar
		FileDelete, %filePath%
		FileAppend,%deathVar%, %filePath%
	return

;When you press F11 it will set value to zero (reset)
	F11::
		;Creates txt file if it doesn't exist.
		IfNotExist, %filePath%
			FileAppend,0, %filePath%
		;Created a file.
		;Inputs number of deaths in deathVar variable.
		FileReadLine, deathVar, %filePath%, 1
		
		if deathVar = 0
		return
		
		deathVar := 0
		;Var := --deathVar
		FileDelete, %filePath%
		FileAppend,%deathVar%, %filePath%
	return