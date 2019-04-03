-----------------------------------------------------------------------------------------
--
-- command line Lua
--
-- show how to use an if statement
--  and random numbers
-- 
-----------------------------------------------------------------------------------------
--backround
display.setDefault( "background", 125/255, 0/255, 200/255 )



--calculate button
local calculateButton = display.newImageRect( "./assets/calculate.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = 240
calculateButton.id = " calculateButton "

local calculator = display.newImageRect( "./assets/calculator.png", 180, 180 )
calculator.x = display.contentCenterX
calculator.y = 70
calculator.id = " calculator "
 
local myGuessTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 160, 300, 60 )
myGuessTextfield.id = " myGuessTextField"

local screenText = display.newText( "Pick a interger: ", 160, 320, native.systemFont, 40 )
screenText:setFillColor( 255/255, 29/255, 96/255 )

local endText = display.newText( " ", 160, 450, native.systemFont, 25 )
endText:setFillColor( 255/255, 29/255, 96/255 )


local function calculateButtontouch ( event)

	local myGuess = tonumber( myGuessTextfield.text )

	if myGuess < (0) then
		print("Negative")
		screenText.text = "Negative Integer"
	elseif myGuess == (0) then
		print("Neutral")

		screenText.text = " Neutral or 0 "
	else
		print("Positive")

		screenText.text = "Positive Interger"
	end

end		

calculateButton :addEventListener( "touch", calculateButtontouch )