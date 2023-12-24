scr_getinput();

sprite_index = s_idle;

if (pressSpace) {
    state = turtleState.attack;
} else if (pressLeft or pressRight) {
    state = turtleState.run;
} else if (pressUp and jumpCounter < jumpMax) {
    moveY = -11;
    jumpCounter++;
    state = turtleState.jump;
}

moveX = 0;
