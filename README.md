# GStreamerProcessing4
Solution for "BaseSrc: [avfvideosrc0] : Internal data stream error" in Processing 4 GStreamer USB Webcam 

<p>
Over the year (2023) I kept getting this error whenever I tried to use an external webcam with my MacBook Pro:
</br>
"BaseSrc: [avfvideosrc0] : Internal data stream error."
</br>
the solution I found was to set the device name as:
</br>
"pipeline:avfvideosrc device-index=1"
</br>
where device-index is the index of your camera. 
</br>
Posting this here to hopefully save someone hours of trying to find a solution.  
</br>
</br>
System</br>
macOS Big Sur</br>
Version 11.7.2</br>
MacBook Pro: (Retina, 15-inch, Mid 2014)</br>
Processor: 2.8 GHz Quad-Core Intel Core i7</br>
Memory: 16 GB 1600 MHz DDR3</br>
Graphics: NVIDIA GeForce GT 750M 2 GB Intel Iris Pro 1536 MB</br>
Processing 4.3</br>
Camera: Logitech 1080
</p>

