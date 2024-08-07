// oMainMenuScreen Draw GUI Event

draw_set_font(fnt_8bit); // Use the same font as in the game

// Draw Title
draw_set_color(c_gray); // Set title color to gray
var title_text = "Space Rocks";
var title_width = string_width(title_text);
var title_height = string_height(title_text);
draw_text(room_width / 2 - title_width / 2, room_height / 2 - title_height / 2 - 80, title_text); // Draw title

// Draw Controls
draw_set_color(c_gray); // Set color for controls
var controls_text = "Controls:\nW - Up\nA - Left\nS - Down\nD - Right\nSpace - Shoot\nR - Restart\nM - Menu";
var controls_width = string_width(controls_text);
var controls_height = string_height(controls_text);
draw_text(room_width / 2 - controls_width / 2, room_height / 2 + 10, controls_text); // Draw controls

// Draw "Press Enter to Start" prompt
draw_set_color(c_gray); // Set color for prompt
var prompt_text = "Press Enter to Start";
var prompt_width = string_width(prompt_text);
var prompt_height = string_height(prompt_text);

// Calculate additional space for 5 lines of text
var extra_space = 5 * string_height(controls_text) / 6; // Approximate height for 5 lines

draw_text(room_width / 2 - prompt_width / 2, room_height / 2 + controls_height / 2 + extra_space + 20, prompt_text); // Draw prompt
