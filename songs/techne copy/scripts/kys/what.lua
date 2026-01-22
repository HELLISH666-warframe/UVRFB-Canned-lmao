local pentyVar = 0
local owo = 0
local owo2 = 0
local uwu = 0.002
local theValue = 5
local daTingX = false
local daTingY = false
local daTingYSmall = false
local hudAngle = false
local yippee = 1

function onCreatePost()

    doTweenColor('yeah', 'pentycanvas', '999999', 0.01, 'linear')
    runTimer('movePaint', 0.06)
    setProperty('bg.alpha', 0)
    setProperty('stone1.alpha', 0)
    setProperty('stone2.alpha', 0)
    setProperty('stone3.alpha', 0)
    setProperty('foreskin.alpha', 0)
    setProperty('canvas.alpha', 0)
    setProperty('foreskinclean.alpha', 1)
    setProperty('canvasclean.alpha', 1)
    setProperty('dead.alpha', 1)
    setProperty('camHUD.alpha', 0)

end

function onSongStart()

    doTweenAlpha('appearHUD', 'camHUD', 1, 0.5)
    doTweenAlpha('unhide', 'dead', 0.5, 3)

end

function opponentNoteHit()

    if curBeat >= 40 then
        
        cameraShake('game', 0.00125, 0.05)
        cameraShake('hud', 0.000625, 0.05)

    end

    if curBeat < 512 then

        health = getProperty('health');
        if health > 0.1 then
            setProperty('health', health - uwu)
        end

    end

    if curBeat >= 512 then

        health = getProperty('health');
        if health > 0.175 then
            setProperty('health', health - uwu)
        end

    end

end

