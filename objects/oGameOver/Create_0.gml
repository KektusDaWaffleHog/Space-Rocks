game_over_displayed = true; // Ensure the game over screen is displayed

// Access the points from the oGame instance or global score
if (instance_exists(oGame)) {
    score_final = oGame.points; // Get the points value from oGame
} else {
    score_final = global.score; // Fallback to global score variable
}
