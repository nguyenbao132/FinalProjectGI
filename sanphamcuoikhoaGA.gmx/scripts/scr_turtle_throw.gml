scr_getinput();


sprite_index = s_throw; //doi sprite
image_speed = 2;



counter += 1; //count 18 image
if counter == 11 { //sau khi xong het 18 imgage cua sprite
    //if (image_xscale > 0) { //neu nhu dang quay sang phai 
    //    instance_create(obj_turtle.x + 15, obj_turtle.y - 10, o_dealdmg);
    //} else if (image_xscale < 0) { //dang quay sang trai
    //    instance_create(obj_turtle.x - 45, obj_turtle.y - 10, o_dealdmg);
    //}
    
    counter = 0; //reset lai counter
    state = turtleState.idle; // quay ve trang thai dung yen
    image_speed = 1;
}
