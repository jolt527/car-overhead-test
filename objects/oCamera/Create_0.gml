// Source video for creating this camera object:
// https://www.youtube.com/watch?v=_g1LQ6aIJFk

// Be sure to evenly divide the most common display resolution (1080p).
viewWidth = 1920 / 6;
viewHeight = 1080 / 6;

windowScale = 3;

// Window centering needs to happen one step after the setting of the window size,
// otherwise the new window size will not be taken into account after centering the window.
window_set_size(viewWidth * windowScale, viewHeight * windowScale);
alarm[0] = 1;

// The application surface controls how much the pixels in the window we're actually using.
// Increasing this resolution will make rotations and scrolling smoother.
// We're also going to match the application surface resolution to that of the window
// instead of that of the view here.
surface_resize(application_surface, viewWidth * windowScale, viewHeight * windowScale);

display_set_gui_size(viewWidth, viewHeight);

window_set_fullscreen(true);
