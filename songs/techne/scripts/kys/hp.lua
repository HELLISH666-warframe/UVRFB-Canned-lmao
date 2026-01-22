function onCreate()

	if downscroll == false then
		
		setGraphicSize('healthBar', 600, 40);
		screenCenter('healthBar', 'x');
		setProperty('healthBar.y', 625);
		setObjectOrder('healthBar', getObjectOrder('healthBar') - 10)

		setProperty('healthbarBG.alpha', 0);
		scaleObject('healthBarBG', 0.001, 0.001);

		makeLuaSprite('tecBarWhite', 'bgs/coolHPBars/tecBarWhite', 500, 575);
		setLuaSpriteScrollFactor('tecBarWhite', 0, 0);
		setObjectOrder('tecBarWhite', getObjectOrder('healthBar') - 1)
		setObjectCamera('tecBarWhite', 'camHUD');
		scaleObject('tecBarWhite', 0.6, 0.6)
		screenCenter('tecBarWhite', 'x');
		setProperty('tecBarWhite.alpha', 0)

		addLuaSprite('tecBarWhite', false);

		makeLuaSprite('conBar', 'bgs/coolHPBars/conallBar', 500, 575);
		setLuaSpriteScrollFactor('conBar', 0, 0);
		setObjectOrder('conBar', getObjectOrder('healthBar') + 1)
		setObjectCamera('conBar', 'camHUD');
		scaleObject('conBar', 0.65, 0.65)
		screenCenter('conBar', 'x');

		addLuaSprite('conBar', false);

		makeLuaSprite('conTxt', 'bgs/coolHPBars/conallText', 500, 575);
		setLuaSpriteScrollFactor('conTxt', 0, 0);
		setObjectOrder('conTxt', getObjectOrder('conBar') + 1)
		setObjectCamera('conTxt', 'camHUD');
		scaleObject('conTxt', 0.5, 0.5)
		screenCenter('conTxt', 'x');

		addLuaSprite('conTxt', false);

		makeLuaSprite('tecBarBlack', 'bgs/coolHPBars/tecBarBlack', 500, 575);
		setLuaSpriteScrollFactor('tecBarBlack', 0, 0);
		setObjectOrder('tecBarBlack', getObjectOrder('tecBar') - 1)
		setObjectCamera('tecBarBlack', 'camHUD');
		scaleObject('tecBarBlack', 0.6, 0.6)
		screenCenter('tecBarBlack', 'x');
		setProperty('tecBarBlack.alpha', 0)

		addLuaSprite('tecBarBlack', false);

		makeLuaSprite('tecBar', 'bgs/coolHPBars/techneBar', 500, 575);
		setLuaSpriteScrollFactor('tecBar', 0, 0);
		setObjectOrder('tecBar', getObjectOrder('conTxt') + 1)
		setObjectCamera('tecBar', 'camHUD');
		scaleObject('tecBar', 0.6, 0.6)
		screenCenter('tecBar', 'x');
		setProperty('tecBar.alpha', 0)

		addLuaSprite('tecBar', false);

		makeLuaSprite('tecTxt', 'bgs/coolHPBars/techneText', 500, 550);
		setLuaSpriteScrollFactor('tecTxt', 0, 0);
		setObjectOrder('tecTxt', getObjectOrder('tecBar') + 1)
		setObjectCamera('tecTxt', 'camHUD');
		scaleObject('tecTxt', 0.55, 0.55)
		screenCenter('tecTxt', 'x');
		setProperty('tecTxt.alpha', 0)

		addLuaSprite('tecTxt', false);

	end

	if downscroll == true then
		
		setGraphicSize('healthBar', 600, 40);
		screenCenter('healthBar', 'x');
		setProperty('healthBar.y', 60);
		setObjectOrder('healthBar', getObjectOrder('healthBar') - 10)

		setProperty('healthbarBG.alpha', 0);
		scaleObject('healthBarBG', 0.001, 0.001);

		makeLuaSprite('tecBarWhite', 'bgs/coolHPBars/tecBarWhite', 500, 12.5);
		setLuaSpriteScrollFactor('tecBarWhite', 0, 0);
		setObjectOrder('tecBarWhite', getObjectOrder('healthBar') - 1)
		setObjectCamera('tecBarWhite', 'camHUD');
		scaleObject('tecBarWhite', 0.6, 0.6)
		screenCenter('tecBarWhite', 'x');
		setProperty('tecBarWhite.alpha', 0)

		addLuaSprite('tecBarWhite', false);

		makeLuaSprite('conBar', 'bgs/coolHPBars/conallBar', 500, 0);
		setLuaSpriteScrollFactor('conBar', 0, 0);
		setObjectOrder('conBar', getObjectOrder('healthBar') + 1)
		setObjectCamera('conBar', 'camHUD');
		scaleObject('conBar', 0.65, 0.65)
		screenCenter('conBar', 'x');

		addLuaSprite('conBar', false);

		makeLuaSprite('conTxt', 'bgs/coolHPBars/conallText', 500, 125);
		setLuaSpriteScrollFactor('conTxt', 0, 0);
		setObjectOrder('conTxt', getObjectOrder('conBar') + 1)
		setObjectCamera('conTxt', 'camHUD');
		scaleObject('conTxt', 0.5, 0.5)
		screenCenter('conTxt', 'x');

		addLuaSprite('conTxt', false);

		makeLuaSprite('tecBarBlack', 'bgs/coolHPBars/tecBarBlack', 500, 12.5);
		setLuaSpriteScrollFactor('tecBarBlack', 0, 0);
		setObjectOrder('tecBarBlack', getObjectOrder('tecBar') - 1)
		setObjectCamera('tecBarBlack', 'camHUD');
		scaleObject('tecBarBlack', 0.6, 0.6)
		screenCenter('tecBarBlack', 'x');
		setProperty('tecBarBlack.alpha', 0)

		addLuaSprite('tecBarBlack', false);

		makeLuaSprite('tecBar', 'bgs/coolHPBars/techneBar', 500, 12.5);
		setLuaSpriteScrollFactor('tecBar', 0, 0);
		setObjectOrder('tecBar', getObjectOrder('conTxt') + 1)
		setObjectCamera('tecBar', 'camHUD');
		scaleObject('tecBar', 0.6, 0.6)
		screenCenter('tecBar', 'x');
		setProperty('tecBar.alpha', 0)

		addLuaSprite('tecBar', false);

		makeLuaSprite('tecTxt', 'bgs/coolHPBars/techneText', 500, 125);
		setLuaSpriteScrollFactor('tecTxt', 0, 0);
		setObjectOrder('tecTxt', getObjectOrder('tecBar') + 1)
		setObjectCamera('tecTxt', 'camHUD');
		scaleObject('tecTxt', 0.55, 0.55)
		screenCenter('tecTxt', 'x');
		setProperty('tecTxt.alpha', 0)

		addLuaSprite('tecTxt', false);

	end

