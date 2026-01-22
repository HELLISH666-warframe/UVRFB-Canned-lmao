function onCreate() 

    makeLuaSprite('credits', 'bgs/credbar/credbar', -210, -1000);
	setObjectCamera('credits', 'other');
	setLuaSpriteScrollFactor('credits', 1, 1);
	setObjectOrder('credits', 599)
	scaleObject('credits', 3.25, 3.25)
    setProperty('credits.antialiasing', false)

    makeLuaSprite('credits2', 'bgs/credbar/credits', 800, 850);
	setObjectCamera('credits2', 'other');
	setLuaSpriteScrollFactor('credits2', 1, 1);
	setObjectOrder('credits2', 600)
	scaleObject('credits2', 2, 2)
    setProperty('credits2.antialiasing', false)

	makeLuaText('musician', 'Musician', 300, 100)
	setObjectCamera('musician', 'other')
	setTextSize('musician', 25)
    setProperty('musician.y', -350)

    makeLuaText('musician2', 'The Funny', 300, 100)
	setObjectCamera('musician2', 'other')
	setTextSize('musician2', 25)
    setProperty('musician2.y', -350)
    setProperty('musician2.angle', -20)

    makeLuaSprite('musicianicon', 'bgs/credbar/cartman', 100, 100)
	setObjectCamera('musicianicon', 'other')
    scaleObject('musicianicon', 0.15, 0.15)
    setProperty('musicianicon.y', -350)
    setProperty('musicianicon.angle', -20)

    makeLuaText('artist', 'Artist', 1100, 100)
	setObjectCamera('artist', 'other')
	setTextSize('artist', 25)
    setProperty('artist.y', -500)

    makeLuaText('artist2', 'ShaeRon', 1100, 100)
	setObjectCamera('artist2', 'other')
	setTextSize('artist2', 25)
    setProperty('artist2.y', -500)
    setProperty('artist2.angle', -20)

    makeLuaSprite('artisticon', 'bgs/credbar/shae', 485, 100)
	setObjectCamera('artisticon', 'other')
    scaleObject('artisticon', 0.5, 0.5)
    setProperty('artisticon.y', -500)
    setProperty('artisticon.angle', -20)

    makeLuaText('coder', 'Coder', 1900, 100)
	setObjectCamera('coder', 'other')
	setTextSize('coder', 25)
    setProperty('coder.y', -650)

    makeLuaText('coder2', 'Alyx', 1900, 100)
	setObjectCamera('coder2', 'other')
	setTextSize('coder2', 25)
    setProperty('coder2.y', -650)
    setProperty('coder2.angle', -20)
    setProperty('coder2.antialiasing', false)

    makeLuaSprite('codericon', 'bgs/credbar/alyx', 910, 100)
	setObjectCamera('codericon', 'other')
    scaleObject('codericon', 1, 1)
    setProperty('codericon.y', -650)
    setProperty('codericon.angle', -20)
    setProperty('codericon.antialiasing', false)

    addLuaSprite('credits', true)
	addLuaText('musician', true)
    addLuaText('musician2', true)
    addLuaSprite('musicianicon', true)
    addLuaText('artist', true)
    addLuaText('artist2', true)
    addLuaSprite('artisticon', true)
    addLuaText('coder', true)
    addLuaText('coder2', true)
    addLuaSprite('codericon', true)
    addLuaSprite('credits2', true)
end

function onSongStart()
    doTweenY('upiesmain', 'credits', -50, 1.5, 'bounceOut')
    doTweenY('upiesmain2', 'credits2', 450, 1, 'cubeOut')
    doTweenY('upies', 'musician', 450, 1.5, 'bounceOut')
    doTweenY('upies2', 'artist', 300, 1.5, 'bounceOut')
    doTweenY('upies3', 'coder', 150, 1.5, 'bounceOut')
    doTweenAngle('upiesharhar', 'credits2', 20, 1, 'cubeOut')
    doTweenAngle('upies4', 'musician', -20, 1.5, 'bounceOut')
    doTweenAngle('upies5', 'artist', -20, 1.5, 'bounceOut')
    doTweenAngle('upies6', 'coder', -20, 1.5, 'bounceOut')
