scr_getinput();

sprite_index = s_jump; //doi hinh anh thanh jump


// Idle when collision ground
if (place_meeting(x, y + moveY, obj_ground)) //neu sap va cham mat dat
{
    repeat(abs(moveY)) //lap lai tung pixel cho chinh xac
    {
        if (not place_meeting(x, y + sign(moveY), obj_ground))
        {
            y += sign(moveY);
        }
        break;
    }
    state = turtleState.idle;
}
// Movement on the air
if (pressSpace) {
    state = turtleState.attack;
}

if (pressRight) {
    moveX = spd - 1;
    if (pressSpace) {
    state = turtleState.attack;
    }
} 

if (pressUp and jumpCounter < jumpMax) {
    moveY = -11;
    jumpCounter++;
    state = turtleState.jump;
}

if (pressLeft) {
    moveX = -(spd -1);
    if (pressSpace) {
    state = turtleState.attack;
    }
}
