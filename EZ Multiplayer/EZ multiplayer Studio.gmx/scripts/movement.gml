if (keyboard_check(vk_up)){
    net_client_send(3,1,NET_STRING, "up");
    
} else {
    net_client_send(3,1,NET_STRING, "stop");
}
if (keyboard_check(vk_right)){
    net_client_send(4,1,NET_STRING,"right");
} else {
    net_client_send(4,1,NET_STRING, "stop");
}
if (keyboard_check(vk_left)){
    net_client_send(5,1,NET_STRING,"left");
} else {
    net_client_send(5,1,NET_STRING, "stop");
}
if (keyboard_check(vk_down)){
    net_client_send(6,1,NET_STRING,"down");
} else {
    net_client_send(6,1,NET_STRING, "stop");
}
