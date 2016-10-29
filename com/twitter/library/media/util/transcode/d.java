package com.twitter.library.media.util.transcode;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.os.Build.VERSION;
import bbn;
import cfb;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.media.MediaUtils;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.r;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.o;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

@TargetApi(18)
/* compiled from: Twttr */
public class d {
    private static final AtomicInteger a;
    private volatile boolean b;
    private final String c;
    private long d;
    private long e;
    private Size f;
    private int g;
    private int h;
    private int i;
    private Size j;

    static {
        a = new AtomicInteger(0);
    }

    @TargetApi(21)
    private static void a(String str, String str2, String str3) throws IOException, TranscoderException {
        MediaMuxer mediaMuxer = new MediaMuxer(str3, 0);
        MediaExtractor mediaExtractor = new MediaExtractor();
        mediaExtractor.setDataSource(str2);
        int a = r.a(mediaExtractor, "audio/");
        if (a == -1) {
            throw new TranscoderException(false, "cannot find audio track", null);
        }
        mediaExtractor.selectTrack(a);
        int addTrack = mediaMuxer.addTrack(mediaExtractor.getTrackFormat(a));
        ByteBuffer allocate = ByteBuffer.allocate(600000);
        allocate.position(0);
        int readSampleData = mediaExtractor.readSampleData(allocate, 0);
        MediaExtractor mediaExtractor2 = new MediaExtractor();
        mediaExtractor2.setDataSource(str);
        a = r.a(mediaExtractor2, "video/");
        if (a == -1) {
            throw new TranscoderException(false, "cannot find video track", null);
        }
        ByteBuffer allocate2;
        mediaExtractor2.selectTrack(a);
        MediaFormat trackFormat = mediaExtractor2.getTrackFormat(a);
        int addTrack2 = mediaMuxer.addTrack(trackFormat);
        if (trackFormat.containsKey("max-input-size")) {
            allocate2 = ByteBuffer.allocate(trackFormat.getInteger("max-input-size"));
        } else {
            allocate2 = ByteBuffer.allocate(1000000);
        }
        allocate2.position(0);
        int readSampleData2 = mediaExtractor2.readSampleData(allocate2, 0);
        mediaMuxer.start();
        BufferInfo bufferInfo = new BufferInfo();
        while (true) {
            if (readSampleData == 0) {
                allocate.position(0);
                readSampleData = mediaExtractor.readSampleData(allocate, 0);
            } else if (readSampleData2 == 0) {
                allocate2.position(0);
                readSampleData2 = mediaExtractor2.readSampleData(allocate2, 0);
            }
            Object obj = readSampleData2 == -1 ? 1 : null;
            Object obj2 = readSampleData == -1 ? 1 : null;
            if (obj == null || obj2 == null) {
                int i;
                long sampleTime = mediaExtractor2.getSampleTime();
                long sampleTime2 = mediaExtractor.getSampleTime();
                if (obj != null || (obj2 == null && sampleTime >= sampleTime2)) {
                    bufferInfo.size = readSampleData;
                    bufferInfo.presentationTimeUs = sampleTime2;
                    if ((mediaExtractor.getSampleFlags() & 1) > 0) {
                        i = 1;
                        bufferInfo.flags = 1;
                    } else {
                        i = 0;
                    }
                    bufferInfo.flags = i;
                    allocate.position(0);
                    mediaMuxer.writeSampleData(addTrack, allocate, bufferInfo);
                    if (mediaExtractor.advance()) {
                        i = 0;
                    } else {
                        i = -1;
                    }
                    int i2 = readSampleData2;
                    readSampleData2 = i;
                    i = i2;
                } else {
                    bufferInfo.size = readSampleData2;
                    bufferInfo.presentationTimeUs = sampleTime;
                    if ((mediaExtractor2.getSampleFlags() & 1) > 0) {
                        i = 1;
                        bufferInfo.flags = 1;
                    } else {
                        i = 0;
                    }
                    bufferInfo.flags = i;
                    allocate2.position(0);
                    mediaMuxer.writeSampleData(addTrack2, allocate2, bufferInfo);
                    if (mediaExtractor2.advance()) {
                        i = 0;
                    } else {
                        i = -1;
                    }
                    readSampleData2 = readSampleData;
                }
                readSampleData = readSampleData2;
                readSampleData2 = i;
            } else {
                mediaMuxer.stop();
                mediaMuxer.release();
                mediaExtractor.release();
                mediaExtractor2.release();
                return;
            }
        }
    }

