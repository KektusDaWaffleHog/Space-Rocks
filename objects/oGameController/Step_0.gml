// Check for game over condition
if (!instance_exists(oPlayer)) {
    global.game_state = "game_over";

    // Ensure the game over screen is created only once
    if (!instance_exists(oGameOver)) {
        instance_create_layer(room_width / 2, room_height / 2, "UI", oGameOver);
    }
}
