# GStreamerProcessing4
Solution for "BaseSrc: [avfvideosrc0] : Internal data stream error" in Processing 4

Over the year (2023) I kept getting this error whenever I tried to use an external webcam with my MacBook Pro:

"BaseSrc: [avfvideosrc0] : Internal data stream error."

the solution I found was to set the device index as follows:

"pipeline:avfvideosrc device-index=1"


System
macOS Big Sur
Version 11.7.2
MacBook Pro: (Retina, 15-inch, Mid 2014)
Processor: 2.8 GHz Quad-Core Intel Core i7
Memory: 16 GB 1600 MHz DDR3
Graphics: NVIDIA GeForce GT 750M 2 GB Intel Iris Pro 1536 MB
Processing 4.3