end

function onBeatHit()

    if curBeat == 16 then
        doTweenY('upiesmainboi', 'credits', -100, 0.5, 'cubeOut')
        doTweenY('upiesmainboi2', 'credits2', 400, 0.5, 'cubeOut')
        doTweenAngle('upiesharhardododo', 'credits2', 40, 0.5, 'cubeOut')
        doTweenY('upiesboi', 'musician', 400, 0.5, 'cubeOut')
        doTweenY('upiesboi2', 'artist', 250, 0.5, 'cubeOut')
        doTweenY('upiesboi3', 'coder', 100, 0.5, 'cubeOut')
    end

    if curBeat <= 32 then

        if curBeat %2 == 0 then
            
            doTweenAngle('iconBackAngle', 'musicianicon', -20, 0.75, 'cubeOut')
            setProperty('codericon.angle', -40)
            setProperty('musicianicon.angle', 160)

        end

        if curBeat %2 == 1 then
            
            setProperty('codericon.angle', 0)

        end

        doTweenX('credBack', 'credits2.scale', 2, 0.5, 'cubeOut')
        doTweenY('credBack2', 'credits2.scale', 2, 0.5, 'cubeOut')
        doTweenZoom('camBack', 'camOther', 1, 0.5, 'cubeOut')
        setProperty('camOther.zoom', 1.025)
        doTweenX('iconBack', 'musicianicon.scale', 0.15, 0.5, 'cubeOut')
        doTweenY('iconBack2', 'musicianicon.scale', 0.15, 0.5, 'cubeOut')
        doTweenX('iconBack3', 'artisticon.scale', 0.5, 0.5, 'cubeOut')
        doTweenY('iconBack4', 'artisticon.scale', 0.5, 0.5, 'cubeOut')
        doTweenX('iconBack5', 'codericon.scale', 1, 0.5, 'cubeOut')
        doTweenY('iconBack6', 'codericon.scale', 1, 0.5, 'cubeOut')
        doTweenAngle('iconBackAngle2', 'codericon', -20, 0.5, 'cubeOut')
        setProperty('credits2.scale.x', 2.1)
        setProperty('credits2.scale.y', 2.1)
        setProperty('musicianicon.scale.x', 0.175)
        setProperty('musicianicon.scale.y', 0.175)
        setProperty('artisticon.scale.x', 0.55)
        setProperty('artisticon.scale.y', 0.55)
        setProperty('codericon.scale.x', 1.1)
        setProperty('codericon.scale.y', 1.1)
    end

end

function onTweenCompleted(tag)

    if tag == 'upiesboi' then
        doTweenY('upiesmainboi', 'credits', 1100, 1, 'cubeIn')
        doTweenY('upiesmainboi2', 'credits2', 850, 1, 'cubeIn')
        doTweenAngle('upiesharhardo', 'credits2', -20, 1, 'cubeIn')
        doTweenY('upiesboi', 'musician', 1600, 1, 'cubeIn')
        doTweenY('upiesboi2', 'artist', 1450, 1, 'cubeIn')
        doTweenY('upiesboi3', 'coder', 1300, 1, 'cubeIn')
    end

end

function onUpdate()

    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    if curBeat <= 32 then
        setProperty('musician2.x', getProperty('musician.x') + 10)
        setProperty('musician2.y', getProperty('musician.y') + 35)
        setProperty('artist2.x', getProperty('artist.x') + 10)
        setProperty('artist2.y', getProperty('artist.y') + 35)
        setProperty('coder2.x', getProperty('coder.x') + 10)
        setProperty('coder2.y', getProperty('coder.y') + 35)
        setProperty('musicianicon.y', getProperty('musician2.y') - 15)
        setProperty('artisticon.y', getProperty('artist2.y') + 5)
        setProperty('codericon.y', getProperty('coder2.y') - 35)
        setProperty('artisticon.angle',-20 - -20 * math.cos((currentBeat2*100)*math.pi) )
    end

end