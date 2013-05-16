Scalable video coding for Max/MSP/Jitter 
using SPIHT without arithmetic coding for MacOS

Ivan V. Bajic and Xiaonan Ma
Multimedia Communications Lab, Simon Fraser University
ibajic@ensc.sfu.ca, xma2@sfu.ca

Version 1.1
2009/11/04


Files included:
mcl.jit.spihtbinenc.mxo - encoder
mcl.jit.spihtbindec.mxo - decoder
spihtbin_enc_dec.maxpat - encoder/decoder demo patch
mac_send_binenc.maxpat  - encoder+sender demo patch
mac_recv_bindec.maxpat  - receiver+decoder demo patch


The demo patch shows how to use encoder and decoder. The coding bitrate
(in bits per pixel, or bpp) can be set in the range 0.04 to 4 bpp. For
640x480 video, 0.7 bpp should be enough for reasonably high quality. For
320x240 video, around 1.4 bpp should be enough. Note that the bitrate 
needs to be input as the message to both encoder and decoder, as shown 
in the patch.

If encoder and decoder are run on different machines (encoder at transmitter, 
decoder at receiver, for example), the frame rate will be roughly twice that
shown in the patch, provided there is enough bandwidth in the communication
link.

The output bitrate in bits per second (bps) can be computed as:

R = (frame size)*(coding bitrate in bpp)*(frame rate in fps)

For example, if the frame size is 640x480, coding bitrate is 0.5 bpp and frame
rate is 10 fps, the output bitrate in bits per second will be
R = 640*480*0.5*10 = 1536000 bps or ~1.5 Mbps.

The sender and receiver demo patches (win_send_binenc.maxpat and 
win_recv_bindec.maxpat) are similar to the two patches from Ref. 1. They show
how encoded video can be sent from one computer to another via an IP network.


References:

1. I. V. Bajic and X. Ma, "Scalable video coding for telepresence in the performing 
arts," IEEE ComSoc MMTC E-Letter, vol. 4, no. 8, pp. 28-30, Sep. 2009.

2. A. Said and W.A. Pearlman, "A New Fast and Efficient Image Codec Based on Set 
Partitioning in Hierarchical Trees," IEEE Trans. on Circuits and Systems for Video 
Technology, vol. 6., pp. 243--250, June 1996.  