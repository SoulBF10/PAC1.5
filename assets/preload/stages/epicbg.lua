function onCreate()
    makeLuaSprite('space', 'bgs/epic/Space', -1700, -900);
	setScrollFactor('space', 1, 1);
	scaleObject('space', 1.8, 1.8);

	makeLuaSprite('Epic Shader', 'bgs/epic/Epic_Overlay_Multiply', -550, -1200);
	setScrollFactor('Epic Shader', 1, 1);
	setObjectOrder('Epic Shader', 2)
	scaleObject('Epic Shader', 1.5, 1.5);
	setBlendMode('Epic Shader', 'multiply')

	makeLuaSprite('floor', 'bgs/epic/Floor', -800, 400);
	setScrollFactor('floor', 1, 1);
	setObjectOrder('floor', 2)
	scaleObject('floor', 1.7, 1.7);

	makeAnimatedLuaSprite('Ghosts_Reflection', 'bgs/epic/Ghosts_Reflection', -800, 950);
	addAnimationByPrefix('Ghosts_Reflection', 'Idle', 'Ghosts Reflection', 24, true);
	setObjectOrder('Ghosts_Reflection', 3)
	scaleObject('Ghosts_Reflection', 1.5, 1.5);
	setBlendMode('Ghosts_Reflection', 'add')
	setProperty('Ghosts_Reflection.alpha', 0.6)

	makeAnimatedLuaSprite('BG Ghosts', 'bgs/epic/BG Ghosts', -800, 380);
	addAnimationByPrefix('BG Ghosts', 'Idle', 'BG Ghosts', 24, true);
	setObjectOrder('BG Ghosts', 4)
	scaleObject('BG Ghosts', 1.5, 1.5);

	makeLuaSprite('Space Overlay', 'bgs/epic/Sapce_Overlay', -2100, -1700);
	setScrollFactor('Space Overlay', 1, 1);
	setObjectOrder('Space Overlay', 3)
	scaleObject('Space Overlay', 1.5, 1.5);
	setBlendMode('Space Overlay', 'multiply')

	makeLuaSprite('Floor Overlay', 'bgs/epic/Floor_Add', -2400, 600);
	scaleObject('Floor Overlay', 1.7, 1.7);
	setScrollFactor('Floor Overlay', 1, 1);
	setBlendMode('Floor Overlay', 'add')
	
	makeLuaSprite('glitch1', 'bgs/epic/glitch1', 0, -100);
	scaleObject('glitch1', 0.6, 0.6);
	setObjectCamera('glitch1', 'camHUD');

	makeLuaSprite('glitch2', 'bgs/epic/glitch2', 0, 0);
	scaleObject('glitch2', 0.6, 0.6);
	setObjectCamera('glitch2', 'camHUD');

	makeLuaSprite('glitch3', 'bgs/epic/glitch3', 0, 0);
	scaleObject('glitch3', 0.6, 0.6);
	setObjectCamera('glitch3', 'camHUD');

	makeLuaSprite('glitch4', 'bgs/epic/glitch4', 0, 0);
	scaleObject('glitch4', 0.6, 0.6);
	setObjectCamera('glitch4', 'camHUD');

	setProperty('glitch1.visible', false)
	setProperty('glitch2.visible', false)
	setProperty('glitch3.visible', false)
	setProperty('glitch4.visible', false)
	
	addLuaSprite('space', false);
	addLuaSprite('Epic Shader', false);
	addLuaSprite('floor', false);
	addLuaSprite('Ghosts_Reflection', false);
	addLuaSprite('BG Ghosts', false);
	addLuaSprite('Space Overlay', true);
	addLuaSprite('Floor Overlay', true);
	addLuaSprite('glitch1', true);
	addLuaSprite('glitch2', true);
	addLuaSprite('glitch3', true);
	addLuaSprite('glitch4', true);

	close(true);
end

function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('BG_Ghosts', 'Idle', false);
		playAnim('Ghosts_Reflection', 'Idle', false);
	end
end