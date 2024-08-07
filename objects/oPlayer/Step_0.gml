// Step Event of oPlayer

// Check if the game is in the "playing" state
if (global.game_state == "playing") {
    // Check for movement using WASD keys
    if (keyboard_check(ord("W"))) {
        motion_add(image_angle, acceleration); // Move forward
    }

    if (keyboard_check(ord("S"))) {
        motion_add(image_angle + 180, acceleration); // Move backward (opposite direction)
    }

    if (keyboard_check(ord("A"))) {
        image_angle += 4; // Turn left
    }

    if (keyboard_check(ord("D"))) {
        image_angle -= 4; // Turn right
    }

    // Check for shooting using the space bar
    if (keyboard_check_pressed(vk_space)) {
        instance_create_layer(x, y, "Instances", oBullet); // Create a bullet
    }

    // Implement deceleration when no key is pressed
    if (!keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
        if (speed > 0) {
            speed = max(0, speed - deceleration); // Reduce speed gradually
        }
    }

    // Wrap the player around the screen
    move_wrap(true, true, 0);

    // Check for returning to the main menu
    if (keyboard_check_pressed(ord("M"))) {
        global.game_state = "main_menu"; // Set game state to main menu
        audio_stop_sound(snd_theme); // Stop the theme music if playing
        room_goto(oMainMenu); // Replace `oMainMenuRoom` with the name of your main menu room
    }

} else if (global.game_state == "game_over") {
    // Stop player movement
    speed = 0; // Ensure player stops moving

    // Handle input for restarting
    if (keyboard_check_pressed(ord("R"))) {
        // Reset the game state
        global.game_state = "playing"; // Set the game state back to playing

        // Restart the room
        room_restart(); // Restart the room to reset the game

        // Ensure player properties are reset
        speed = 0; // Reset speed
        image_angle = 0; // Reset image angle
    }
}
