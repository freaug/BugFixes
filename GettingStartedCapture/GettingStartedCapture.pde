/**
 * Getting Started with Capture.
 *
 * Reading and displaying an image from an attached Capture device.
 */

import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } else if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);

    // The camera can be initialized directly using an element
    // from the array returned by list():

    /**
     These only work with the default camera on my computer
     cam = new Capture(this, cameras[1]);
     cam = new Capture(this, 640, 480, "HD Pro Webcam C920", 30);
     **/

    /**
     This was my solution, set device-index to whichever index your camera is from the Capture.list array
     **/
    cam = new Capture(this, "pipeline:avfvideosrc device-index=1");
  }

  // Start capturing the images from the camera
  cam.start();
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0, width, height);
  // The following does the same as the above image() line, but
  // is faster when just drawing the image without any additional
  // resizing, transformations, or tint.
  //set(0, 0, cam);
}
