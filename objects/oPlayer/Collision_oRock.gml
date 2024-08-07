if (global.game_state == "playing") {
    effect_create_above(ef_firework, x, y, 1, c_white);
    audio_play_sound(snd_explosion_player, 1, false); // Play explosion sound
    audio_stop_sound(snd_theme);

    // Destroy the rock
    instance_destroy();

    // Update global score variable
    if (instance_exists(oGame)) {
        global.score = oGame.points; // Ensure oGame is the correct instance
    } else {
        global.score = 0; // Default value if oGame does not exist
    }

    // Change game state to "game_over"
    global.game_state = "game_over";

    // Remove any existing oGameOver instances to avoid duplicates
    with (oGameOver) {
        instance_destroy();
    }

    // Create the game over screen on the "UI" layer
    if (layer_exists("UI")) {
        instance_create_layer(room_width / 2, room_height / 2, "UI", oGameOver);
    } else {
        // Fallback if "UI" layer does not exist
        instance_create_layer(room_width / 2, room_height / 2, "Instances", oGameOver);
    }
}