    public d(String str) {
        this.e = PtsTimestampAdjuster.DO_NOT_OFFSET;
        this.g = 3000000;
        this.h = 60;
        this.i = 1;
        this.c = str;
    }

    public d a(long j, long j2) {
        this.d = j;
        this.e = j + j2;
        return this;
    }

    public d a(Size size) {
        this.f = size;
        return this;
    }

    public d a(int i) {
        this.g = i;
        return this;
    }

    public d b(int i) {
        this.h = i;
        return this;
    }

    public Size a() {
        return this.j;
    }

    public File b() throws TranscoderException, InterruptedException {
        o e = PlatformContext.f().e();
        File a = e.a(MediaType.d.extension);
        if (a == null) {
            throw new TranscoderException(false, "cannot create temp video file", null);
        }
        File a2 = e.a("m4a");
        if (a2 == null) {
            throw new TranscoderException(false, "cannot create temp audio file", null);
        }
        Thread thread = new Thread(new f(this, a2), "transcodeThread-" + a.incrementAndGet());
        thread.start();
        a(a.getAbsolutePath());
        thread.join();
        if (!a2.exists() || a2.length() == 0) {
            a2.delete();
            return a;
        }
        File a3 = e.a(MediaType.d.extension);
        if (a3 == null) {
            throw new TranscoderException(false, "cannot create output video file", null);
        }
        try {
            a(a.getAbsolutePath(), a2.getAbsolutePath(), a3.getAbsolutePath());
            a2.delete();
            a.delete();
            return a3;
        } catch (Throwable e2) {
            throw new TranscoderException(false, "cannot combine video and audio", e2);
        } catch (Throwable th) {
            a2.delete();
            a.delete();
        }
    }

