if (keyboard_check_pressed(vk_enter)) {
    global.game_state = "playing"; // Set the game state to playing
    audio_stop_sound(snd_menu); // Stop the menu music
    room_goto(Room1); // Replace 'Room1' with the name of your game room
}
