local startSnowBalling = false
local randomSize = math.random(5, 50)

local blizzard = true
local chanceOfSnow = 1000
local velocity_bliz = {0, -2000}

local existingPixel = 0
local allSnow = {}

function onUpdatePost(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)
    if startSnowBalling and getRandomBool(chanceOfSnow) then
        existingPixel = existingPixel + 1
        randomSize = math.random(5, 50)
        table.insert(allSnow, existingPixel)
        makeLuaSprite('pixelParticles' .. existingPixel, 'bgs/giggad/pixel', -getProperty('camGame.width') / 2 * 1.2, getProperty('boyfriend.y') + 500)
        setProperty('pixelParticles' .. existingPixel .. '.x', getProperty('pixelParticles' .. existingPixel .. '.x') + getRandomInt(-100, 10000))
        setProperty('pixelParticles' .. existingPixel .. '.velocity.y', 500)
        setProperty('pixelParticles' .. existingPixel .. '.scale.x', randomSize)
        setProperty('pixelParticles' .. existingPixel .. '.scale.y', randomSize)
        setProperty('pixelParticles' .. existingPixel .. '.alpha', 0.5)
        setProperty('pixelParticles' .. existingPixel .. '.antialiasing', false)
        playAnim('pixelParticles' .. existingPixel, 'snow' .. getRandomInt(1, 6))
        addLuaSprite('pixelParticles' .. existingPixel, true)

        if not blizzard then
            if getRandomBool(50) then
                setProperty('pixelParticles' .. existingPixel .. '.velocity.x', 100)
            else
                setProperty('pixelParticles' .. existingPixel .. '.velocity.x', -100)
            end
        else
            setProperty('pixelParticles' .. existingPixel .. '.x', getProperty('pixelParticles' .. existingPixel .. '.x') + getRandomInt(-10000, 10000))
            setProperty('pixelParticles' .. existingPixel .. '.velocity.x', velocity_bliz[1] * math.cos((currentBeat2*0.2)*math.pi))
            setProperty('pixelParticles' .. existingPixel .. '.velocity.y', velocity_bliz[2])
        end
    end

    for i = 1, #allSnow do
        if luaSpriteExists('pixelParticles' .. allSnow[i]) then
            if getProperty('pixelParticles' .. allSnow[i] .. '.y') < getProperty('boyfriend.y') - 750 then
                removeLuaSprite('pixelParticles' .. allSnow[i], true) -- this method is insufficient! make existingPixel an array? (it probably is sufficient, i dont think so)
                --allSnow[i] = nil --breaks array
                table.remove(allSnow, 1)
                table.sort(allSnow)
            end
        end
    end
end

function onBeatHit()

    if curBeat == 108 then
        
        startSnowBalling = true

    end

    if curBeat == 172 then
        
        startSnowBalling = false

    end

    if curBeat == 480 then
        
        startSnowBalling = true

    end

    if curBeat == 548 then
        
        startSnowBalling = false

    end

end

function onEvent(eventName, value1, value2)
    if eventName == 'Enable Snow' then
        if not value1 or not value2 then
            value1 = 'false'
            value2 = 50
        end

        if value1 == 'true' then
            startSnowBalling = true
        elseif value1 == 'false' then
            startSnowBalling = false
        end

        chanceOfSnow = tonumber(value2)
    end

    if eventName == 'Snow Blizzard' then
        if not value1 or not value2 then
            value1 = 'false'
            value2 = '500, 500'
        end

        if value1 == 'true' then
            blizzard = true
        elseif value1 == 'false' then
            blizzard = false
        end

        if value2 then
            local splitValue2 = stringSplit(value2, ', ')
            velocity_bliz = {tonumber(splitValue2[1]), tonumber(splitValue2[2])}
        end
    end
end