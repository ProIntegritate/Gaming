
	-- ******** Get Random numbers ********
	n = ZombRand(3); -- Will assign a number between 0 and 2 to n.
	if n == 0 then
		-- do stuff if n = 0.
	end
	-- etc...


	-- ******** Show text on screen (above character) ********
	getPlayer():addLineChatElement("Hello world!", 0.6 , 0.7 , 0.1); -- text + r g b values
	character:Say("This statement is said by the character"); -- This is for clientside mods as "character" is VERY clientside specific.


	-- ******** Get Player position in world ********
	local objPlayer = getPlayer();
	local playerX = math.floor(objPlayer:getX());	-- math.floor will make float -> int.
	local playerY = math.floor(objPlayer:getY());
	local playerZ = math.floor(objPlayer:getZ());

	-- Next line will get the players (steam) username into a string. Note that only strings can be shown on screen using addLineChatElement.
	local sUsername = "USERNAME:" .. objPlayer:getUsername();


	-- ******** Convert Integer value to string ********
  	local i = 4;
  	local stringValueOfFour = tostring(i);


	-- ******** Write (append) content to disk ********
	local sFilename = "log.txt";  -- Writes file to %USERPROFILE%\Zomboid\Lua\test.txt
	local writer = getFileWriter(sFilename, true, true);
	-- getFileWriter([string] filename, [bool] createIfNotExists, [bool] append)
	writer:write("This is some data i want to save.");
	writer:write("\n"); -- NOTE: Line breaks are NOT added to output, added manually.
	writer:close();


	-- ******** How to get Date and Time values ********
	-- Date
	local year = GameTime:getInstance():getYear();
	local month = GameTime:getInstance():getMonth() + 1;	-- Compensate for couting from zero
	local day = GameTime:getInstance():getDay() + 1;	-- Compensate for couting from zero

	-- Time
	local hour = GameTime:getInstance():getHour();
	local minute = GameTime:getInstance():getMinutes();
	
	-- Meta
	local dawn = GameTime:getInstance():getDawn();		-- Dawn hour, seem to be 12 (?)
	local dusk = GameTime:getInstance():getDusk();		-- Dush hour, seem to be 3 (?)

	-- System (Real world) time
	local sTimestamp = os.date("%Y-%m-%d %H:%M:%S"); 	-- format: YYYY-MM-DD HH:MM:SS


	-- ******** Add an item to the players inventory ********
	local inventory = getPlayer():getInventory();
	inventory:AddItem("Base.Crowbar");


	-- ******** exit the function using return ********
	if something == "bad" then
		return
	end


	-- ******** disable entire luascript file if clientside ********
	-- This should be put on the first line in the luascript file.	
	-- The reverse also works if you want to check for server.
	-- You just need one of these statements, so this is for demo purposes only.
	if not isServer() or isClient() then return end


	-- ******** Check if a variable is NOT like something ********
	-- if A != 0    or   if A == NOT 0   <- Stuff like this do not work.
	if intVar ~= 0 then
		-- This code will run if intVar is everything but 0.
	end
	-- you could do if A > 0 and A < 0, but that is just silly.


	-- ******** Number of days since world creation ********
	local daysSinceStart = math.floor(GameTime:getInstance():getWorldAgeHours() / 24);	-- Days since start.


