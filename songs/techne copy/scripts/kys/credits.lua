function onCreate()

    makeLuaSprite('window', 'bgs/newCred/credWindow', 1400, 25);
	setLuaSpriteScrollFactor('window', 1, 1);
	setObjectOrder('window', 1000)
	scaleObject('window', 1, 1)
	setObjectCamera('window', 'other');

	setProperty('window.antialiasing', false)

	addLuaSprite('window', true)

	makeLuaSprite('cursor', 'bgs/newCred/credmouse', -50, -50);
	setLuaSpriteScrollFactor('cursor', 1, 1);
	setObjectOrder('cursor', 1001)
	scaleObject('cursor', 1, 1)
	setObjectCamera('cursor', 'other');
	setProperty('cursor.flipX', true)

	setProperty('cursor.antialiasing', false)

	addLuaSprite('cursor', true)

end

function onSongStart()

	doTweenX('cumCreds', 'window', 925, 1, 'quadOut')

end

function onBeatHit()

	if curBeat == 6 then
		
		doTweenX('cumCursorX', 'cursor', 1090, 0.75, 'quadOut')
		doTweenY('cumCursorY', 'cursor', 625, 0.75, 'quadOut')

	end

	if curBeat == 10 then
		
		doTweenX('cursorBigX', 'cursor.scale', 1, 0.25, 'quadOut')
		doTweenY('cursorBigY', 'cursor.scale', 1, 0.25, 'quadOut')
		doTweenX('cumCredsByeX', 'window.scale', 0.95, 0.25, 'quadOut')
		doTweenY('cumCredsByeY', 'window.scale', 0.95, 0.25, 'quadOut')
		doTweenAlpha('byeCredyweddy', 'window', 0, 0.25, 'quadOut')
		scaleObject('cursor', 0.9, 0.9)

	end

	if curBeat == 12 then
		
		doTweenY('byeCurse', 'cursor', 800, 0.5, 'quadIn')
		removeLuaSprite('window', false)

	end

	if curBeat == 14 then
		
		removeLuaSprite('cursor', false)

	end

end