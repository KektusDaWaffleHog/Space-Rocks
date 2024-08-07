if (keyboard_check_pressed(ord("R"))) {
    global.game_state = "playing"; // Set the game state back to playing
    room_restart(); // Restart the room to reset the game
}
