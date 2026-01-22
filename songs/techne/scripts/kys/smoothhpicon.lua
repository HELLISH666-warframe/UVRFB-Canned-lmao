local frame = 150
local rae = 180
function onEvent(n,a,b)
  if n == 'Change Character' then

mal = getProperty('iconP1.animation.name')
mal2 = getProperty('iconP2.animation.name')
	makeAnimatedLuaSprite('simge1',nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
	loadGraphic('simge1','icons/'..mal, frame)
	addAnimation('simge1','icons/'..mal, {0, 1}, 0, true)
	addAnimation('simge1','icons/'..mal, {1, 0}, 0, true)
	setObjectCamera('simge1', 'hud')
	setObjectOrder('simge1', getObjectOrder('iconP1') + 1)

	addLuaSprite('simge1', true)

	makeAnimatedLuaSprite('simge2',nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('simge2','icons/'..mal2, frame)
	addAnimation('simge2','icons/'..mal2, {0, 1}, 0, true)
	addAnimation('simge2','icons/'..mal2, {1, 0}, 0, true)
	setObjectCamera('simge2', 'hud')
	setObjectOrder('simge2', getObjectOrder('iconP2') + 1)

	addLuaSprite('simge2', true)

end
end
    
function onSongStart()

mal = getProperty('iconP1.animation.name')
mal2 = getProperty('iconP2.animation.name')
	makeAnimatedLuaSprite('simge1',nil, getProperty('iconP1.x'), getProperty('iconP1.y'))
	loadGraphic('simge1','icons/'..mal, frame)
	addAnimation('simge1','icons/'..mal, {0, 1}, 0, true)
	addAnimation('simge1','icons/'..mal, {1, 0}, 0, true)
	setObjectCamera('simge1', 'hud')
	setObjectOrder('simge1', getObjectOrder('iconP1') + 1)

	addLuaSprite('simge1', true)

	makeAnimatedLuaSprite('simge2',nil, getProperty('iconP2.x'), getProperty('iconP2.y'))
	loadGraphic('simge2','icons/'..mal2, frame)
	addAnimation('simge2','icons/'..mal2, {0, 1}, 0, true)
	addAnimation('simge2','icons/'..mal2, {1, 0}, 0, true)
	setObjectCamera('simge2', 'hud')
	setObjectOrder('simge2', getObjectOrder('iconP2') + 1)

	addLuaSprite('simge2', true)

	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
end
function onUpdate()
	setProperty('simge1.flipX', true)
    doTweenX('simge1', 'simge1', getProperty('iconP1.x'), 0.1, 'linear')
    doTweenX('simge2', 'simge2', getProperty('iconP2.x'), 0.1, 'linear')


	if getProperty('health') > 1.6 then
		setProperty('simge2.animation.curAnim.curFrame', '1')
end
	if getProperty('health') < 1.6 then
		setProperty('simge2.animation.curAnim.curFrame', '0')
end
	if getProperty('health') < 0.4 then
		setProperty('simge1.animation.curAnim.curFrame', '1')
end
	if getProperty('health') > 0.4 then
		setProperty('simge1.animation.curAnim.curFrame', '0')
end
end

function onBeatHit()

	doTweenX('icix', 'simge1.scale', 1, crochet/1100, 'quadOut')
	doTweenY('iciy', 'simge1.scale', 1, crochet/1100, 'quadOut')
	doTweenX('icix2', 'simge2.scale', 1, crochet/1100, 'quadOut')
	doTweenY('iciy2', 'simge2.scale', 1, crochet/1100, 'quadOut')

	if curBeat %2 == 0 then

		setProperty('simge1.scale.x', 1.9)
		setProperty('simge1.scale.y', 1.5)
		setProperty('simge2.scale.x', 1.9)
		setProperty('simge2.scale.y', 1.5)

	end

	if curBeat %2 == 1 then

		setProperty('simge1.scale.x', 1.5)
		setProperty('simge1.scale.y', 1.9)
		setProperty('simge2.scale.x', 1.5)
		setProperty('simge2.scale.y', 1.9)

	end

end