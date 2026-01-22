function onCreate()

    precacheImage('characters/cutoffPP')

end

function onBeatHit()

    if curBeat == 34 then

        makeLuaSprite('borderlineShit', 'cum', -1680, -1250);
        setLuaSpriteScrollFactor('borderlineShit', 1, 1);
        setObjectOrder('borderlineShit', 999)
        scaleObject('borderlineShit', 3, 0.25)
        setObjectCamera('borderlineShit', 'other');
        setProperty('borderlineShit.alpha', 0)
        screenCenter('borderlineShit', 'x');
        screenCenter('borderlineShit', 'y');
        setProperty('borderlineShit.angle', 30)
        addLuaSprite('borderlineShit', false);

        doTweenAlpha('my"ALIVE"isGone', 'borderlineShit', 0.1, 0.1)

        makeAnimatedLuaSprite('pp', 'characters/cutoffPP', -225, -250);
        setLuaSpriteScrollFactor('pp', 0, 0);
        setObjectCamera('pp', 'other');
        setObjectOrder('pp', 100000)
        scaleObject('pp', 0.8, 0.8)
        addLuaSprite('pp', true);
        setProperty('pp.alpha', 0)

    end

    if curBeat == 35 then
        
        doTweenAlpha('myPPisGone', 'pp', 1, 1)
        luaSpriteAddAnimationByPrefix('pp', 'cutoffPP', 'cutoffPP', 18, true);

    end

    if curBeat == 40 then
        
        removeLuaSprite('pp', true)
        removeLuaSprite('borderlineShit', true)

    end

end