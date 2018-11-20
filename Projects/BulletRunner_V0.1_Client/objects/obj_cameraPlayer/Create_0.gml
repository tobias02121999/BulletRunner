// Initialize the cameraPlayer variables
movementSpeed = 2;
lerpPercentage = .2;
distanceThreshold = 4;
image_xscale = 4;
image_yscale = 4;
cam = camera_create(); // Create a camera
camZoom = 1.25; // The lower the value, the greater the zoom
camWidth = 240 * camZoom;
camHeight = 135 * camZoom;

// Initialize the camera matrices
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(camWidth, camHeight, 1, 32000);

// Set the camera matrices 
camera_set_view_mat(cam, viewMatrix);
camera_set_proj_mat(cam, projectionMatrix);

// Set view 0 to use the created camera
view_camera[0] = cam;
