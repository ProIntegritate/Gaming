-- ProjectZomboid: How to play sounds in code.

local function fPlaySound()

	-- 1. Add a sound file to the mod like: ..\media\sound\TestSound.mp3

	-- 2. Add sound definition to a file in your mod like: ..\media\scripts\Sounds.txt
	
		--	sound TestSound {
		--	        category = CategoryName,
		--		loop = false,
		--		is3D = false,
		--	        clip {
		--			file = media/sound/TestSound.mp3,
		--			distanceMax = 800,
		--			reverbFactor = 0.1,
		--			volume = 1.0,
		--		}
		--	}

	-- 3. Now you can use Playsound to play sounds using SoundManager:
	-- getSoundManager():PlaySound("TestSound", false, 0);

  -- 4. Save this lua file to \media\lua\client\somefile.lua to make it trigger
end

Events.EveryHours.Add(fPlaySound);
