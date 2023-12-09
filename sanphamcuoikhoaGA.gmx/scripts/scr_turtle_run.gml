scr_getinput();

sprite_index = s_run; //doi sprite run

moveX = (pressRight - pressLeft) * spd; //di chuyen voi moveX don vi

if (pressLeft + pressRight == 0) { //neu khong nhan phim nao thi dung yen
    state = turtleState.idle;
}

if (pressUp) { //neu dang nhan phim len, nhay len tren 10 don vi
    moveX = 0;
    moveY = -10;
    state = turtleState.jump; //set trang thai nhay
}

if (pressSpace) { //an phim danh
    state = turtleState.attack; //chuyen trang thai danh
}

if (pressShift) {
    state = turtleState.roll;
}
