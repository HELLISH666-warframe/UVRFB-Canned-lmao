local guh = 0

function onCreatePost()

    callShader('createShader',{'greyscale', 'GreyscaleEffect'})
    callShader('runShader',{{'camGame','camHUD'},'greyscale'})
    shaderVar('greyscale', 'strength', 0)

    --callShader('createShader',{'scanline', 'ScanlineEffect'})
    --callShader('runShader',{{'camHUD'},'scanline'})
    --shaderVar('scanline', 'strength', 0/1)

    callShader('createShader',{'ca', 'ChromAbEffect'})
    callShader('runShader',{{'camGame','camHUD'},'ca'})
    shaderVar('ca', 'strength', 0)

    --callShader('createShader',{'mirror', 'MirrorRepeatEffect'})
    --callShader('runShader',{'camGame','mirror'})
    --shaderVar('mirror', 'zoom', 1)
    --shaderVar('mirror', 'angle', -30)

    callShader('createShader',{'blur', 'BlurEffect'})
    callShader('runShader',{{'camGame','camHUD'},'blur'})
    shaderVar('blur', 'strength', 0)

    callShader('createShader',{'bloom2', 'BloomEffect'})
    callShader('runShader',{{'camGame','camHUD'},'bloom2'})
    shaderVar('bloom2', 'strength', 0)
    shaderVar('bloom2', 'effect', 0)
    shaderVar('bloom2', 'contrast', 0)
    shaderVar('bloom2', 'brightness', 1)

end

function callShader(func,vars)
    callScript('scripts/shader',func,vars)
end

function shaderVar(shader,var,value,type)
    callShader('setShaderVar',{shader,var,value,type})
end

function shaderTween(shader,var,value,time,easing)
    callShader('tweenShaderValue',{shader,var,value,time,easing})
end

function onBeatHit()

    if curBeat == 40 then

        shaderTween('ca', 'strength', 0.005, 0.75, 'quadIn')

    end

    if curBeat == 172 then

        shaderVar('ca', 'strength', 0.005)

    end

    if curBeat == 218 then
        
        shaderTween('greyscale', 'strength', 1, 0.75, 'quadIn')
        shaderTween('blur', 'strength', 2, 0.75, 'quadIn')
        shaderTween('ca', 'strength', 0, 0.75, 'quadIn')
        
    end

    if curBeat == 234 then
        
        shaderTween('greyscale', 'strength', 0, 0.75, 'quadOut')
        shaderTween('blur', 'strength', 0, 0.75, 'quadOut')
        shaderTween('ca', 'strength', 0.005, 0.75, 'quadOut')
        
    end

    if curBeat == 300 then

        shaderVar('ca', 'strength', 0)

    end

    if curBeat == 308 then 

        shaderTween('greyscale', 'strength', 0.5, 3, 'quadIn')
        shaderTween('blur', 'strength', 2, 3, 'quadIn')
    
    end

    if curBeat == 448 then
        
        shaderVar('greyscale', 'strength', 0)
        shaderVar('blur', 'strength', 0)

    end

    if curBeat == 480 then
        
        shaderVar('blur', 'strength', 1)

    end

    if curBeat == 548 then
        
        shaderVar('ca', 'strength', 0.0025)
        shaderVar('blur', 'strength', 0)

    end

end

function opponentNoteHit(isSustainNote)

    if curBeat >= 108 and curBeat < 172 then

        guh = 0.009375

    end

    if curBeat >= 448 and curBeat < 480 then

        guh = 0.0075

    end

    if curBeat >= 480 and curBeat < 548 then

        guh = 0.015

    end

end

function onUpdate()

    if curBeat >= 108 and curBeat < 172 then

        if guh > 0.0065 then

            guh = guh/1.075

        end

        shaderVar('ca', 'strength', guh)

    end

    if curBeat >= 448 and curBeat < 480 then

        if guh > 0.005 then

            guh = guh/1.075

        end

        shaderVar('ca', 'strength', guh)

    end

    if curBeat >= 480 and curBeat < 548 then

        if guh > 0.01 then

            guh = guh/1.075

        end

        shaderVar('ca', 'strength', guh)

    end

end