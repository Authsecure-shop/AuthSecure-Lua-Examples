-- Import the AuthSecure module
local AuthSecure = require("authsecure")

-- Configuration variables
local name = "XD" -- Application name
local ownerid = "3ezshCmkXrn" -- Account ID
local secret = "7a8bfeb28afcd690812ee5de010a6860" -- Application secret
local version = "1.0" -- Application version



-- Initialize API with your config
AuthSecure.Api(name, ownerid, secret, version)

-- Start initialization
AuthSecure.Init()

-- CLI Menu
print("\n[1] Login\n[2] Register\n[3] License Login\n[4] Exit")
io.write("Choose option: ")
local choice = io.read()

-- Menu handler
if choice == "1" then
    io.write("Username: ") local username = io.read()
    io.write("Password: ") local password = io.read()
    AuthSecure.Login(username, password)

elseif choice == "2" then
    io.write("Username: ") local username = io.read()
    io.write("Password: ") local password = io.read()
    io.write("License: ") local license = io.read()
    AuthSecure.Register(username, password, license)

elseif choice == "3" then
    io.write("License: ") local license = io.read()
    AuthSecure.License(license)

else
    print("Goodbye!")
end
