// Create Event of oAudioController

// Check if music is already playing
if (!audio_is_playing(snd_theme)) {
    audio_play_sound(snd_theme, 1, true); // Play the theme music with looping
}
