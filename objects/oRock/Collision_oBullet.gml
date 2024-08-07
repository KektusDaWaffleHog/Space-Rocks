// Collision Event with oRock

// Update the score when hitting a rock
global.score += 50; // Increase score by 50
oGame.points = global.score; // Update oGame's points
// Play explosion sound and create visual effects
audio_play_sound(snd_explosion, 1, false);
effect_create_above(ef_explosion, x, y, 1, c_white);

// Change rock sprite and handle rock destruction
direction = random(360); // Set a random direction for effects

if (sprite_index == spr_rock_big) {
    sprite_index = spr_rock_small;
    instance_copy(true); // Copy the rock instance if it's big
} else if (instance_number(oRock) < 12) {
    sprite_index = spr_rock_big;
    x = -100; // Move rock off-screen for respawning
} else {
    instance_destroy(); // Destroy the rock if no more are needed
}
