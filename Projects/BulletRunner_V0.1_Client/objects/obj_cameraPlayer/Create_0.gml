// Initialize the cameraPlayer variables
movementSpeed = 2;
lerpPercentage = .2;
distanceThreshold = 4;
image_xscale = 3.85;
image_yscale = 3.85;
camZoom = 1; // The lower the value, the greater the zoom
camWidth = 300;
camHeight = 169;
camAngle = 0;
gunSlotAlpha = 0;
gunSlotFadeSpeed = .04;
showWeaponReel = false;
mouseIsCentered = false;
shakeIntensity = 0;
distortionIndex = 0;
countdown = 350;

// Initialize the camera matrices
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);

// Set the camera matrices 
camera_set_view_mat(view_camera[0], viewMatrix);
camera_set_view_angle(view_camera[0], camAngle);
camera_set_view_size(view_camera[0], camWidth * camZoom, camHeight * camZoom);
camera_set_view_pos(view_camera[0], (x - camWidth * camZoom) / 2, (y - camHeight * camZoom) / 2);
