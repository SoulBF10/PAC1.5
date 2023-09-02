
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bgs/crack/room', 0, 0);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 0.5, 0.5);
	
	makeLuaSprite('couch', 'bgs/crack/couch', 0, 0);
	setScrollFactor('couch', 1, 1);
	scaleObject('couch', 0.5, 0.5);

	makeLuaSprite('bed', 'bgs/crack/bed', 0, 0);
	setScrollFactor('bed', 1, 1);
	scaleObject('bed', 0.5, 0.5);

	makeAnimatedLuaSprite('guy', 'tipo_2', 375, 525);
	addAnimationByPrefix('guy', 'idle', 'idle', 24, true);
	scaleObject('guy', 0.45, 0.45);
	setScrollFactor('guy', 1, 1);

	addLuaSprite('bg', false);
	addLuaSprite('couch', false);
	addLuaSprite('guy', true);
	addLuaSprite('bed', true);

	close(true);
end