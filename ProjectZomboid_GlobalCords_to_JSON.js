//JS Script to convert Project Zomboid Global X, Y, Z coordinates into

// Ebter your coordinates below:
var x = 12773;
var y = 1289;
var z = 3812;

cellx = parseInt( x / 300);
celly = parseInt( y / 300);
localx = x - (cellx * 300);
localy = y - (celly * 300);
if (z > 7) z = 0; // default junk Z height from map.projectzomboid.com, which should be ignored.

// Log to console
console.log("Cell X = " + cellx);
console.log("Cell Y = " + celly);
console.log("Local X = " + localx);
console.log("Local Y = " + localy);
console.log("Height Z = " + z);
console.log("");
console.log("-> Proper start location JSON entity:")
console.log("{ worldX = " + cellx + ", worldY = " + celly + ", posX = " + localx + ", posY = " + localy + ", posZ = " + z + " },")
