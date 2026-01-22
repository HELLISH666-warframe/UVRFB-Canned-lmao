function onCreatePost()

    setProperty('camHUD.alpha', 0)
    setProperty('camHUD.zoom', 5)

end

function onUpdate()

    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    if boi then
        noteTweenX('defaultPlayerStrumX0r', 0, 120 + (math.sin(currentBeat/3+0.1) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX1r', 1, 230 + (math.sin(currentBeat/3+0.2) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX2r', 2, 340 + (math.sin(currentBeat/3+0.3) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX3r', 3, 450 + (math.sin(currentBeat/3+0.4) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX0rr', 4, 720 + (math.sin(currentBeat/3+0.1) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX1rr', 5, 830 + (math.sin(currentBeat/3+0.2) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX2rr', 6, 940 + (math.sin(currentBeat/3+0.3) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX3rr', 7, 1050 + (math.sin(currentBeat/3+0.4) * -50), 0.001)
        if downscroll == false then
            noteTweenY('defaultPlayerStrumY0', 0, 100 + (math.cos(currentBeat/4+1) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY1', 1, 100 + (math.cos(currentBeat/4+2) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY2', 2, 100 + (math.cos(currentBeat/4+3) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY3', 3, 100 + (math.cos(currentBeat/4+4)  * -50), 0.001)
            noteTweenY('defaultPlayerStrumY4', 4, 100 + (math.cos(currentBeat/4+5) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY5', 5, 100 + (math.cos(currentBeat/4+6) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY6', 6, 100 + (math.cos(currentBeat/4+7) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY7', 7, 100 + (math.cos(currentBeat/4+8)  * -50), 0.001)
        end
        if downscroll == true then
            noteTweenY('defaultPlayerStrumY0', 0, 500 + (math.cos(currentBeat/4+1) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY1', 1, 500 + (math.cos(currentBeat/4+2) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY2', 2, 500 + (math.cos(currentBeat/4+3) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY3', 3, 500 + (math.cos(currentBeat/4+4)  * -50), 0.001)
            noteTweenY('defaultPlayerStrumY4', 4, 500 + (math.cos(currentBeat/4+5) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY5', 5, 500 + (math.cos(currentBeat/4+6) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY6', 6, 500 + (math.cos(currentBeat/4+7) * -50), 0.001)
            noteTweenY('defaultPlayerStrumY7', 7, 500 + (math.cos(currentBeat/4+8)  * -50), 0.001)
        end
    end

    if hud then
        setProperty('camGame.angle',0 - 10 * math.cos((currentBeat2/8)*math.pi) )
    end

    if hudbutnot then
        setProperty('camHUD.angle',0 - 5 * math.cos((currentBeat2/8)*math.pi) )
        setProperty('camHUD.x',0 - 25 * math.cos((currentBeat2/14+0.5)*math.pi) )
        setProperty('camHUD.y',0 - 25 * math.cos((currentBeat2/18+0.25)*math.pi) )
    end

end

function onBeatHit()

    if curBeat == 12 then
        doTweenAlpha('fadeBoi', 'dead', 0.9, 1, 'linear')
    end

    if curBeat == 16 then
        doTweenAlpha('fadeIn', 'dead', 0, 2, 'linear')
        doTweenZoom('zoomOut', 'camGame', 0.9, 4, 'cubeInOut')
        setProperty("defaultCamZoom", 0.9)
    end

    if curBeat == 27 then
        doTweenZoom('zoomIn', 'camGame', 1.1, 1.6, 'cubeInOut')
        setProperty("defaultCamZoom", 1.1)
    end

    if curBeat == 28 then
        doTweenAlpha('fadeInHUD', 'camHUD', 1, 1.3, 'cubeOut')
        doTweenZoom('zoomInHUD', 'camHUD', 1, 1.3, 'cubeOut')
    end

    if curBeat == 64 then
        doTweenZoom('zoomOut', 'camGame', 0.9, 1, 'cubeInOut')
        setProperty("defaultCamZoom", 0.9)
    end

    if curBeat == 102 then
        doTweenZoom('zoomOut', 'camGame', 1.1, 0.5, 'cubeInOut')
        setProperty("defaultCamZoom", 1.1)
    end

    if curBeat == 104 then
        doTweenZoom('zoomOut', 'camGame', 0.9, 1, 'cubeInOut')
        setProperty("defaultCamZoom", 0.9)
    end

    if curBeat == 128 then
        hudbutnot = true
        doTweenAlpha('fadeInGrade', 'grade', 0.5, 1, 'cubeOut')
        doTweenZoom('zoomOut', 'camGame', 1.1, 1, 'cubeInOut')
        setProperty("defaultCamZoom", 1.1)
    end

    if curBeat == 192 then
        doTweenAngle('nene', 'camGame', 10, 2, 'cubeInOut')
        doTweenAlpha('fadeInGrade', 'grade', 1, 1, 'cubeOut')
        doTweenZoom('zoomOut', 'camGame', 1.2, 1, 'cubeInOut')
        setProperty("defaultCamZoom", 1.2)
        runTimer('bug', 0.5)
    end

    if curBeat == 208 then
        doTweenAngle('nene', 'camGame', -10, 2, 'cubeInOut')
    end

    if curBeat == 224 then
        doTweenAngle('nene', 'camGame', 10, 2, 'cubeInOut')
    end

    if curBeat == 240 then
        doTweenAngle('nene', 'camGame', -10, 2, 'cubeInOut')
    end

    if curBeat == 254 then
        doTweenAngle('nene', 'camGame', 0, 0.33, 'cubeInOut')
        doTweenZoom('zoomOut', 'camGame', 0.7, 0.33, 'cubeOut')
        setProperty("defaultCamZoom", 0.7)
    end

    if curBeat == 256 then
        hudbutnot = false
        doTweenAngle('nenenot', 'camHUD', 0, 2, 'cubeInOut')
        doTweenX('nenenot2', 'camHUD', 0, 2, 'cubeInOut')
        doTweenY('nenenot3', 'camHUD', 0, 2, 'cubeInOut')
        doTweenZoom('zoomOut', 'camGame', 0.9, 0.6, 'cubeOut')
        setProperty("defaultCamZoom", 0.9)
        doTweenAlpha('fadeOutGrade', 'grade', 0, 1, 'cubeOut')
    end

    if curBeat == 312 then
        doTweenZoom('zoomOut', 'camGame', 0.7, 0.5, 'cubeOut')
        setProperty("defaultCamZoom", 0.7)
    end

    if curBeat == 316 then
        doTweenZoom('zoomOut', 'camGame', 1.3, 1.32, 'cubeIn')
        setProperty("defaultCamZoom", 1.3)
    end

    if curBeat == 320 then
        hud = true
        boi = true
        runTimer('glitch', 0.1)
        doTweenZoom('zoomOut', 'camGame', 0.9, 0.5, 'cubeOut')
        setProperty("defaultCamZoom", 0.9)
        setProperty('code.alpha', 1)
        setProperty('window.alpha', 1)
        setProperty('window2.alpha', 1)
        setProperty('window3.alpha', 1)
        setProperty('windowhud.alpha', 1)
        setProperty('windowhud2.alpha', 1)
        setProperty('windowhud3.alpha', 1)
        setProperty('foreskin2.alpha', 1)
        setProperty('behind.alpha', 0)
        setProperty('behind2.alpha', 0)
        setProperty('behind3.alpha', 0)
        setProperty('foreskin.alpha', 0)
        setProperty('bucket.alpha', 0)
    end

    if curBeat == 384 then
        boi = false
        if downscroll == false then
            noteTweenY('defaultPlayerStrumY0', 0, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY1', 1, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY2', 2, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY3', 3, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY4', 4, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY5', 5, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY6', 6, 50, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY7', 7, 50, 0.25, 'bounceOut')
        end
        if downscroll == true then
            noteTweenY('defaultPlayerStrumY0', 0, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY1', 1, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY2', 2, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY3', 3, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY4', 4, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY5', 5, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY6', 6, 550, 0.25, 'bounceOut')
            noteTweenY('defaultPlayerStrumY7', 7, 550, 0.25, 'bounceOut')
        end
        noteTweenX('NoteMove1', 0, 120, 0.75, 'bounceOut')
        noteTweenX('NoteMove2', 1, 230, 0.75, 'bounceOut')
        noteTweenX('NoteMove3', 2, 340, 0.75, 'bounceOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'bounceOut')
        noteTweenX('NoteMove5', 4, 720, 0.75, 'bounceOut')
        noteTweenX('NoteMove6', 5, 830, 0.75, 'bounceOut')
        noteTweenX('NoteMove7', 6, 940, 0.75, 'bounceOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'bounceOut')
    end

    if curBeat == 448 then
        hud = false
        doTweenAlpha('fadeOut', 'dead', 1, 0.5, 'linear')
        setProperty('camHUD.alpha', 0)
    end

end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'glitch' then

        if curBeat >= 320 and curBeat < 448 then
            runTimer('glitch', math.random(0.25, 0.5))
            runTimer('resetglitch', 0.05)
            setProperty('camHUD.angle', math.random(-10, 10))
            setProperty('camHUD.x', math.random(-150, 150))
            setProperty('camHUD.y', math.random(100, 100))
        end

    end

    if tag == 'bug' then

        if curBeat >= 192 and curBeat < 320 then
            runTimer('bug', math.random(0.5, 3))
            runTimer('resetbug', 0.05)
            setProperty('foreskinpix.alpha', 1)
            setProperty('foreskin.alpha', 0)
        end

    end

    if tag == 'resetglitch' then
        
        setProperty('camHUD.angle', 0)
        setProperty('camHUD.x', 0)
        setProperty('camHUD.y', 0)

    end

    if tag == 'resetbug' then

        setProperty('foreskinpix.alpha', 0)
        setProperty('foreskin.alpha', 1)

    end

end