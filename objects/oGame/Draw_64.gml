// Draw GUI Event of oGame
var max_score = 1000;
var score_color = c_white;
var shake_amount = 0;

// Update the score display color based on the score
if (global.score > max_score / 2) {
    score_color = c_red;
} else {
    score_color = make_color_hsv(0, 0, 255 - (255 * (global.score / max_score)));
}

// Calculate shake effect based on player presence
if (instance_exists(oPlayer)) {
    shake_amount = 0;
} else {
    shake_amount = 5; // Adjust shake effect
}

// Draw the updated score
draw_set_font(fnt_8bit); // Use the imported 8-bit font
draw_set_color(score_color);
draw_text(room_width / 2 + random_range(-shake_amount, shake_amount),
          10 + random_range(-shake_amount, shake_amount), 
          string(global.score));
