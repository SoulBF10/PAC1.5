
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

--quiero pene >w<

function onCreate()
	-- background shit
	makeLuaSprite('ground', 'bgs/judger/ground', -500, -10);
	setScrollFactor('ground', 1, 1);
	setObjectOrder('ground', 3)
	scaleObject('ground', 1.5, 1.5);
	
	makeLuaSprite('glob', 'bgs/judger/water', -500, 0);
	setScrollFactor('glob', 1, 1);
	scaleObject('glob', 1.5, 1.5);

	makeLuaSprite('land', 'bgs/judger/land', -500, 0);
	setScrollFactor('land', 1, 1);
	scaleObject('land', 1.5, 1.5);

	makeLuaSprite('sword', 'bgs/judger/sword', -500, 0);
	setScrollFactor('sword', 1, 1);
	scaleObject('sword', 1.5, 1.5);

	makeLuaSprite('space', 'bgs/judger/space', -450, 0);
	setScrollFactor('space', 1, 1);
	scaleObject('space', 1.5, 1.5);

	makeLuaSprite('clouds', 'bgs/judger/clouds', -500, 0);
	setScrollFactor('clouds', 1, 1);
	scaleObject('clouds', 1.5, 1.5);
	
	makeAnimatedLuaSprite('anime', 'bgs/judger/anime', 0, 0);
	addAnimationByPrefix('anime', 'anime', 'anime', 24, true);
	scaleObject('anime', 1.0, 1.0);
	setObjectCamera('anime', 'camHUD');

	setProperty('anime.visible', false)

	addLuaSprite('space', false);
	addLuaSprite('glob', false);
	addLuaSprite('land', false);
	addLuaSprite('clouds', false);
	addLuaSprite('ground', false);
	addLuaSprite('sword', true);
	addLuaSprite('anime', true);

	close(true);
end