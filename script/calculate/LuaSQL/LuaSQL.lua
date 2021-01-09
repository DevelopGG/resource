print("***********Lua SQL************")
SQL_SUCCESS_WITH_INFO = 1
SQL_CONNECTION = {}
SQL_CONNECTION[1] = 
		{
		SQL_CONNECT	= 'connect',
		SQL_HOST	= "127.0.0.1",
		SQL_UID		= 'FlamingDemon',
		SQL_PWD		= '2020Graf2020'
		}
function CheckConnection()
	if LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD) == 1 then
		print("Connection successful!")
	else
		print("Connection failed!")
	end
end
CheckConnection()