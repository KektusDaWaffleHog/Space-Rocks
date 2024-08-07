// Initialize global variables if they do not exist
if (!variable_global_exists("game_state")) {
    global.game_state = "main_menu"; // Set the default initial game state
}
if (!variable_global_exists("score")) {
    global.score = 0; // Initialize global score
}