function onBeatHit()

    if curBeat == 315 then
        
        fixed = getProperty('dad.y') - 50

    end

    if curBeat == 316 then
        
        setProperty('dad.y', fixed)

    end

    if curBeat == 447 then
        
        fixed = getProperty('dad.y') + 50

    end

    if curBeat == 448 then
        
        setProperty('dad.y', fixed)

    end

    if curBeat == 464 then
        
        if downscroll == false then
            noteTweenY('NoteMoveY1', 0, 350, 6, 'linear')
            noteTweenY('NoteMoveY2', 1, 350, 6, 'linear')
            noteTweenY('NoteMoveY3', 2, 350, 6, 'linear')
            noteTweenY('NoteMoveY4', 3, 350, 6, 'linear')
            noteTweenY('NoteMoveY5', 4, 350, 6, 'linear')
            noteTweenY('NoteMoveY6', 5, 350, 6, 'linear')
            noteTweenY('NoteMoveY7', 6, 350, 6, 'linear')
            noteTweenY('NoteMoveY8', 7, 350, 6, 'linear')
        end
        if downscroll == true then
            noteTweenY('NoteMoveY1', 0, 250, 6, 'linear')
            noteTweenY('NoteMoveY2', 1, 250, 6, 'linear')
            noteTweenY('NoteMoveY3', 2, 250, 6, 'linear')
            noteTweenY('NoteMoveY4', 3, 250, 6, 'linear')
            noteTweenY('NoteMoveY5', 4, 250, 6, 'linear')
            noteTweenY('NoteMoveY6', 5, 250, 6, 'linear')
            noteTweenY('NoteMoveY7', 6, 250, 6, 'linear')
            noteTweenY('NoteMoveY8', 7, 250, 6, 'linear')
        end

    end    

    if curBeat >= 108 and curBeat < 122 then
        noteTweenX('NoteMove9', 0, math.random(380, 460), 0.5, 'quadOut')
        noteTweenX('NoteMove10', 1, math.random(490, 570), 0.5, 'quadOut')
        noteTweenX('NoteMove11', 2, math.random(600, 680), 0.5, 'quadOut')
        noteTweenX('NoteMove12', 3, math.random(710, 790), 0.5, 'quadOut')

        if downscroll == false then
            noteTweenY('NoteMove13', 0, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(530, 610), 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove13', 0, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(30, 110), 0.5, 'quadOut')
        end

    end
    if curBeat >= 124 and curBeat < 140 then
        noteTweenX('NoteMove1', 4, math.random(380, 460), 0.5, 'quadOut')
        noteTweenX('NoteMove2', 5, math.random(490, 570), 0.5, 'quadOut')
        noteTweenX('NoteMove3', 6, math.random(600, 680), 0.5, 'quadOut')
        noteTweenX('NoteMove4', 7, math.random(710, 790), 0.5, 'quadOut')

        if downscroll == false then
            noteTweenY('NoteMove5', 4, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(30, 110), 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(530, 610), 0.5, 'quadOut')
        end

    end

    if curBeat >= 140 and curBeat < 168 then

        if downscroll == false then
            noteTweenY('NoteMove5', 4, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(30, 110), 0.5, 'quadOut')
            noteTweenY('NoteMove13', 0, math.random(530, 610), 0.25, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(530, 610), 0.25, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(530, 610), 0.25, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(530, 610), 0.25, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(530, 610), 0.5, 'quadOut')
            noteTweenY('NoteMove13', 0, math.random(30, 110), 0.25, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(30, 110), 0.25, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(30, 110), 0.25, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(30, 110), 0.25, 'quadOut')
        end

    end
    if curBeat >= 480 and curBeat < 548 then
        if downscroll == false then
            noteTweenY('NoteMove5', 4, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(30, 170), 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove6', 5, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove7', 6, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove8', 7, math.random(530, 670), 0.5, 'quadOut')
        end
        if downscroll == false then
            noteTweenY('NoteMove13', 0, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(530, 670), 0.5, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(530, 670), 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove13', 0, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove14', 1, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove15', 2, math.random(30, 170), 0.5, 'quadOut')
            noteTweenY('NoteMove16', 3, math.random(30, 170), 0.5, 'quadOut')
        end
    end

    if curBeat >= 316 and curBeat < 380 then
        
        if curBeat %2 == 0 then

            doTweenY('boing', 'topBar', -200, 0.5, 'quadOut')
            doTweenY('boing2', 'bottomBar', 600, 0.5, 'quadOut')
            doTweenZoom('GETBACKDEMONBACK', 'camHUD', 1, 0.5, 'quadOut')
            setProperty('topBar.y', -180)
            setProperty('bottomBar.y', 580)
            setProperty('camHUD.zoom', 0.95)

        end

    end

    if curBeat == 32 then
        doTweenAlpha('byeDead', 'dead', 1, 0.5, 'quadInOut')
        doTweenColor('yeah', 'pentycanvas', 'FFFFFF', 3, 'linear')
        doTweenX('scalebad', 'pentycanvas.scale', 3, 1.5, 'quadInOut')
        doTweenY('scalebad2', 'pentycanvas.scale', 3, 1.5, 'quadInOut')
        doTweenX('scalebad3', 'pentycanvas', 280, 1.5, 'quadInOut')
        doTweenY('scalebad4', 'pentycanvas', 170, 1.5, 'quadInOut')
        doTweenAlpha('icooooonBite', 'simge2', 0, 1.5, 'quadInOut')
    end

    if curBeat == 36 then
        pentyVar = 0.5
        uwu = 0.005
        doTweenAlpha('godButSmall', 'alive', 0.4, 1, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 0.4, 1.75, 'quadInOut')
        doTweenAlpha('byeGrade', 'grade', 0, 1.75, 'quadInOut')
        doTweenY('byebad', 'pentycanvas', -5000, 1.25, 'quadIn')
        doTweenAngle('byebad2', 'pentycanvas', -720, 1.25, 'quadIn')
        setProperty('cameraSpeed', 4)
        setProperty('penty.angle', 0)
        setProperty('defaultCamZoom', 0.4)
    end

    if curBeat == 37 then

        setProperty('cameraSpeed', 0.6)

    end

    if curBeat == 38 then
        doTweenY('hellogood', 'penty', -1500, 0.75, 'quadOut')
    end

    if curBeat == 40 then
        
        doTweenAlpha('godButSmall', 'alive', 0, 1, 'quadOut')
        setProperty('cameraSpeed', 1)
        doTweenAlpha('icooooonBite', 'simge2', 1, 0.5, 'quadInOut')
        setProperty('simge2.alpha', 0)
        setProperty('alive.alpha', 1)
        setProperty('dead.alpha', 0)
        
    end

    if curBeat == 72 then
        
        doTweenZoom('dramaCam', 'camGame', 0.5, 1.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.5)

    end

    if curBeat == 103 then
        
        doTweenZoom('dramaCam', 'camGame', 0.9, 0.5, 'quadInOut')
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 104 then
        pentyVar = 2
        cameraShake('game', 0.005, 1.25)
        cameraShake('hud', 0.0025, 1.25)
        if downscroll == false then
            noteTweenY('NoteMove526', 0, -200, 0.1, 'quadIn')
            noteTweenY('NoteMove626', 1, -200, 0.2, 'quadIn')
            noteTweenY('NoteMove726', 2, -200, 0.3, 'quadIn')
            noteTweenY('NoteMove826', 3, -200, 0.4, 'quadIn')
            noteTweenY('NoteMove52', 4, -200, 0.1, 'quadIn')
            noteTweenY('NoteMove62', 5, -200, 0.2, 'quadIn')
            noteTweenY('NoteMove72', 6, -200, 0.3, 'quadIn')
            noteTweenY('NoteMove82', 7, -200, 0.4, 'quadIn')
        end
        if downscroll == true then
            noteTweenY('NoteMove526', 0, 800, 0.1, 'quadIn')
            noteTweenY('NoteMove626', 1, 800, 0.2, 'quadIn')
            noteTweenY('NoteMove726', 2, 800, 0.3, 'quadIn')
            noteTweenY('NoteMove826', 3, 800, 0.4, 'quadIn')
            noteTweenY('NoteMove52', 4, 800, 0.1, 'quadIn')
            noteTweenY('NoteMove62', 5, 800, 0.2, 'quadIn')
            noteTweenY('NoteMove72', 6, 800, 0.3, 'quadIn')
            noteTweenY('NoteMove82', 7, 800, 0.4, 'quadIn')
        end
        noteTweenAlpha('NoteAlpha1', 0, 0, 1.25)
        noteTweenAlpha('NoteAlpha2', 1, 0, 1.25)
        noteTweenAlpha('NoteAlpha3', 2, 0, 1.25)
        noteTweenAlpha('NoteAlpha4', 3, 0, 1.25)
        noteTweenAlpha('NoteAlpha5', 4, 0, 1.25)
        noteTweenAlpha('NoteAlpha6', 5, 0, 1.25)
        noteTweenAlpha('NoteAlpha7', 6, 0, 1.25)
        noteTweenAlpha('NoteAlpha8', 7, 0, 1.25)
        doTweenZoom('dramaCam', 'camGame', 0.3, 1.25, 'quadInOut')
        doTweenAngle('dramaCamb', 'camGame', 180, 1.25, 'quadInOut')
        doTweenY('byebf', 'boyfriend', -11800, 1.5, 'quadIn')
        doTweenY('byedad', 'dad', -12000, 1.5, 'quadIn')
        doTweenY('gogood', 'penty', -3750, 1.25, 'quadIn')
        doTweenY('gocanvas', 'canvasclean', -7750, 1.25, 'quadIn')
        doTweenAngle('turnbf', 'boyfriend', 360, 1, 'quadIn')
        doTweenAlpha('GOD', 'alivefake', 1, 1, 'quadIn')
        doTweenAlpha('byebyeStats', 'scoreTxt', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats2', 'sicks', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats3', 'goods', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats4', 'bads', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats5', 'shits', 0, 1.25, 'quadIn')
        runTimer('start', 0.01)
    end

    if curBeat == 108 then
        
        uwu = 0.035
        hudAngle = true
        playSound('boom', 0.4)
        noteTweenAlpha('NoteAlpha1', 0, 0.75, 0.75)
        noteTweenAlpha('NoteAlpha2', 1, 0.75, 0.75)
        noteTweenAlpha('NoteAlpha3', 2, 0.75, 0.75)
        noteTweenAlpha('NoteAlpha4', 3, 0.75, 0.75)
        noteTweenAlpha('NoteAlpha5', 4, 1, 0.75)
        noteTweenAlpha('NoteAlpha6', 5, 1, 0.75)
        noteTweenAlpha('NoteAlpha7', 6, 1, 0.75)
        noteTweenAlpha('NoteAlpha8', 7, 1, 0.75)
        noteTweenX('NoteMove9r', 4, 420, 0.5, 'bounceOut')
        noteTweenX('NoteMove10r', 5, 530, 0.5, 'bounceOut')
        noteTweenX('NoteMove11r', 6, 640, 0.5, 'bounceOut')
        noteTweenX('NoteMove12r', 7, 750, 0.5, 'bounceOut')
        doTweenZoom('dramaCam', 'camGame', 1, 5, 'linear')
        doTweenAngle('dramaCam2', 'camGame', 25, 5, 'linear')
        doTweenAlpha('GOD2', 'alivefake', 0, 0.75, 'quadIn')
        doTweenY('byetree3', 'tree3', -6000, 3.5, 'quadOut')
        doTweenY('byetree4', 'tree4', -5800, 3.5, 'quadOut')
        doTweenX('byetree3b', 'tree3', -100, 3.5, 'quadOut')
        doTweenX('byetree4b', 'tree4', 800, 3.5, 'quadOut')
        doTweenY('byebulding1', 'building1', -4800, 3.5, 'quadOut')
        doTweenY('byebulding2', 'building2', -4600, 3.5, 'quadOut')
        doTweenX('byebulding3', 'building3', -5000, 3.5, 'quadOut')
        doTweenY('txtdrop', 'timeTxt', 1500, 3);
        doTweenY('bgdrop', 'timeBarBG', 1500, 3);
        doTweenY('tpdrop', 'timeBar', 1500, 3);
        doTweenAngle('txttilt', 'timeTxt', 360, 4);
        doTweenAngle('bgtilt', 'timeBarBG', -720, 4);
        doTweenAngle('tptilt', 'timeBar', -720, 4);
        doTweenAlpha('yesHUD', 'camHUD', 1, 0.75, 'quadOut')
        scaleObject('tree1', 0.4, 0.4)
        scaleObject('tree2', 0.4, 0.4)
        scaleObject('tree3', 0.4, 0.4)
        scaleObject('tree4', 0.4, 0.4)
        setProperty('cameraSpeed', 2)
        setProperty('defaultCamZoom', 1.2)
        setProperty('kamehameha.alpha', 1)
        setProperty('camGame.angle', 0)
        setProperty('googoo.alpha', 0.7)
        setProperty('stone1.alpha', 0)
        setProperty('stone2.alpha', 0)
        setProperty('stone3.alpha', 0)
        setProperty('canvasclean.alpha', 0)
        setProperty('foreskinclean.alpha', 0)
        setProperty('canvas.alpha', 1)
        setProperty('foreskin.alpha', 1)
        setProperty('pentycanvas.alpha', 0)
        setProperty('dad.y', -12000)
        for i = 0, 3 do
            
            setPropertyFromGroup('strumLineNotes', i, 'direction', -90)

        end

    end

    if curBeat == 122 then
        
        if downscroll == false then
            noteTweenY('NoteMove52', 0, 1000, 0.65, 'quadIn')
            noteTweenY('NoteMove62', 1, 1000, 0.75, 'quadIn')
            noteTweenY('NoteMove72', 2, 1000, 0.85, 'quadIn')
            noteTweenY('NoteMove82', 3, 1000, 0.95, 'quadIn')
            noteTweenY('NoteMove522', 4, 50, 0.3, 'bounceOut')
            noteTweenY('NoteMove622', 5, 50, 0.4, 'bounceOut')
            noteTweenY('NoteMove722', 6, 50, 0.5, 'bounceOut')
            noteTweenY('NoteMove822', 7, 50, 0.6, 'bounceOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove52', 0, -400, 0.65, 'quadIn')
            noteTweenY('NoteMove62', 1, -400, 0.75, 'quadIn')
            noteTweenY('NoteMove72', 2, -400, 0.85, 'quadIn')
            noteTweenY('NoteMove82', 3, -400, 0.95, 'quadIn')
            noteTweenY('NoteMove522', 4, 550, 0.3, 'bounceOut')
            noteTweenY('NoteMove622', 5, 550, 0.4, 'bounceOut')
            noteTweenY('NoteMove722', 6, 550, 0.5, 'bounceOut')
            noteTweenY('NoteMove822', 7, 550, 0.6, 'bounceOut')
        end

    end

    if curBeat == 123 then
        
        doTweenZoom('dramaCam', 'camGame', 0.6, 0.25, 'quadOut')
        doTweenAngle('dramaCamb', 'camGame', 0, 0.25, 'quadOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 124 then
        
        doTweenZoom('dramaCam2', 'camGame', 1.2, 5, 'linear')
        doTweenAngle('dramaCamb2', 'camGame', -25, 5, 'linear')
        setProperty('defaultCamZoom', 1.2)

    end

    if curBeat == 138 then
        
        if downscroll == false then
            noteTweenY('NoteMove522', 0, 550, 0.3, 'bounceOut')
            noteTweenY('NoteMove622', 1, 550, 0.4, 'bounceOut')
            noteTweenY('NoteMove722', 2, 550, 0.5, 'bounceOut')
            noteTweenY('NoteMove822', 3, 550, 0.6, 'bounceOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove522', 0, 50, 0.3, 'bounceOut')
            noteTweenY('NoteMove622', 1, 50, 0.4, 'bounceOut')
            noteTweenY('NoteMove722', 2, 50, 0.5, 'bounceOut')
            noteTweenY('NoteMove822', 3, 50, 0.6, 'bounceOut')
        end

    end

    if curBeat == 139 then
        
        doTweenZoom('dramaCam3', 'camGame', 0.6, 0.25, 'quadOut')
        doTweenAngle('dramaCamb3', 'camGame', 0, 0.25, 'quadOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 140 then
        
        doTweenZoom('dramaCam4', 'camGame', 1, 5, 'linear')
        doTweenAngle('dramaCamb4', 'camGame', 25, 5, 'linear')
        setProperty('defaultCamZoom', 1.2)

    end

    if curBeat == 155 then
        
        doTweenZoom('dramaCam5', 'camGame', 0.6, 0.25, 'quadOut')
        doTweenAngle('dramaCamb5', 'camGame', 0, 0.25, 'quadOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 156 then
        
        doTweenZoom('dramaCam6', 'camGame', 0.9, 5.5, 'linear')
        doTweenAngle('dramaCamb6', 'camGame', -180, 5.5, 'linear')
        doTweenY('backbf', 'boyfriend', -5825, 5.5, 'quadIn')
        doTweenY('backdad', 'dad', -6000, 5.5, 'quadIn')
        doTweenY('gogood', 'penty', -2750, 5.5, 'quadIn')
        doTweenY('byetree1', 'tree1', -4700, 7.5, 'quadOut')
        doTweenY('byetree2', 'tree2', -4200, 7.5, 'quadOut')
        doTweenY('byetree3', 'tree3', -4500, 7.5, 'quadOut')
        doTweenY('byetree4', 'tree4', -4300, 7.5, 'quadOut')
        doTweenY('byebulding1', 'building1', -3000, 7.5, 'quadOut')
        doTweenY('byebulding2', 'building2', -2700, 7.5, 'quadOut')
        doTweenX('byebulding3', 'building3', -4000, 7.5, 'quadOut')
        setProperty('cameraSpeed', 0.6)
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 168 then
        
        noteTweenAlpha('NoteAlpha1', 0, 1, 1.75)
        noteTweenAlpha('NoteAlpha2', 1, 1, 1.75)
        noteTweenAlpha('NoteAlpha3', 2, 1, 1.75)
        noteTweenAlpha('NoteAlpha4', 3, 1, 1.75)
        noteTweenX('defaultPlayerStrumX0rf', 0, 120, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX1rf', 1, 230, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX2rf', 2, 340, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX3rf', 3, 450, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX4rf', 4, 720, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX5rf', 5, 830, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX6rf', 6, 940, 2, 'quadOut')
        noteTweenX('defaultPlayerStrumX7rf', 7, 1050, 2, 'quadOut')
        if downscroll == false then
            noteTweenY('NoteMoveY1', 0, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 50, 2, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 50, 2, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMoveY1', 0, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 550, 2, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 550, 2, 'quadOut')
        end
        doTweenAlpha('GOD', 'alive', 1, 1, 'quadIn')

    end

    if curBeat == 172 then

        daTingX = true
        daTingY = true
        hudAngle = false
        yippee = 0.2
        uwu = 0.01
        doTweenAngle('backCamHUD', 'camHUD', 0, 1, 'quadOut')
        doTweenZoom('dramaCam3', 'camGame', 0.6, 1.5, 'quadOut')
        setProperty('defaultCamZoom', 0.6)
        doTweenAlpha('GOD', 'alivefake', 0, 0.75, 'quadOut')
        doTweenAlpha('GOD2', 'alive', 0, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats', 'scoreTxt', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats2', 'sicks', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats3', 'goods', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats4', 'bads', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats5', 'shits', 1, 1.25, 'quadOut')
        setProperty('cameraSpeed', 1)
        setProperty('boyfriend.angle', 0)
        setProperty('island.alpha', 1)
        setProperty('island2.alpha', 1)
        setProperty('camGame.angle', 0)
        setProperty('googoo.alpha', 0.4)
        setProperty('alivefake.alpha', 1)
        setProperty('camGame.x', 0)
        setProperty('dad.angle', 0)
        setProperty('dad.y', -6000)
        for i = 0, 3 do
            
            setPropertyFromGroup('strumLineNotes', i, 'direction', 90)

        end

    end

    if curBeat == 176 then
        
        hudAngle = true

    end

    if curBeat == 218 then
        
        daTingX = false
        noteTweenAlpha('NoteAlpha1', 0, 0, 1)
        noteTweenAlpha('NoteAlpha2', 1, 0, 1)
        noteTweenAlpha('NoteAlpha3', 2, 0, 1)
        noteTweenAlpha('NoteAlpha4', 3, 0, 1)
        noteTweenX('NoteMove1', 0, 420, 0.6, 'quadOut')
        noteTweenX('NoteMove2', 1, 530, 0.65, 'quadOut')
        noteTweenX('NoteMove3', 2, 640, 0.7, 'quadOut')
        noteTweenX('NoteMove4', 3, 750, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 420, 0.6, 'quadOut')
        noteTweenX('NoteMove6', 5, 530, 0.65, 'quadOut')
        noteTweenX('NoteMove7', 6, 640, 0.7, 'quadOut')
        noteTweenX('NoteMove8', 7, 750, 0.75, 'quadOut')
        doTweenZoom('dramaCam3', 'camGame', 0.9, 1.5, 'quadInOut')
        setProperty('defaultCamZoom', 0.9)
        doTweenAlpha('GODISDEAD', 'grade', 1, 1.25, 'quadInOut')
        doTweenAlpha('GODISDEAD2', 'dead', 0.25, 1.25, 'quadInOut')
        setProperty('cameraSpeed', 0.6)

    end

    if curBeat == 234 then
        
        noteTweenAlpha('NoteAlpha1', 0, 1, 0.5)
        noteTweenAlpha('NoteAlpha2', 1, 1, 0.5)
        noteTweenAlpha('NoteAlpha3', 2, 1, 0.5)
        noteTweenAlpha('NoteAlpha4', 3, 1, 0.5)
        noteTweenX('NoteMove1', 0, 120, 0.6, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.65, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.7, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.6, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.65, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.7, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'quadOut')
        doTweenZoom('dramaCam3', 'camGame', 0.6, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.6)
        doTweenAlpha('GODISDEAD', 'grade', 0, 1.25, 'quadInOut')
        doTweenAlpha('GODISDEAD2', 'dead', 0, 1.25, 'quadInOut')
        setProperty('cameraSpeed', 1)

    end

    if curBeat == 236 then
        
        daTingX = true

    end

    if curBeat == 251 then
        

        doTweenZoom('dramaCam3', 'camGame', 0.7, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.7)

    end

    if curBeat == 267 then
        
        doTweenZoom('dramaCam3', 'camGame', 0.6, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 283 then
        
        doTweenZoom('dramaCam3', 'camGame', 0.7, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.7)

    end

    if curBeat == 300 then
        
        daTingX = false
        daTingY = false
        hudAngle = false
        yippee = 1
        noteTweenAlpha('NoteAlpha1', 0, 0, 0.25)
        noteTweenAlpha('NoteAlpha2', 1, 0, 0.25)
        noteTweenAlpha('NoteAlpha3', 2, 0, 0.25)
        noteTweenAlpha('NoteAlpha4', 3, 0, 0.25)
        noteTweenAlpha('NoteAlpha5', 4, 0, 0.25)
        noteTweenAlpha('NoteAlpha6', 5, 0, 0.25)
        noteTweenAlpha('NoteAlpha7', 6, 0, 0.25)
        noteTweenAlpha('NoteAlpha8', 7, 0, 0.25)
        doTweenAngle('BACKHUDBACKDEMON', 'camHUD', 0, 3, 'quadOut')
        doTweenX('BACKHUDBACKDEMON2', 'camHUD', 0, 3, 'quadOut')
        doTweenY('BACKHUDBACKDEMON3', 'camHUD', 0, 3, 'quadOut')
        noteTweenX('NoteMove1', 0, 120, 0.5, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.5, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.5, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.5, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.5, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.5, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.5, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.5, 'quadOut')
        if downscroll == false then
            noteTweenY('NoteMoveY1', 0, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 50, 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMoveY1', 0, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 550, 0.5, 'quadOut')
        end
        doTweenAlpha('GOD', 'alivefake', 0, 0.75, 'quadOut')
        doTweenAlpha('GODISDEAD', 'grade', 1, 0.75, 'quadOut')
        doTweenAlpha('GODISDEAD2', 'dead', 0.75, 0.75, 'quadOut')
        doTweenAngle('dramaCamb6', 'camGame', -10, 0.75, 'quadInOut')
        doTweenZoom('dramaCam3', 'camGame', 0.4, 2.5, 'quadOut')
        setProperty('defaultCamZoom', 0.4)
        setProperty('alivefake.alpha', 1)

    end

    if curBeat == 308 then
        
        uwu = 0.005
        doTweenAlpha('GOD', 'alivefake', 1, 2.75, 'quadIn')
        doTweenAlpha('GODISDEAD2', 'dead', 0.25, 0.75, 'quadIn')
        doTweenAngle('dramaCamb6', 'camGame', 15, 2.75, 'quadInOut')
        doTweenZoom('dramaCam3', 'camGame', 1, 2.75, 'quadIn')
        setProperty('defaultCamZoom', 1)
        setProperty('cameraSpeed', 0.6)

    end

    if curBeat == 316 then
        
        daTingYSmall = true
        noteTweenAlpha('NoteAlpha1', 0, 1, 0.75)
        noteTweenAlpha('NoteAlpha2', 1, 1, 0.75)
        noteTweenAlpha('NoteAlpha3', 2, 1, 0.75)
        noteTweenAlpha('NoteAlpha4', 3, 1, 0.75)
        doTweenAlpha('GOD', 'alivefake', 0, 0.5, 'quadOut')
        doTweenZoom('dramaCam', 'camGame', 0.9, 0.75, 'quadOut')
        setProperty('defaultCamZoom', 0.9)
        setProperty('hind.alpha', 1)
        setProperty('noskin.alpha', 1)
        setProperty('canvas.alpha', 0)

    end

    if curBeat == 343 then
        
        doTweenAngle('dramaCamb6', 'camGame', 0, 1.75, 'quadInOut')
        doTweenZoom('dramaCam', 'camGame', 1, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 1)

    end

    if curBeat == 346 then
        
        noteTweenAlpha('NoteAlpha1', 0, 0, 0.75)
        noteTweenAlpha('NoteAlpha2', 1, 0, 0.75)
        noteTweenAlpha('NoteAlpha3', 2, 0, 0.75)
        noteTweenAlpha('NoteAlpha4', 3, 0, 0.75)
        noteTweenAlpha('NoteAlpha5', 4, 1, 0.75)
        noteTweenAlpha('NoteAlpha6', 5, 1, 0.75)
        noteTweenAlpha('NoteAlpha7', 6, 1, 0.75)
        noteTweenAlpha('NoteAlpha8', 7, 1, 0.75)

    end

    if curBeat == 347 then
        
        doTweenAngle('dramaCamb6', 'camGame', -15, 2.75, 'quadInOut')
        doTweenZoom('dramaCam', 'camGame', 0.9, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 376 then
        
        doTweenAngle('dramaCamb6', 'camGame', 0, 1.25, 'quadInOut')
        doTweenZoom('dramaCam', 'camGame', 1, 1.25, 'quadInOut')
        setProperty('defaultCamZoom', 1)

    end

    if curBeat == 379 then
        
        noteTweenAlpha('NoteAlpha1', 0, 1, 0.75)
        noteTweenAlpha('NoteAlpha2', 1, 1, 0.75)
        noteTweenAlpha('NoteAlpha3', 2, 1, 0.75)
        noteTweenAlpha('NoteAlpha4', 3, 1, 0.75)

    end

    if curBeat == 380 then
        
        cameraShake('game', 0.005, 0.75)
        cameraShake('hud', 0.0025, 0.75)
        doTweenZoom('dramaCam', 'camGame', 0.8, 1.75, 'quadOut')
        setProperty('defaultCamZoom', 0.8)
        doTweenAlpha('woah', 'hind', 0.5, 0.5, 'quadOut')
        doTweenAlpha('woah2', 'noteskin', 0.5, 0.5, 'quadOut')

    end

    if curBeat == 381 then
        
        doTweenAlpha('woah', 'hind', 1, 0.5, 'quadIn')
        doTweenAlpha('woah2', 'noskin', 1, 0.5, 'quadIn')

    end

    if curBeat == 410 then
        
        doTweenZoom('dramaCam', 'camGame', 0.7, 1.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.7)

    end

    if curBeat == 412 then
        
        doTweenAlpha('alphaCon', 'dad', 0.5, 0.5, 'circIn');
        doTweenAlpha('alpha111', 'hind', 0.75, 0.5, 'circIn');
        doTweenAlpha('alpha121', 'noskin', 0.75, 0.5, 'circIn');
        doTweenAlpha('alpha131', 'canvas', 0.25, 0.5, 'circIn');

    end

    if curBeat == 426 then
        
        doTweenZoom('dramaCam', 'camGame', 0.9, 1.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 444 then
        
        noteTweenY('NoteMove1y', 0, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove2y', 1, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove3y', 2, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove4y', 3, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove5y', 4, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove6y', 5, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove7y', 6, 50, 0.5, 'quadOut')
        noteTweenY('NoteMove8y', 7, 50, 0.5, 'quadOut')
        noteTweenAngle('NoteMove1yz', 0, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove2yz', 1, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove3yz', 2, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove4yz', 3, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove5yz', 4, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove6yz', 5, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove7yz', 6, 0, 0.5, 'quadOut')
        noteTweenAngle('NoteMove8yz', 7, 0, 0.5, 'quadOut')
        doTweenAlpha('alpha111', 'hind', 0, 0.5, 'circIn');
        doTweenAlpha('alpha121', 'noskin', 0, 0.5, 'circIn');
        doTweenAlpha('alpha131', 'canvas', 1, 0.5, 'circIn');
        doTweenAlpha('alpha141', 'deadfake', 1, 0.5, 'circIn');
        doTweenZoom('dramaCam', 'camGame', 0.4, 1.25, 'quadInOut')
        setProperty('defaultCamZoom', 0.4)

    end

    if curBeat == 448 then
        
        uwu = 0.035
        daTingYSmall = false
        cameraShake('game', 0.05, 0.25)
        cameraShake('hud', 0.025, 0.25)
        if downscroll == false then
            noteTweenY('NoteMoveY1', 0, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 50, 0.5, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 50, 0.5, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMoveY1', 0, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 550, 0.5, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 550, 0.5, 'quadOut')
        end
        doTweenAngle('dramaCamb6', 'camGame', 35, 0.15, 'quadIn')
        doTweenAlpha('GOD', 'alive', 0, 0.75, 'quadOut')
        doTweenAlpha('GODISDEAD', 'grade', 0, 0.75, 'quadOut')
        doTweenAlpha('GODISDEAD2', 'dead', 0, 0.75, 'quadOut')
        doTweenZoom('dramaCam', 'camGame', 0.6, 0.5, 'bounceOut')
        setProperty('defaultCamZoom', 0.6)
        setProperty('alive.alpha', 1)
        setProperty('cameraSpeed', 4)
        setProperty('hind.alpha', 0)
        setProperty('noskin.alpha', 0)
        setProperty('topBar.alpha', 0)
        setProperty('bottomBar.alpha', 0)
        setProperty('deadfake.alpha', 0)
        setProperty('dad.alpha', 1)

    end

    if curBeat == 454 then
        
        doTweenZoom('dramaCam', 'camGame', 0.7, 0.15, 'bounceOut')
        setProperty('defaultCamZoom', 0.7)

    end

    if curBeat == 456 then
        
        doTweenAngle('dramaCamb6', 'camGame', 35, 0.15, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 0.8, 0.25, 'bounceOut')
        setProperty('defaultCamZoom', 0.8)

    end

    if curBeat == 458 then
        
        doTweenAngle('dramaCamb6', 'camGame', -35, 0.15, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 0.9, 0.25, 'bounceOut')
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 460 then
        
        doTweenAngle('dramaCamb6', 'camGame', -35, 0.15, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 1, 0.25, 'bounceOut')
        setProperty('defaultCamZoom', 1)

    end

    if curBeat == 462 then
        
        doTweenAngle('dramaCamb6', 'camGame', 0, 0.15, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 0.6, 0.5, 'bounceOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 464 then
        
        doTweenZoom('dramaCam', 'camGame', 0.9, 5, 'linear')
        setProperty('defaultCamZoom', 0.9)

    end

    if curBeat == 476 then
        
        doTweenAlpha('byebyeStats', 'scoreTxt', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats2', 'sicks', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats3', 'goods', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats4', 'bads', 0, 1.25, 'quadIn')
        doTweenAlpha('byebyeStats5', 'shits', 0, 1.25, 'quadIn')
        doTweenY('byebulding1', 'building1', -4800, 1.5, 'quadOut')
        doTweenY('byebulding2', 'building2', -4600, 1.5, 'quadOut')
        doTweenX('byebulding3', 'building3', -5000, 1.5, 'quadOut')
        doTweenZoom('dramaCam', 'camGame', 0.4, 1.25, 'quadInOut')
        doTweenAngle('dramaCamb', 'camGame', 180, 1.25, 'quadInOut')
        doTweenY('byebf', 'boyfriend', -11800, 1.5, 'quadIn')
        doTweenY('byedad', 'dad', -12000, 1.5, 'quadIn')
        doTweenY('gogood', 'penty', -4750, 1.25, 'quadIn')
        doTweenAngle('turnbf', 'boyfriend', 360, 1, 'quadIn')
        doTweenAlpha('GOD', 'alive', 1, 1, 'quadIn')
        setProperty('defaultCamZoom', 0.4)
        setProperty('cameraSpeed', 0.3)

    end

    if curBeat == 480 then
        
        uwu = 0.06
        hudAngle = true
        playSound('boom', 0.4)
        noteTweenAlpha('NoteAlpha1', 0, 0.5, 0.75)
        noteTweenAlpha('NoteAlpha2', 1, 0.5, 0.75)
        noteTweenAlpha('NoteAlpha3', 2, 0.5, 0.75)
        noteTweenAlpha('NoteAlpha4', 3, 0.5, 0.75)
        noteTweenAlpha('NoteAlpha5', 4, 1, 0.75)
        noteTweenAlpha('NoteAlpha6', 5, 1, 0.75)
        noteTweenAlpha('NoteAlpha7', 6, 1, 0.75)
        noteTweenAlpha('NoteAlpha8', 7, 1, 0.75)
        doTweenZoom('dramaCam', 'camGame', 1.2, 10, 'linear')
        doTweenAngle('dramaCam2', 'camGame', 35, 10, 'linear')
        doTweenAlpha('GOD', 'alivefake', 0, 0.25, 'quadOut')
        doTweenAlpha('GOD2', 'alive', 0, 0.75, 'quadOut')
        setProperty('cameraSpeed', 4)
        setProperty('defaultCamZoom', 1.5)
        setProperty('camGame.angle', 0)
        scaleObject('penty', 3.5, 3.5)
        setProperty('googoo.alpha', 0.7)
        screenCenter('penty', 'x')
        setProperty('island.alpha', 0)
        setProperty('island2.alpha', 0)
        setProperty('alivefake.alpha', 1)
        setProperty('dad.angle', 0)
        setProperty('dad.y', -12000)
        for i = 0, 3 do
            
            setPropertyFromGroup('strumLineNotes', i, 'direction', -90)

        end

    end

    if curBeat == 511 then
        
        doTweenZoom('dramaCam5', 'camGame', 0.4, 0.25, 'quadOut')
        doTweenAngle('dramaCamb5', 'camGame', 0, 0.25, 'quadOut')
        setProperty('defaultCamZoom', 0.4)

    end

    if curBeat == 512 then
        
        uwu = 0.15
        doTweenZoom('dramaCam', 'camGame', 1.5, 11, 'linear')
        doTweenAngle('dramaCam2', 'camGame', -35, 11, 'linear')
        setProperty('defaultCamZoom', 1.5)

    end

    if curBeat == 543 then
        
        doTweenZoom('dramaCam5', 'camGame', 0.5, 0.25, 'quadOut')
        doTweenAngle('dramaCamb5', 'camGame', 0, 0.25, 'quadOut')
        setProperty('defaultCamZoom', 0.5)

    end

    if curBeat == 544 then
        
        doTweenY('byebf', 'boyfriend', 450, 2.75, 'quadInOut')
        doTweenY('byedad', 'dad', 300, 2.75, 'quadInOut')
        doTweenY('hellogood', 'penty', -2500, 2.75, 'quadInOut')
        doTweenAlpha('byePaint', 'kamehameha', 0, 1.25)
        doTweenAlpha('GOD2', 'alive', 1, 1.25, 'quadOut')
        doTweenZoom('dramaCam5', 'camGame', 0.9, 1.25, 'quadOut')
        setProperty('defaultCamZoom', 0.9)
        for i = 0, 3 do
            
            setPropertyFromGroup('strumLineNotes', i, 'direction', 90)

        end

    end

    if curBeat == 548 then
        
        uwu = 0.01
        pentyVar = 0.05
        hudAngle = false
        doTweenAngle('backCamHUD', 'camHUD', 0, 1, 'quadOut')
        noteTweenX('defaultPlayerStrumX0rf', 0, 420, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX1rf', 1, 530, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX2rf', 2, 640, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX3rf', 3, 750, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX4rf', 4, 420, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX5rf', 5, 530, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX6rf', 6, 640, 3, 'quadOut')
        noteTweenX('defaultPlayerStrumX7rf', 7, 750, 3, 'quadOut')
        if downscroll == false then
            noteTweenY('NoteMoveY1', 0, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 50, 3, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 50, 3, 'quadOut')
        end
        if downscroll == true then
            noteTweenY('NoteMoveY1', 0, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY2', 1, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY3', 2, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY4', 3, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY5', 4, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY6', 5, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY7', 6, 550, 3, 'quadOut')
            noteTweenY('NoteMoveY8', 7, 550, 3, 'quadOut')
        end
        doTweenAlpha('byebyeStats', 'scoreTxt', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats2', 'sicks', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats3', 'goods', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats4', 'bads', 1, 1.25, 'quadOut')
        doTweenAlpha('byebyeStats5', 'shits', 1, 1.25, 'quadOut')
        noteTweenAlpha('NoteAlpha1', 0, 0, 2.25)
        noteTweenAlpha('NoteAlpha2', 1, 0, 2.25)
        noteTweenAlpha('NoteAlpha3', 2, 0, 2.25)
        noteTweenAlpha('NoteAlpha4', 3, 0, 2.25)
        noteTweenAlpha('NoteAlpha5', 4, 0, 2.25)
        noteTweenAlpha('NoteAlpha6', 5, 0, 2.25)
        noteTweenAlpha('NoteAlpha7', 6, 0, 2.25)
        noteTweenAlpha('NoteAlpha8', 7, 0, 2.25)
        doTweenZoom('dramaCam5', 'camGame', 0.4, 2.25, 'quadInOut')
        doTweenAlpha('GOD2', 'alive', 0, 0.75, 'quadOut')
        setProperty('defaultCamZoom', 0.4)
        setProperty('boyfriend.angle', 0)
        setProperty('cameraSpeed', 0.6)
        setProperty('googoo.alpha', 0)
        setProperty('stone1.alpha', 0)
        setProperty('stone2.alpha', 0)
        setProperty('stone3.alpha', 0)
        setProperty('canvas.angle', 0)
        setProperty('dad.y', 300)

    end

    if curBeat == 556 then
        
        doTweenZoom('dramaCam5', 'camGame', 0.6, 0.75, 'quadInOut')
        setProperty('defaultCamZoom', 0.6)

    end

    if curBeat == 564 then
        
        doTweenZoom('dramaCam5', 'camGame', 0.9, 1, 'quadIn')
        setProperty('defaultCamZoom', 0.9)
        doTweenAlpha('deadHi', 'dead', 1, 1, 'quadIn')

    end

end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'start' then
        doTweenAlpha('alpha11', 'deadly1', owo2, 0.5, 'circInOut');
        doTweenAlpha('alpha12', 'deadly2', owo, 0.5, 'circInOut');
        doTweenX('alpha13', 'deadly1.scale', 1.25, 0.5, 'circInOut');
        doTweenY('alpha14', 'deadly2.scale', 0.75, 0.5, 'circInOut');
        runTimer('end', 0.5)
    end

    if tag == 'end' then
        doTweenAlpha('alpha11', 'deadly1', owo, 0.5, 'circInOut');
        doTweenAlpha('alpha12', 'deadly2', owo2, 0.5, 'circInOut');
        doTweenX('alpha13', 'deadly1.scale', 0.75, 0.5, 'circInOut');
        doTweenY('alpha14', 'deadly2.scale', 1.25, 0.5, 'circInOut');
        runTimer('start', 0.5)
    end

    if tag == 'movePaint' then

        runTimer('movePaint', 0.06)
        setProperty('kamehameha.y', getProperty('kamehameha.y') + 250)

    end

    if tag == 'death' then
        
        close(true)

    end

end

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    setProperty('canvas.y', getProperty('boyfriend.y') - 550)

    if curBeat >= 380 and curBeat <= 444 then
        
        noteTweenX('defaultPlayerStrumX0rft', 0, 120 + (math.sin(currentBeat/8+0.1) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX1rft', 1, 230 + (math.sin(currentBeat/8+0.2) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX2rft', 2, 340 + (math.sin(currentBeat/8+0.3) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX3rft', 3, 450 + (math.sin(currentBeat/8+0.4) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX4rft', 4, 720 + (math.sin(currentBeat/8+0.5) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX5rft', 5, 830 + (math.sin(currentBeat/8+0.6) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX6rft', 6, 940 + (math.sin(currentBeat/8+0.7) * 50), 0.25)
        noteTweenX('defaultPlayerStrumX7rft', 7, 1050 + (math.sin(currentBeat/8+0.8) * 50), 0.25)

    end

    if curBeat >= 412 and curBeat <= 444 then
        
        noteTweenAngle('defaultPlayerStrumX0rfta', 0, 0 + (math.sin(currentBeat/7+0.1) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX1rfta', 1, 0 + (math.sin(currentBeat/7+0.2) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX2rfta', 2, 0 + (math.sin(currentBeat/7+0.3) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX3rfta', 3, 0 + (math.sin(currentBeat/7+0.4) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX4rfta', 4, 0 + (math.sin(currentBeat/7+0.5) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX5rfta', 5, 0 + (math.sin(currentBeat/7+0.6) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX6rfta', 6, 0 + (math.sin(currentBeat/7+0.7) * 5), 0.25)
        noteTweenAngle('defaultPlayerStrumX7rfta', 7, 0 + (math.sin(currentBeat/7+0.8) * 5), 0.25)

    end

    if curBeat >= 140 and curBeat < 168 then

        if curBeat >= 140 and curBeat < 144 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 144 and curBeat < 148 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 148 and curBeat < 152 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 152 and curBeat < 156 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 156 and curBeat < 160 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 160 and curBeat < 164 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

        if curBeat >= 164 and curBeat < 168 then

            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + (math.sin(currentBeat/3+0.1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 750 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 640 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 530 + (math.sin(currentBeat/3+0.1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 420 + (math.sin(currentBeat/3+0.1) * -450), 0.25)

        end

    end

    if curBeat >= 480 and curBeat < 548 then

        if curBeat >= 480 and curBeat < 484 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 484 and curBeat < 488 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 488 and curBeat < 492 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 492 and curBeat < 496 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 496 and curBeat < 500 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 500 and curBeat < 504 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 504 and curBeat < 508 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 508 and curBeat < 512 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 512 and curBeat < 516 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 516 and curBeat < 520 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 520 and curBeat < 524 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 524 and curBeat < 528 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 528 and curBeat < 532 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 532 and curBeat < 536 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 536 and curBeat < 540 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * 450), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5+1) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5+2) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5+3) * -450), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5+4) * -450), 0.25)

        end

        if curBeat >= 540 and curBeat < 548 then
    
            noteTweenX('defaultPlayerStrumX0rf', 0, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * 250), 0.25)
            noteTweenX('defaultPlayerStrumX1rf', 1, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * 250), 0.25)
            noteTweenX('defaultPlayerStrumX2rf', 2, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * 250), 0.25)
            noteTweenX('defaultPlayerStrumX3rf', 3, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * 250), 0.25)
            noteTweenX('defaultPlayerStrumX4rf', 4, 420 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * -250), 0.25)
            noteTweenX('defaultPlayerStrumX5rf', 5, 530 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * -250), 0.25)
            noteTweenX('defaultPlayerStrumX6rf', 6, 640 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * -250), 0.25)
            noteTweenX('defaultPlayerStrumX7rf', 7, 750 + math.random(-40, 40) + (math.sin(currentBeat/2.5) * -250), 0.25)

        end

    end

    if curBeat >= 176 and curBeat < 300 then
        
        setProperty('camHUD.x',0 - -40 * math.cos((currentBeat2*0.33)*math.pi) )
        setProperty('camHUD.y',0 - -20 * math.cos((currentBeat2*0.42)*math.pi) )

    end

    if curBeat < 548 then
        
        setProperty('canvas.angle',0 - 18 * math.cos((currentBeat2*0.36)*math.pi) )

    end

    if hudAngle then

        setProperty('camHUD.angle',0 - -15*yippee * math.cos((currentBeat2*0.33)*math.pi) )

    end

    if daTingX then
        noteTweenX('defaultPlayerStrumX0r', 0, 120 + (math.sin(currentBeat/3+0.1) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX1r', 1, 230 + (math.sin(currentBeat/3+0.2) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX2r', 2, 340 + (math.sin(currentBeat/3+0.3) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX3r', 3, 450 + (math.sin(currentBeat/3+0.4) * 50), 0.001)
        noteTweenX('defaultPlayerStrumX0rr', 4, 720 + (math.sin(currentBeat/3+0.1) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX1rr', 5, 830 + (math.sin(currentBeat/3+0.2) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX2rr', 6, 940 + (math.sin(currentBeat/3+0.3) * -50), 0.001)
        noteTweenX('defaultPlayerStrumX3rr', 7, 1050 + (math.sin(currentBeat/3+0.4) * -50), 0.001)
    end

    if daTingY then
        if downscroll == false then
            noteTweenY('defaultPlayerStrumY4r', 0, 50 + (math.cos(currentBeat/2+0.2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY5r', 1, 50 + (math.cos(currentBeat/2+0.4) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY6r', 2, 50 + (math.cos(currentBeat/2+0.6) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY7r', 3, 50 + (math.cos(currentBeat/2+0.8) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY4rr', 4, 50 + (math.cos(currentBeat/2+0.2) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5rr', 5, 50 + (math.cos(currentBeat/2+0.4) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6rr', 6, 50 + (math.cos(currentBeat/2+0.6) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7rr', 7, 50 + (math.cos(currentBeat/2+0.8) * -25), 0.001)
        end
        if downscroll == true then
            noteTweenY('defaultPlayerStrumY4r', 0, 550 + (math.cos(currentBeat/2+0.2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY5r', 1, 550 + (math.cos(currentBeat/2+0.4) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY6r', 2, 550 + (math.cos(currentBeat/2+0.6) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY7r', 3, 550 + (math.cos(currentBeat/2+0.8) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY4rr', 4, 550 + (math.cos(currentBeat/2+0.2) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5rr', 5, 550 + (math.cos(currentBeat/2+0.4) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6rr', 6, 550 + (math.cos(currentBeat/2+0.6) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7rr', 7, 550 + (math.cos(currentBeat/2+0.8) * -25), 0.001)
        end
    end

    if daTingYSmall then
        if downscroll == false then
            noteTweenY('defaultPlayerStrumY4r', 0, 50 + (math.cos(currentBeat/6+0.5) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY5r', 1, 50 + (math.cos(currentBeat/6+1) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY6r', 2, 50 + (math.cos(currentBeat/6+1.5) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY7r', 3, 50 + (math.cos(currentBeat/6+2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY4rr', 4, 50 + (math.cos(currentBeat/6+0.5) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5rr', 5, 50 + (math.cos(currentBeat/6+1) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6rr', 6, 50 + (math.cos(currentBeat/6+1.5) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7rr', 7, 50 + (math.cos(currentBeat/6+2) * -25), 0.001)
        end
        if downscroll == true then
            noteTweenY('defaultPlayerStrumY4r', 0, 550 + (math.cos(currentBeat/6+0.5) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY5r', 1, 550 + (math.cos(currentBeat/6+1) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY6r', 2, 550 + (math.cos(currentBeat/6+1.5) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY7r', 3, 550 + (math.cos(currentBeat/6+2) * 25), 0.001)
            noteTweenY('defaultPlayerStrumY4rr', 4, 550 + (math.cos(currentBeat/6+0.5) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY5rr', 5, 550 + (math.cos(currentBeat/6+1) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY6rr', 6, 550 + (math.cos(currentBeat/6+1.5) * -25), 0.001)
            noteTweenY('defaultPlayerStrumY7rr', 7, 550 + (math.cos(currentBeat/6+2) * -25), 0.001)
        end
    end

    setProperty('hind.y', getProperty('boyfriend.y') + 200)
    setProperty('noskin.y', getProperty('boyfriend.y') - 850)

    setProperty('stone1.x', getProperty('boyfriend.x') - 800)
    setProperty('stone2.x', getProperty('boyfriend.x') - 500)
    setProperty('stone3.x', getProperty('boyfriend.x') - 100)
    setProperty('stone1.y', getProperty('boyfriend.y') + 150)
    setProperty('stone2.y', getProperty('boyfriend.y') + 350)
    setProperty('stone3.y', getProperty('boyfriend.y') + 100)

    setProperty('penty.angle', getProperty('penty.angle') - pentyVar)

    setProperty('stone1.angle', getProperty('stone1.angle') - 0.05)
    setProperty('stone2.angle', getProperty('stone2.angle') + 0.066)
    setProperty('stone3.angle', getProperty('stone3.angle') - 0.058)

    setProperty('building1.angle',0 - 20 * math.cos((currentBeat2*0.33)*math.pi) )
    setProperty('building2.angle',0 - -30 * math.cos((currentBeat2*0.44)*math.pi) )
    setProperty('building3.angle',0 - 15 * math.cos((currentBeat2*0.55)*math.pi) )

    if curBeat >= 108 and curBeat <= 316 then
        setProperty('simge1.alpha', getProperty('health')/0.8)
        if getProperty('health') <= 2 and getProperty('health') > 1.75 then
            doTweenAlpha('alphap', 'simge2', 0.125, 0.1);
        end
        if getProperty('health') <= 1.75 and getProperty('health') > 1.5 then
            doTweenAlpha('alphap', 'simge2', 0.25, 0.1);
        end
        if getProperty('health') <= 1.5 and getProperty('health') > 1.25 then
            doTweenAlpha('alphap', 'simge2', 0.375, 0.1);
        end
        if getProperty('health') <= 1.25 and getProperty('health') > 1 then
            doTweenAlpha('alphap', 'simge2', 0.5, 0.1);
        end
        if getProperty('health') <= 1 and getProperty('health') > 0.75 then
            doTweenAlpha('alphap', 'simge2', 0.625, 0.1);
        end
        if getProperty('health') <= 0.75 and getProperty('health') > 0.5 then
            doTweenAlpha('alphap', 'simge2', 0.75, 0.1);
        end
        if getProperty('health') <= 0.5 and getProperty('health') > 0.25 then
            doTweenAlpha('alphap', 'simge2', 0.875, 0.1);
        end
        if getProperty('health') <= 0.25 then
            doTweenAlpha('alphap', 'simge2', 1, 0.1);
        end
    end

    if curBeat == 316 then
        
        setProperty('simge1.visible', false)
		setProperty('simge2.visible', false)

    end

    if curBeat == 548 then
        
        setProperty('simge1.visible', false)
		setProperty('simge2.visible', false)

    end


    if curBeat >= 448 then
        setProperty('simge1.alpha', getProperty('health')/0.8)
        if getProperty('health') <= 2 and getProperty('health') > 1.75 then
            doTweenAlpha('alphap', 'simge2', 0.125, 0.1);
        end
        if getProperty('health') <= 1.75 and getProperty('health') > 1.5 then
            doTweenAlpha('alphap', 'simge2', 0.25, 0.1);
        end
        if getProperty('health') <= 1.5 and getProperty('health') > 1.25 then
            doTweenAlpha('alphap', 'simge2', 0.375, 0.1);
        end
        if getProperty('health') <= 1.25 and getProperty('health') > 1 then
            doTweenAlpha('alphap', 'simge2', 0.5, 0.1);
        end
        if getProperty('health') <= 1 and getProperty('health') > 0.75 then
            doTweenAlpha('alphap', 'simge2', 0.625, 0.1);
        end
        if getProperty('health') <= 0.75 and getProperty('health') > 0.5 then
            doTweenAlpha('alphap', 'simge2', 0.75, 0.1);
        end
        if getProperty('health') <= 0.5 and getProperty('health') > 0.25 then
            doTweenAlpha('alphap', 'simge2', 0.875, 0.1);
        end
        if getProperty('health') <= 0.25 then
            doTweenAlpha('alphap', 'simge2', 1, 0.1);
        end
    end

    if curBeat >= 36 and curBeat < 548 then
        if getProperty('health') > 1.6 then
            owo = 0.1*0.9
            owo2 = 0.2*0.9
        end
        if getProperty('health') <= 1.6 and getProperty('health') > 1.2 then
            owo = 0.3*0.9
            owo2 = 0.4*0.9
        end
        if getProperty('health') <= 1.2 and getProperty('health') > 0.8 then
            owo = 0.5*0.9
            owo2 = 0.6*0.9
        end
        if getProperty('health') <= 0.8 and getProperty('health') > 0.4 then
            owo = 0.7*0.9
            owo2 = 0.8*0.9
        end
        if getProperty('health') <= 0.4 then
            owo = 0.9*0.9
            owo2 = 1*0.9
        end
    end

    if curBeat == 40 then
        
        health = getProperty('health');
        if health > 0.01 then
            setProperty('health', health/1.015)
        end

    end

    if curBeat <= 464 then

        setProperty('island.x', getProperty('dad.x') - 300)
        setProperty('island.y', getProperty('dad.y') + 375)
        setProperty('island2.x', getProperty('boyfriend.x') + -125)
        setProperty('island2.y', getProperty('boyfriend.y') + 200)

    end

    if curBeat >= 108 then
        
        setProperty('tree1.angle',0 - 13 * math.cos((currentBeat2*0.39)*math.pi) )
        setProperty('tree2.angle',0 - -19 * math.cos((currentBeat2*0.22)*math.pi) )
        setProperty('tree3.angle',0 - 17 * math.cos((currentBeat2*0.25)*math.pi) )
        setProperty('tree4.angle',0 - 15 * math.cos((currentBeat2*0.48)*math.pi) )

    end

    if curBeat >= 108 and curBeat < 172 then

        setProperty('dad.angle',0 - 5 * math.cos((currentBeat2*0.25)*math.pi) )
        setProperty('boyfriend.angle', getProperty('boyfriend.angle') + 0.5)
        cameraShake('game', 0.0075, 0.05)
        cameraShake('hud', 0.004, 0.05)

    end

    if curBeat >= 172 and curBeat < 220 then

        cameraShake('game', 0.0025, 0.05)
        cameraShake('hud', 0.001, 0.05)

    end

    if curBeat >= 220 and curBeat < 234 then

        cameraShake('game', 0.00125, 0.05)
        cameraShake('hud', 0.0005, 0.05)

    end

    if curBeat >= 234 and curBeat < 300 then

        cameraShake('game', 0.0025, 0.05)
        cameraShake('hud', 0.001, 0.05)

    end

    if curBeat >= 300 and curBeat < 444 then

        cameraShake('game', 0.000625, 0.05)
        cameraShake('hud', 0.00025, 0.05)

    end

    if curBeat >= 448 and curBeat < 480 then

        cameraShake('game', 0.005, 0.05)
        cameraShake('hud', 0.002, 0.05)

    end

    if curBeat >= 480 and curBeat < 544 then

        setProperty('dad.angle',0 - 5 * math.cos((currentBeat2*0.25)*math.pi) )
        setProperty('boyfriend.angle', getProperty('boyfriend.angle') + 0.5)

    end

    if curBeat >= 480 and curBeat < 556 then

        cameraShake('game', 0.0075, 0.05)
        cameraShake('hud', 0.004, 0.05)

    end

    if getProperty('kamehameha.y') >= -2500 then
        
        setProperty('kamehameha.y', -3250)

    end

    if curBeat >= 40 and curBeat < 41 then

        if pentyVar > 0.1 then

            pentyVar = pentyVar - 0.005

        end

    end

    if curBeat == 104 and curBeat < 105  then

        if pentyVar < 2 then

            pentyVar = pentyVar + 0.005

        end

    end

    if curBeat == 172 and curBeat < 173 then

        if pentyVar > 0.25 then

            pentyVar = pentyVar - 0.005

        end

    end

    if curBeat == 218 and curBeat < 219 then

        if pentyVar > 0.1 then

            pentyVar = pentyVar - 0.005

        end

    end

    if curBeat == 232 and curBeat < 233 then

        if pentyVar < 0.25 then

            pentyVar = pentyVar + 0.005

        end

    end

    if curBeat == 300 then
        
        pentyVar = 0.05

    end

    if curBeat == 444 and curBeat < 448 then

        if pentyVar > 0 then

            pentyVar = pentyVar - 0.0025

        end

    end

    if curBeat == 448 then
        
        pentyVar = 2.5
        
    end

    if curBeat == 480 then
        
        pentyVar = 5
        
    end

end

function onStepHit()

    if curStep == 1792 then

        noteTweenX('NoteMove1', 0, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 1050, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 450, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', 20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1808 then

        noteTweenX('NoteMove1', 0, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', -20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1818 then
        
        noteTweenX('NoteMove1', 0, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 1050, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 450, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', 20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)
        doTweenAngle('dramaCamb6', 'camGame', -35, 0.15, 'quadIn')
        doTweenZoom('dramaCam', 'camGame', 0.7, 0.25, 'bounceOut')
        setProperty('defaultCamZoom', 0.7)

    end

    if curStep == 1824 then

        noteTweenX('NoteMove1', 0, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', -20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1832 then

        noteTweenX('NoteMove1', 0, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 1050, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 450, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', 20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1840 then

        noteTweenX('NoteMove1', 0, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', -20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1848 then

        noteTweenX('NoteMove1', 0, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 1050, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 450, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', 20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1852 then

        noteTweenX('NoteMove1', 0, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 450, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 1050, 0.75, 'quadOut')

        doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
        setProperty('camHUD.angle', -20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curStep == 1856 then

        noteTweenX('NoteMove1', 0, 720, 0.75, 'quadOut')
        noteTweenX('NoteMove2', 1, 830, 0.75, 'quadOut')
        noteTweenX('NoteMove3', 2, 940, 0.75, 'quadOut')
        noteTweenX('NoteMove4', 3, 1050, 0.75, 'quadOut')
        noteTweenX('NoteMove5', 4, 120, 0.75, 'quadOut')
        noteTweenX('NoteMove6', 5, 230, 0.75, 'quadOut')
        noteTweenX('NoteMove7', 6, 340, 0.75, 'quadOut')
        noteTweenX('NoteMove8', 7, 450, 0.75, 'quadOut')

        doTweenZoom('backOut2', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.angle', 20)
        doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
        setProperty('camHUD.zoom', 1.15)

    end

    if curBeat >= 40 and curBeat < 72 then

        if curStep % 16 == 0 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.025)

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 25)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 10)

            end

        end

        if curStep % 16 == 4 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.025)

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', -25)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -10)

            end

        end

        if curStep % 16 == 8 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.025)

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 25)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 10)

            end

        end

        if curStep % 16 == 11 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.025)

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', -25)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -10)

            end

        end

        if curStep % 16 == 14 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.025)

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 25)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 10)

            end

        end

    end

    if curBeat >= 72 and curBeat < 103 then

        if curStep % 16 == 0 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            if downscroll == false then

                noteTweenY('Secret1', 0, 50, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 50, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 50, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 50, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 50, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 50, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 50, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 50, 0.5, 'quadOut')

            end

            if downscroll == true then

                noteTweenY('Secret1', 0, 550, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 550, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 550, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 550, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 550, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 550, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 550, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 550, 0.5, 'quadOut')

            end

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 35)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 15)

            end

            if downscroll == false then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

            end

            if downscroll == true then
                
                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

            end

        end

        if curStep % 16 == 4 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            if downscroll == false then

                noteTweenY('Secret1', 0, 50, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 50, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 50, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 50, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 50, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 50, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 50, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 50, 0.5, 'quadOut')

            end

            if downscroll == true then

                noteTweenY('Secret1', 0, 550, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 550, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 550, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 550, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 550, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 550, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 550, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 550, 0.5, 'quadOut')

            end

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', -35)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -15)

            end

            if downscroll == false then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

            end

            if downscroll == true then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

            end

        end

        if curStep % 16 == 8 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            if downscroll == false then

                noteTweenY('Secret1', 0, 50, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 50, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 50, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 50, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 50, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 50, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 50, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 50, 0.5, 'quadOut')

            end

            if downscroll == true then

                noteTweenY('Secret1', 0, 550, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 550, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 550, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 550, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 550, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 550, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 550, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 550, 0.5, 'quadOut')

            end

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 35)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 15)

            end

            if downscroll == false then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

            end

            if downscroll == true then
                
                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

            end

        end

        if curStep % 16 == 11 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            if downscroll == false then

                noteTweenY('Secret1', 0, 50, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 50, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 50, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 50, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 50, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 50, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 50, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 50, 0.5, 'quadOut')

            end

            if downscroll == true then

                noteTweenY('Secret1', 0, 550, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 550, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 550, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 550, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 550, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 550, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 550, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 550, 0.5, 'quadOut')

            end

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', -35)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -15)

            end

            if downscroll == false then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

            end

            if downscroll == true then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

            end

        end

        if curStep % 16 == 14 then

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')
            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            if downscroll == false then

                noteTweenY('Secret1', 0, 50, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 50, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 50, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 50, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 50, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 50, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 50, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 50, 0.5, 'quadOut')

            end

            if downscroll == true then

                noteTweenY('Secret1', 0, 550, 0.5, 'quadOut')
                noteTweenY('Secret2', 1, 550, 0.5, 'quadOut')
                noteTweenY('Secret3', 2, 550, 0.5, 'quadOut')
                noteTweenY('Secret4', 3, 550, 0.5, 'quadOut')
                noteTweenY('Secret5', 4, 550, 0.5, 'quadOut')
                noteTweenY('Secret6', 5, 550, 0.5, 'quadOut')
                noteTweenY('Secret7', 6, 550, 0.5, 'quadOut')
                noteTweenY('Secret8', 7, 550, 0.5, 'quadOut')

            end

            doTweenX('GETBACK', 'camHUD', 0, 0.5, 'quadOut')
            setProperty('camHUD.x', 35)

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 15)

            end

            if downscroll == false then

                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 25)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 75)

                end

            end

            if downscroll == true then
                
                for i = 0,0 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 1,1 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 2,2 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 3,3 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 4,4 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 5,5 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

                for i = 6,6 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 575)

                end

                for i = 7,7 do
                    
                    setPropertyFromGroup('strumLineNotes', i, 'y', 525)

                end

            end

        end

    end

    if curBeat >= 108 and curBeat < 168 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 2 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 6 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 10 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 12 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 13 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 14 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

        if curStep % 16 == 15 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.1)

        end

    end

    if curBeat >= 172 and curBeat < 220 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

        if curStep % 16 == 4 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -25)

            end

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

        if curStep % 16 == 11 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -25)

            end

        end

        if curStep % 16 == 14 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

    end

    if curBeat >= 236 and curBeat < 300 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

        if curStep % 16 == 4 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -25)

            end

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

        if curStep % 16 == 11 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', -25)

            end

        end

        if curStep % 16 == 14 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

            noteTweenAngle('NoteAngle9', 0, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle10', 1, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle11', 2, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle12', 3, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle13', 4, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle14', 5, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle15', 6, 0, 0.5, 'quadOut')
            noteTweenAngle('NoteAngle16', 7, 0, 0.5, 'quadOut')

            for i = 0,7 do
                
                setPropertyFromGroup('strumLineNotes', i, 'angle', 25)

            end

        end

    end

    if curBeat >= 464 and curBeat < 480 then

        if curStep % 16 == 0 then

            noteTweenX('NoteMove1', 0, 120, 0.4, 'quadOut')
            noteTweenX('NoteMove2', 1, 230, 0.4, 'quadOut')
            noteTweenX('NoteMove3', 2, 340, 0.4, 'quadOut')
            noteTweenX('NoteMove4', 3, 450, 0.4, 'quadOut')
            noteTweenX('NoteMove5', 4, 720, 0.4, 'quadOut')
            noteTweenX('NoteMove6', 5, 830, 0.4, 'quadOut')
            noteTweenX('NoteMove7', 6, 940, 0.4, 'quadOut')
            noteTweenX('NoteMove8', 7, 1050, 0.4, 'quadOut')

            doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
            setProperty('camHUD.angle', 20)

        end

        if curStep % 16 == 4 then

            noteTweenX('NoteMove1', 0, 720, 0.4, 'quadOut')
            noteTweenX('NoteMove2', 1, 830, 0.4, 'quadOut')
            noteTweenX('NoteMove3', 2, 940, 0.4, 'quadOut')
            noteTweenX('NoteMove4', 3, 1050, 0.4, 'quadOut')
            noteTweenX('NoteMove5', 4, 120, 0.4, 'quadOut')
            noteTweenX('NoteMove6', 5, 230, 0.4, 'quadOut')
            noteTweenX('NoteMove7', 6, 340, 0.4, 'quadOut')
            noteTweenX('NoteMove8', 7, 450, 0.4, 'quadOut')

            doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
            setProperty('camHUD.angle', -20)

        end

        if curStep % 16 == 8 then

            noteTweenX('NoteMove1', 0, 120, 0.4, 'quadOut')
            noteTweenX('NoteMove2', 1, 230, 0.4, 'quadOut')
            noteTweenX('NoteMove3', 2, 340, 0.4, 'quadOut')
            noteTweenX('NoteMove4', 3, 450, 0.4, 'quadOut')
            noteTweenX('NoteMove5', 4, 720, 0.4, 'quadOut')
            noteTweenX('NoteMove6', 5, 830, 0.4, 'quadOut')
            noteTweenX('NoteMove7', 6, 940, 0.4, 'quadOut')
            noteTweenX('NoteMove8', 7, 1050, 0.4, 'quadOut')

            doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
            setProperty('camHUD.angle', 20)

        end

        if curStep % 16 == 12 then

            noteTweenX('NoteMove1', 0, 720, 0.4, 'quadOut')
            noteTweenX('NoteMove2', 1, 830, 0.4, 'quadOut')
            noteTweenX('NoteMove3', 2, 940, 0.4, 'quadOut')
            noteTweenX('NoteMove4', 3, 1050, 0.4, 'quadOut')
            noteTweenX('NoteMove5', 4, 120, 0.4, 'quadOut')
            noteTweenX('NoteMove6', 5, 230, 0.4, 'quadOut')
            noteTweenX('NoteMove7', 6, 340, 0.4, 'quadOut')
            noteTweenX('NoteMove8', 7, 450, 0.4, 'quadOut')

            doTweenAngle('backOut2', 'camHUD', 0, 0.75, 'expoOut')
            setProperty('camHUD.angle', -20)

        end

    end

    if curBeat >= 464 and curBeat < 476 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 4 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 12 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

    end

    if curBeat >= 476 and curBeat < 480 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 2 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.05)

        end

        if curStep % 16 == 4 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 6 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.05)

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 10 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.05)

        end

        if curStep % 16 == 12 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.15)

        end

        if curStep % 16 == 14 then

            doTweenZoom('backOut', 'camHUD', 1, 0.75, 'expoOut')
            setProperty('camHUD.zoom', 1.05)

        end

    end

    if curBeat >= 480 and curBeat < 548 then

        if curStep % 16 == 0 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 2 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 6 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 8 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 10 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 12 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 13 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 14 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

        if curStep % 16 == 15 then

            doTweenZoom('backOut', 'camHUD', 1, 0.5, 'expoOut')
            setProperty('camHUD.zoom', 1.075)

        end

    end

end

function onGameOver()

    hudAngle = false
    runTimer('death', 1.5)
    setProperty('camGame.angle', 0)

end