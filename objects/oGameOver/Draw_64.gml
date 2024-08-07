if (game_over_displayed) {
    draw_set_font(fnt_8bit); // Use the 8-bit font you imported
    draw_set_color(c_white); // Set text color to white

    // Draw "Game Over" text
    var text_width = string_width("Game Over");
    var text_height = string_height("Game Over");
    draw_text(room_width / 2 - text_width / 2, room_height / 2 - text_height / 2 - 20, "Game Over");

    // Draw final score
    text_width = string_width("Final Score: " + string(score_final));
    draw_text(room_width / 2 - text_width / 2, room_height / 2 - text_height / 2 + 20, "Final Score: " + string(score_final));

    // Draw "Press R to Restart" prompt
    text_width = string_width("Press R to Restart");
    draw_text(room_width / 2 - text_width / 2, room_height / 2 - text_height / 2 + 60, "Press R to Restart");
}
