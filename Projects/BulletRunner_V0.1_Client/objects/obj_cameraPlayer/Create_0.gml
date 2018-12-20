// Initialize the cameraPlayer variables
movementSpeed = 2;
lerpPercentage = .2;
distanceThreshold = 4;
image_xscale = 3.85;
image_yscale = 3.85;
cam = camera_create(); // Create a camera
camZoom = 1; // The lower the value, the greater the zoom
camWidth = 300;
camHeight = 169;
gunSlotAlpha = 0;
gunSlotFadeSpeed = .04;
showWeaponReel = false;
mouseIsCentered = false;
shakeIntensity = 0;

// Initialize the camera matrices
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(camWidth * camZoom, camHeight * camZoom, 1, 32000);

// Set the camera matrices 
camera_set_view_mat(cam, viewMatrix);
camera_set_proj_mat(cam, projectionMatrix);

// Set view 0 to use the created camera
view_camera[0] = cam;