end

function onBeatHit()

	if curBeat == 36 then
		
		doTweenAlpha('byeHP', 'healthBar', 0, 1, 'quadIn')
		doTweenAlpha('byeCon', 'conBar', 0, 1, 'quadIn')
		doTweenAlpha('byeCon2', 'conTxt', 0, 1, 'quadIn')
		doTweenAlpha('hiTec', 'tecBarWhite', 1, 1, 'quadIn')

	end

	if curBeat == 40 then
		
		doTweenAlpha('hiHP', 'healthBar', 1, 0.25, 'quadOut')
		doTweenAlpha('byeConAgain', 'tecBarWhite', 0, 0.25, 'quadOut')
		doTweenAlpha('byeConAgain2', 'conBar', 0, 0.25, 'quadOut')
		doTweenAlpha('hiTecAgain', 'tecBar', 1, 0.25, 'quadOut')
		doTweenAlpha('hiTecAgain2', 'tecTxt', 1, 0.25, 'quadOut')
		doTweenAlpha('hiTecAgain3', 'tecBarBlack', 1, 0.25, 'quadOut')

	end

	if curBeat == 316 then
		
		setProperty('tecBar.alpha', 0)
		setProperty('tecTxt.alpha', 0)
		setProperty('tecBarBlack.alpha', 0)
		setProperty('healthBar.alpha', 0)

	end

	if curBeat == 448 then
		
		setProperty('tecBar.alpha', 1)
		setProperty('tecTxt.alpha', 1)
		setProperty('tecBarBlack.alpha', 1)
		setProperty('healthBar.alpha', 1)

	end

	if curBeat == 548 then
		
		doTweenY('tecTxtY', 'tecTxt', 300, 3, 'quadOut')
		setProperty('tecBar.alpha', 0)
		setProperty('tecBarBlack.alpha', 0)
		setProperty('healthBar.alpha', 0)

	end

	if curBeat == 564 then

		doTweenX('tecTxtHoro', 'tecTxt.scale', 0.0001, 0.5)
		doTweenY('tecTxtUp', 'tecTxt.scale', 0.0001, 0.5)

	end

end

function onStepHit()

	if curBeat >= 40 and curBeat < 548 then
		
		if curStep % 16 == 0 then

			runTimer('ting', 0.05)
            doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenX('tecTxtHoro', 'tecTxt.scale', 0.7, 0.05)
			doTweenY('tecTxtUp', 'tecTxt.scale', 0.7, 0.05)

        end

        if curStep % 16 == 4 then

			runTimer('ting', 0.05)
			doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenX('tecTxtHoro', 'tecTxt.scale', 0.7, 0.05)
			doTweenY('tecTxtUp', 'tecTxt.scale', 0.7, 0.05)

        end

        if curStep % 16 == 8 then

			runTimer('ting', 0.05)
            doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenX('tecTxtHoro', 'tecTxt.scale', 0.7, 0.05)
			doTweenY('tecTxtUp', 'tecTxt.scale', 0.7, 0.05)

        end

        if curStep % 16 == 11 then

			runTimer('ting', 0.05)
			doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenX('tecTxtHoro', 'tecTxt.scale', 0.7, 0.05)
			doTweenY('tecTxtUp', 'tecTxt.scale', 0.7, 0.05)

        end

        if curStep % 16 == 14 then

			runTimer('ting', 0.05)
			doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.65, 0.05)
			doTweenX('tecTxtHoro', 'tecTxt.scale', 0.7, 0.05)
			doTweenY('tecTxtUp', 'tecTxt.scale', 0.7, 0.05)
			

        end

	end

end
function onTimerCompleted(tag, loops, loopsleft)

	if tag == 'ting' then
		
		doTweenX('tecBarBlackHoro', 'tecBarBlack.scale', 0.6, 0.4)
		doTweenY('tecBarBlackUp', 'tecBarBlack.scale', 0.6, 0.4)
		doTweenX('tecTxtHoro', 'tecTxt.scale', 0.55, 0.4)
		doTweenY('tecTxtUp', 'tecTxt.scale', 0.55, 0.4)

	end

end