    private void a(String str) throws TranscoderException {
        Throwable e;
        MediaCodec mediaCodec = null;
        MediaCodec mediaCodec2 = null;
        b bVar = null;
        a aVar = null;
        MediaExtractor mediaExtractor;
        a aVar2;
        MediaCodec createDecoderByType;
        b bVar2;
        try {
            mediaExtractor = new MediaExtractor();
            try {
                mediaExtractor.setDataSource(this.c);
                int a = r.a(mediaExtractor, "video/");
                if (a < 0) {
                    throw new TranscoderException(true, "No video track found in " + this.c, null);
                }
                int i;
                mediaExtractor.selectTrack(a);
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(a);
                cfb.b("TextureTranscoder", "Input format " + trackFormat);
                if (trackFormat.containsKey("rotation-degrees")) {
                    trackFormat.setInteger("rotation-degrees", 0);
                }
                int integer = trackFormat.getInteger("width");
                int integer2 = trackFormat.getInteger("height");
                a = 0;
                if (trackFormat.containsKey("frame-rate")) {
                    try {
                        a = (int) trackFormat.getFloat("frame-rate");
                    } catch (ClassCastException e2) {
                        a = trackFormat.getInteger("frame-rate");
                    }
                }
                if (a == 0) {
                    i = 30;
                } else {
                    i = a;
                }
                h.b(i > 0);
                this.i = ((this.h + i) - 1) / this.h;
                if (this.e - this.d <= 0) {
                    throw new IllegalArgumentException("Duration can't be 0, end == start");
                }
                int i2;
                MediaFormat createVideoFormat;
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(this.c);
                a = 0;
                if (VERSION.SDK_INT >= 17) {
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
                    if (extractMetadata != null) {
                        a = Integer.valueOf(extractMetadata).intValue();
                    }
                    i2 = a;
                } else {
                    Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0);
                    if (integer == integer2 || integer2 != frameAtTime.getWidth()) {
                        i2 = 0;
                    } else {
                        i2 = 90;
                    }
                    frameAtTime.recycle();
                }
                mediaMetadataRetriever.release();
                Size a2 = Size.a(integer, integer2);
                if (this.f != null) {
                    int a3 = this.f.a();
                    int b = this.f.b();
                    float a4 = ((float) a2.c((integer > integer2 ? 1 : null) == (a3 > b ? 1 : null) ? this.f : Size.a(b, a3)).a()) / ((float) a2.a());
                    if (a4 < 1.0f) {
                        a2 = Size.a(MediaUtils.a(integer, a4), MediaUtils.a(integer2, a4));
                    }
                    this.j = a2;
                } else {
                    this.j = Size.a(integer, integer2);
                }
                if (i2 == 90 || i2 == 270) {
                    createVideoFormat = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, this.j.b(), this.j.a());
                } else {
                    createVideoFormat = MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, this.j.a(), this.j.b());
                }
                createVideoFormat.setInteger("color-format", 2130708361);
                createVideoFormat.setInteger("bitrate", this.g);
                createVideoFormat.setInteger("frame-rate", i / this.i);
                createVideoFormat.setInteger("i-frame-interval", 5);
                cfb.b("TextureTranscoder", "Output format " + createVideoFormat);
                mediaCodec2 = MediaCodec.createEncoderByType(MimeTypes.VIDEO_H264);
                mediaCodec2.configure(createVideoFormat, null, null, 1);
                aVar2 = new a(mediaCodec2.createInputSurface());
                try {
                    aVar2.b();
                    mediaCodec2.start();
                    createDecoderByType = MediaCodec.createDecoderByType(trackFormat.getString("mime"));
                } catch (IOException e3) {
                    e = e3;
                    createDecoderByType = null;
                    bVar2 = null;
                    try {
                        cfb.c("TextureTranscoder", "Error transcoding video", e);
                        bbn.a(e);
                        throw new TranscoderException(false, null, e);
                    } catch (Throwable th) {
                        e = th;
                        bVar = bVar2;
                        mediaCodec = createDecoderByType;
                        aVar = aVar2;
                        if (bVar != null) {
                            bVar.a();
                        }
                        if (aVar != null) {
                            aVar.a();
                        }
                        if (mediaCodec2 != null) {
                            try {
                                mediaCodec2.stop();
                            } catch (Exception e4) {
                            }
                            try {
                                mediaCodec2.release();
                            } catch (Exception e5) {
                            }
                        }
                        if (mediaCodec != null) {
                            try {
                                mediaCodec.stop();
                            } catch (Exception e6) {
                            }
                            try {
                                mediaCodec.release();
                            } catch (Exception e7) {
                            }
                        }
                        if (mediaExtractor != null) {
                            try {
                                mediaExtractor.release();
                            } catch (Exception e8) {
                            }
                        }
                        throw e;
                    }
                } catch (Throwable th2) {
                    e = th2;
                    aVar = aVar2;
                    if (bVar != null) {
                        bVar.a();
                    }
                    if (aVar != null) {
                        aVar.a();
                    }
                    if (mediaCodec2 != null) {
                        mediaCodec2.stop();
                        mediaCodec2.release();
                    }
                    if (mediaCodec != null) {
                        mediaCodec.stop();
                        mediaCodec.release();
                    }
                    if (mediaExtractor != null) {
                        mediaExtractor.release();
                    }
                    throw e;
                }
                try {
                    bVar2 = new b();
                    try {
                        bVar2.a("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n");
                        trackFormat.setInteger("width", this.j.a());
                        trackFormat.setInteger("height", this.j.b());
                        createDecoderByType.configure(trackFormat, bVar2.b(), null, 0);
                        createDecoderByType.start();
                        a(i2, mediaExtractor, createDecoderByType, bVar2, aVar2, mediaCodec2, new MediaMuxer(str, 0));
                        if (bVar2 != null) {
                            bVar2.a();
                        }
                        if (aVar2 != null) {
                            aVar2.a();
                        }
                        if (mediaCodec2 != null) {
                            try {
                                mediaCodec2.stop();
                            } catch (Exception e9) {
                            }
                            try {
                                mediaCodec2.release();
                            } catch (Exception e10) {
                            }
                        }
                        if (createDecoderByType != null) {
                            try {
                                createDecoderByType.stop();
                            } catch (Exception e11) {
                            }
                            try {
                                createDecoderByType.release();
                            } catch (Exception e12) {
                            }
                        }
                        if (mediaExtractor != null) {
                            try {
                                mediaExtractor.release();
                            } catch (Exception e13) {
                            }
                        }
                    } catch (IOException e14) {
                        e = e14;
                        cfb.c("TextureTranscoder", "Error transcoding video", e);
                        bbn.a(e);
                        throw new TranscoderException(false, null, e);
                    } catch (Throwable e15) {
                        TranscoderException transcoderException = new TranscoderException(true, "cannot configure decoder", e15);
                    }
                } catch (IOException e16) {
                    e15 = e16;
                    bVar2 = null;
                    cfb.c("TextureTranscoder", "Error transcoding video", e15);
                    bbn.a(e15);
                    throw new TranscoderException(false, null, e15);
                } catch (Throwable th3) {
                    e15 = th3;
                    mediaCodec = createDecoderByType;
                    aVar = aVar2;
                    if (bVar != null) {
                        bVar.a();
                    }
                    if (aVar != null) {
                        aVar.a();
                    }
                    if (mediaCodec2 != null) {
                        mediaCodec2.stop();
                        mediaCodec2.release();
                    }
                    if (mediaCodec != null) {
                        mediaCodec.stop();
                        mediaCodec.release();
                    }
                    if (mediaExtractor != null) {
                        mediaExtractor.release();
                    }
                    throw e15;
                }
            } catch (IOException e17) {
                e15 = e17;
                aVar2 = null;
                createDecoderByType = null;
                bVar2 = null;
                cfb.c("TextureTranscoder", "Error transcoding video", e15);
                bbn.a(e15);
                throw new TranscoderException(false, null, e15);
            } catch (Throwable th4) {
                e15 = th4;
                if (bVar != null) {
                    bVar.a();
                }
                if (aVar != null) {
                    aVar.a();
                }
                if (mediaCodec2 != null) {
                    mediaCodec2.stop();
                    mediaCodec2.release();
                }
                if (mediaCodec != null) {
                    mediaCodec.stop();
                    mediaCodec.release();
                }
                if (mediaExtractor != null) {
                    mediaExtractor.release();
                }
                throw e15;
            }
        } catch (IOException e18) {
            e15 = e18;
            aVar2 = null;
            mediaExtractor = null;
            createDecoderByType = null;
            bVar2 = null;
            cfb.c("TextureTranscoder", "Error transcoding video", e15);
            bbn.a(e15);
            throw new TranscoderException(false, null, e15);
        } catch (Throwable th5) {
            e15 = th5;
            mediaExtractor = null;
            if (bVar != null) {
                bVar.a();
            }
            if (aVar != null) {
                aVar.a();
            }
            if (mediaCodec2 != null) {
                mediaCodec2.stop();
                mediaCodec2.release();
            }
            if (mediaCodec != null) {
                mediaCodec.stop();
                mediaCodec.release();
            }
            if (mediaExtractor != null) {
                mediaExtractor.release();
            }
            throw e15;
        }
    }

    private void a(int i, MediaExtractor mediaExtractor, MediaCodec mediaCodec, b bVar, a aVar, MediaCodec mediaCodec2, MediaMuxer mediaMuxer) throws TranscoderException {
        Object iVar = new i(this, mediaExtractor, mediaCodec);
        Object hVar = new h(this, mediaCodec2, mediaMuxer, this.d);
        g gVar = new g(this, mediaCodec, bVar, aVar, mediaCodec2, i);
        try {
            mediaExtractor.seekTo(this.d, 0);
            new Thread(iVar, "doTranscodeThread-Extractor-" + a.incrementAndGet()).start();
            Thread thread = new Thread(hVar, "doTranscodeThread-Encoder-" + a.incrementAndGet());
            thread.start();
            gVar.run();
            thread.join();
            try {
                mediaMuxer.stop();
            } catch (Exception e) {
            }
            try {
                mediaMuxer.release();
            } catch (Exception e2) {
            }
            iVar.b();
            hVar.b();
            gVar.b();
        } catch (Throwable e3) {
            c();
            throw new TranscoderException(true, "interrupted", e3);
        } catch (Throwable th) {
            try {
                mediaMuxer.stop();
            } catch (Exception e4) {
            }
            try {
                mediaMuxer.release();
            } catch (Exception e5) {
            }
        }
    }

    public void c() {
        this.b = true;
    }
}
