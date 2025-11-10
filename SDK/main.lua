local AuthSecure = require("authsecure")

AuthSecure.Api(
    "XD",                     -- Application Name
    "3ezshCmkXrn",            -- Owner ID
    "7a8bfeb28afcd690812ee5de010a6860",  -- Secret
    "1.0"                     -- Version
)

AuthSecure.Init()

print("\n[1] Login\n[2] Register\n[3] License Login\n[4] Exit")
io.write("Choose option: ")
local choice = io.read()

if choice == "1" then
    io.write("Username: ") local u = io.read()
    io.write("Password: ") local p = io.read()
    AuthSecure.Login(u, p)
elseif choice == "2" then
    io.write("Username: ") local u = io.read()
    io.write("Password: ") local p = io.read()
    io.write("License: ") local l = io.read()
    AuthSecure.Register(u, p, l)
elseif choice == "3" then
    io.write("License: ") local l = io.read()
    AuthSecure.License(l)
else
    print("Goodbye!")
end
