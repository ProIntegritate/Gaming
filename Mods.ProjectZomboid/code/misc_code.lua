
	-- ******** Get Random numbers ********
	n = ZombRand(3); -- Will assign a number between 0 and 2 to n.
	if n == 0 then
		-- do stuff if n = 0.
	end
	-- etc...


	-- ******** Show text on screen (above character) ********
	getPlayer():addLineChatElement("Hello world!", 0.6 , 0.7 , 0.1); -- text + r g b values


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
	getFileWriter([string] filename, [bool] createIfNotExists, [bool] append)
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


	-- ******** Add an item to the players inventory ********
	local inventory = getPlayer():getInventory();
	inventory:AddItem("Base.Crowbar");

