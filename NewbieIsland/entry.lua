function config_entry(entry) 
   

end 

function after_create_entry(entry) 
   
    

end



function after_player_login_NewbieIsland(entry, player_name)
  
end

function check_can_pk_NewbieIsland( role, copy_mgr )
	if Lv(role) < 60 then
		return 0
     MapCanPK(map, 0) 
    MapType( map , 0 )
	end
end