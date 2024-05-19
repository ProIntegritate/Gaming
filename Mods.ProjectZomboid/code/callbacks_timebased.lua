-- A list of time specific triggered callbacks.

local function fDaily()
	-- This will trigger daily.
end

local function fDawn()
	-- This will trigger at dawn (undefined time, no documentation).
end

local function fDusk()
	-- This will trigger at dusk (undefined time, no documentation).
end

local function fHourly()
	-- This will trigger every ingame hour.
end

local function fEvery10Minutes()
	-- This will trigger every 10 ingame minutes.
end

local function fEveryMinute()
	-- This will trigger every ingame minute.
end

Events.EveryDays.Add(fDaily);
Events.OnDawn.Add(fDawn);
Events.OnDusk.Add(fDusk);
Events.EveryHours.Add(fHourly);
Events.EveryTenMinutes.Add(fEvery10Minutes);
Events.EveryOneMinute.Add(fEveryMinute);
