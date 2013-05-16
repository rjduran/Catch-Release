Scalable video coding for Max/MSP/Jitter 
using SPIHT with Region-Of-Interest (ROI) coding
and arithmetic coding for MacOS

Ivan V. Bajic and Xiaonan Ma
Multimedia Communications Lab, Simon Fraser University
ibajic@ensc.sfu.ca, xma2@sfu.ca

Version 1.0
2009/12/01


Files included:
mcl.jit.spihtROIaritenc.mxo - encoder
mcl.jit.spihtROIaritdec.mxo - decoder
SpihtROIarit.maxpat - encoder/decoder demo patch


The demo patch shows how to use encoder and decoder. In order to use ROI codec
together with face detection, you need to have cv.jit library installed on 
your system. Please see http://www.iamas.ac.jp/~jovan02/cv/

In the sub-patch called 'spiht' you can see the coordinates of the upper-left
and lower-right corner of the face region detected by cv.jit.faces. You can 
also set the total bitrate and the up-scale factor (called 'ROIscale') in this
subpatch. The decoded frames are displayed in the main patch.

The output bitrate in bits per second (bps) can be computed as:

R = (frame size)*(coding bitrate in bpp)*(frame rate in fps)

For example, if the frame size is 640x480, coding bitrate is 0.5 bpp and frame
rate is 10 fps, the output bitrate in bits per second will be
R = 640*480*0.5*10 = 1536000 bps or ~1.5 Mbps.



References:

1. I. V. Bajic and X. Ma, "MCL.JIT library for scalable live video 
in Max/MSP/Jitter," submitted to IEEE CCECE 2010, Sep. 2009.

2. A. Said and W.A. Pearlman, "A New Fast and Efficient Image Codec Based on Set 
Partitioning in Hierarchical Trees," IEEE Trans. on Circuits and Systems for Video 
Technology, vol. 6., pp. 243--250, June 1996.  