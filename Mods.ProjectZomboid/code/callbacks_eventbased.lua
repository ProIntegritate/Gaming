-- A list of event specific callbacks.

local function fOnPlayerUpdate()
	-- This triggers CONSTANTLY, so be careful !!!
end

local function fOnZombieUpdate()
	-- This triggers CONSTANTLY, so be careful !!!
end

local function fOnZombieDead()
	-- Triggered when a zombie dies
end

local function fOnWeaponSwing()
	-- Triggers when weapon is swinged/thrown
end

local function fOnHitZombie()
	-- Triggers when Zombie is hit
end

local function fNewHouse() 
	-- OnSeeNewRoom triggers (Several times) when the player sees a new house, NOT when entering a room!
end

Events.OnPlayerUpdate.Add(fOnPlayerUpdate)
Events.OnZombieUpdate.Add(fOnZombieUpdate)
Events.OnZombieDead.Add(fOnZombieDead)
Events.OnWeaponSwing.Add(fOnWeaponSwing)
Events.OnHitZombie.Add(fOnHitZombie)
Events.OnSeeNewRoom.Add(fNewHouse);
