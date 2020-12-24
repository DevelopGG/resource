dofile(GetResPath("script/datafile.lua"))
print("-------------------------------")
print("-    Registering DataFile     -")

file_exists = file_exists or function(name)
	local f = io.open(name,"r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end
print("-    Registering file_exist   -")

AdjustTextSpace = AdjustTextSpace or function(Text, Spaces, End)
	local Count = math.floor((Spaces - string.len(Text)) * 0.5)
	local Message = ""
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	Message = Message..Text
	Count = math.floor(Spaces - string.len(Message))
	for C = 1, Count, 1 do
		Message = Message.." "
	end
	if End ~= nil then
		Message = Message..End
	end
	return Message
end	
print("- Registering AdjustTextSpace -")		
print("-------------------------------")		