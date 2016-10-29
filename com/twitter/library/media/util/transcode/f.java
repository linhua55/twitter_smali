package com.twitter.library.media.util.transcode;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import cfb;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.twitter.media.util.r;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: Twttr */
class f extends j {
    final /* synthetic */ d a;
    private final File c;

    f(d dVar, File file) {
        this.a = dVar;
        super(null);
        this.c = file;
    }

    void a() throws TranscoderException {
        Throwable th;
        long a = this.a.e + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
        MediaExtractor mediaExtractor = null;
        MediaCodec mediaCodec = null;
        MediaExtractor mediaExtractor2;
        try {
            mediaExtractor2 = new MediaExtractor();
            try {
                mediaExtractor2.setDataSource(this.a.c);
                int a2 = r.a(mediaExtractor2, "audio/");
                if (a2 < 0) {
                    this.c.delete();
                    if (mediaExtractor2 != null) {
                        try {
                            mediaExtractor2.release();
                        } catch (Exception e) {
                        }
                    }
                    if (mediaCodec != null) {
                        try {
                            mediaCodec.stop();
                        } catch (Exception e2) {
                        }
                        try {
                            mediaCodec.release();
                            return;
                        } catch (Exception e3) {
                            return;
                        }
                    }
                    return;
                }
                int integer;
                mediaExtractor2.selectTrack(a2);
                MediaFormat trackFormat = mediaExtractor2.getTrackFormat(a2);
                int integer2 = trackFormat.getInteger("channel-count");
                if (trackFormat.containsKey("sample-rate")) {
                    integer = trackFormat.getInteger("sample-rate");
                } else {
                    integer = -1;
                }
                if (integer < 0) {
                    throw new TranscoderException(true, "no sample rate", null);
                }
                MediaCodec createDecoderByType = MediaCodec.createDecoderByType(trackFormat.getString("mime"));
                try {
                    createDecoderByType.configure(trackFormat, null, null, 0);
                    createDecoderByType.start();
                    ByteBuffer[] inputBuffers = createDecoderByType.getInputBuffers();
                    ByteBuffer[] outputBuffers = createDecoderByType.getOutputBuffers();
                    BufferInfo bufferInfo = new BufferInfo();
                    int c = (int) (((a - this.a.d) * ((long) integer)) / C.MICROS_PER_SECOND);
                    Object obj = new byte[(c * 2)];
                    mediaExtractor2.seekTo(this.a.d, 0);
                    cfb.b("TextureTranscoder", "Audio transcode start at " + mediaExtractor2.getSampleFlags() + " desired start is " + this.a.d);
                    Object obj2 = null;
                    Object obj3 = null;
                    int i = 0;
                    Boolean valueOf = Boolean.valueOf(false);
                    int i2 = 0;
                    Object obj4 = null;
                    while (!this.a.b && obj3 == null && i < 50 && !valueOf.booleanValue()) {
                        int i3 = i + 1;
                        if (obj2 == null) {
                            int dequeueInputBuffer = createDecoderByType.dequeueInputBuffer(0);
                            int readSampleData;
                            if (dequeueInputBuffer >= 0) {
                                readSampleData = mediaExtractor2.readSampleData(inputBuffers[dequeueInputBuffer], 0);
                                long j = 0;
                                if (readSampleData < 0) {
                                    readSampleData = 0;
                                    obj2 = 1;
                                } else {
                                    j = mediaExtractor2.getSampleTime();
                                }
                                createDecoderByType.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, j, obj2 != null ? 4 : 0);
                                if (obj2 == null) {
                                    mediaExtractor2.advance();
                                    i = 0;
                                } else {
                                    i = 0;
                                }
                            } else {
                                int i4;
                                Object obj5;
                                ByteBuffer[] byteBufferArr;
                                Boolean bool;
                                ByteBuffer[] byteBufferArr2;
                                int dequeueOutputBuffer = createDecoderByType.dequeueOutputBuffer(bufferInfo, 0);
                                if (dequeueOutputBuffer >= 0) {
                                    Object obj6;
                                    Boolean valueOf2;
                                    int i5;
                                    if (bufferInfo.size > 0) {
                                        i4 = 0;
                                    } else {
                                        i4 = i3;
                                    }
                                    ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                                    if (obj4 == null || obj4.length < bufferInfo.size) {
                                        obj6 = new byte[bufferInfo.size];
                                    } else {
                                        obj6 = obj4;
                                    }
                                    byteBuffer.position(bufferInfo.offset);
                                    byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                                    byteBuffer.get(obj6, 0, bufferInfo.size);
                                    byteBuffer.clear();
                                    dequeueInputBuffer = integer2 * 2;
                                    long j2 = ((long) (i2 / 2)) + ((((long) (bufferInfo.size / dequeueInputBuffer)) * C.MICROS_PER_SECOND) / ((long) integer));
                                    if (bufferInfo.presentationTimeUs != 0) {
                                        if (j2 / bufferInfo.presentationTimeUs == 2) {
                                            integer2 *= 2;
                                            dequeueInputBuffer = integer2 * 2;
                                            cfb.b("TextureTranscoder", "Updated channel count to " + integer2);
                                        }
                                    }
                                    int i6 = integer2;
                                    integer2 = dequeueInputBuffer;
                                    if (bufferInfo.presentationTimeUs >= a) {
                                        valueOf2 = Boolean.valueOf(true);
                                        readSampleData = i2;
                                        i5 = c;
                                    } else {
                                        dequeueInputBuffer = bufferInfo.size / integer2;
                                        if (dequeueInputBuffer < c) {
                                            i5 = c - dequeueInputBuffer;
                                            c = dequeueInputBuffer;
                                            valueOf2 = valueOf;
                                        } else {
                                            valueOf2 = Boolean.valueOf(true);
                                            i5 = c;
                                        }
                                        if (i6 == 1) {
                                            dequeueInputBuffer = c * 2;
                                            System.arraycopy(obj6, 0, obj, i2, dequeueInputBuffer);
                                            readSampleData = i2 + dequeueInputBuffer;
                                        } else {
                                            readSampleData = i2;
                                            for (dequeueInputBuffer = 0; dequeueInputBuffer < c; dequeueInputBuffer++) {
                                                i2 = dequeueInputBuffer * integer2;
                                                i2 = (((obj6[i2 + 3] << 8) | (obj6[i2 + 2] & NalUnitUtil.EXTENDED_SAR)) + ((obj6[i2] & NalUnitUtil.EXTENDED_SAR) | (obj6[i2 + 1] << 8))) / 2;
                                                int i7 = readSampleData + 1;
                                                obj[readSampleData] = (byte) i2;
                                                readSampleData = i7 + 1;
                                                obj[i7] = (byte) (i2 >> 8);
                                            }
                                        }
                                    }
                                    createDecoderByType.releaseOutputBuffer(dequeueOutputBuffer, false);
                                    if ((bufferInfo.flags & 4) != 0) {
                                        obj5 = 1;
                                    } else {
                                        obj5 = obj3;
                                    }
                                    obj3 = obj5;
                                    i2 = i6;
                                    obj5 = obj6;
                                    byteBufferArr = inputBuffers;
                                    i3 = readSampleData;
                                    bool = valueOf2;
                                    i = i4;
                                    i4 = i5;
                                    byteBufferArr2 = outputBuffers;
                                } else if (dequeueOutputBuffer == -3) {
                                    ByteBuffer[] inputBuffers2 = createDecoderByType.getInputBuffers();
                                    i = i3;
                                    i4 = c;
                                    byteBufferArr2 = createDecoderByType.getOutputBuffers();
                                    obj5 = obj4;
                                    i3 = i2;
                                    byteBufferArr = inputBuffers2;
                                    i2 = integer2;
                                    bool = valueOf;
                                } else {
                                    obj5 = obj4;
                                    bool = valueOf;
                                    i = i3;
                                    i4 = c;
                                    byteBufferArr2 = outputBuffers;
                                    i3 = i2;
                                    byteBufferArr = inputBuffers;
                                    i2 = integer2;
                                }
                                valueOf = bool;
                                c = i4;
                                outputBuffers = byteBufferArr2;
                                inputBuffers = byteBufferArr;
                                integer2 = i2;
                                i2 = i3;
                                obj4 = obj5;
                            }
                        } else {
                            i = i3;
                        }
                    }
                    if (!this.a.b) {
                        a(obj, i2, this.c.getAbsolutePath(), integer);
                    }
                    if (mediaExtractor2 != null) {
                        try {
                            mediaExtractor2.release();
                        } catch (Exception e4) {
                        }
                    }
                    if (createDecoderByType != null) {
                        try {
                            createDecoderByType.stop();
                        } catch (Exception e5) {
                        }
                        try {
                            createDecoderByType.release();
                        } catch (Exception e6) {
                        }
                    }
                } catch (Throwable e7) {
                    mediaExtractor = mediaExtractor2;
                    MediaCodec mediaCodec2 = createDecoderByType;
                    th = e7;
                    mediaCodec = mediaCodec2;
                    try {
                        throw new TranscoderException(true, "failed to transcode audio", th);
                    } catch (Throwable th2) {
                        th = th2;
                        mediaExtractor2 = mediaExtractor;
                        if (mediaExtractor2 != null) {
                            try {
                                mediaExtractor2.release();
                            } catch (Exception e8) {
                            }
                        }
                        if (mediaCodec != null) {
                            try {
                                mediaCodec.stop();
                            } catch (Exception e9) {
                            }
                            try {
                                mediaCodec.release();
                            } catch (Exception e10) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable e72) {
                    Throwable th3 = e72;
                    mediaCodec = createDecoderByType;
                    th = th3;
                    if (mediaExtractor2 != null) {
                        mediaExtractor2.release();
                    }
                    if (mediaCodec != null) {
                        mediaCodec.stop();
                        mediaCodec.release();
                    }
                    throw th;
                }
            } catch (IOException e11) {
                th = e11;
                mediaExtractor = mediaExtractor2;
                throw new TranscoderException(true, "failed to transcode audio", th);
            } catch (Throwable th4) {
                th = th4;
                if (mediaExtractor2 != null) {
                    mediaExtractor2.release();
                }
                if (mediaCodec != null) {
                    mediaCodec.stop();
                    mediaCodec.release();
                }
                throw th;
            }
        } catch (IOException e12) {
            th = e12;
            throw new TranscoderException(true, "failed to transcode audio", th);
        } catch (Throwable th5) {
            th = th5;
            mediaExtractor2 = null;
            if (mediaExtractor2 != null) {
                mediaExtractor2.release();
            }
            if (mediaCodec != null) {
                mediaCodec.stop();
                mediaCodec.release();
            }
            throw th;
        }
    }

    private void a(byte[] bArr, int i, String str, int i2) throws TranscoderException, IOException {
        MediaCodec createEncoderByType = MediaCodec.createEncoderByType(MimeTypes.AUDIO_AAC);
        createEncoderByType.configure(a(i2), null, null, 1);
        createEncoderByType.start();
        MediaMuxer mediaMuxer = new MediaMuxer(str, 0);
        Object hVar = new h(this.a, createEncoderByType, mediaMuxer, 0);
        Thread thread = new Thread(hVar, "encodeAudio-" + d.a.incrementAndGet());
        thread.start();
        int i3 = 0;
        try {
            ByteBuffer[] inputBuffers = createEncoderByType.getInputBuffers();
            while (!this.a.b) {
                int dequeueInputBuffer = createEncoderByType.dequeueInputBuffer(-1);
                if (dequeueInputBuffer >= 0) {
                    ByteBuffer byteBuffer = inputBuffers[dequeueInputBuffer];
                    byteBuffer.clear();
                    int min = Math.min(2048, i - i3);
                    byteBuffer.put(bArr, i3, min);
                    long j = (((long) i3) * C.MICROS_PER_SECOND) / ((long) (i2 * 2));
                    if (i3 + min >= i) {
                        createEncoderByType.queueInputBuffer(dequeueInputBuffer, 0, min, j, 4);
                        break;
                    } else {
                        createEncoderByType.queueInputBuffer(dequeueInputBuffer, 0, min, j, 0);
                        i3 += min;
                    }
                }
            }
            thread.join();
            try {
                createEncoderByType.stop();
            } catch (Exception e) {
            }
            try {
                createEncoderByType.release();
            } catch (Exception e2) {
            }
            try {
                mediaMuxer.stop();
            } catch (Exception e3) {
            }
            try {
                mediaMuxer.release();
            } catch (Exception e4) {
            }
            hVar.b();
        } catch (Throwable th) {
            try {
                createEncoderByType.stop();
            } catch (Exception e5) {
            }
            try {
                createEncoderByType.release();
            } catch (Exception e6) {
            }
            try {
                mediaMuxer.stop();
            } catch (Exception e7) {
            }
            try {
                mediaMuxer.release();
            } catch (Exception e8) {
            }
        }
    }

    private MediaFormat a(int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", MimeTypes.AUDIO_AAC);
        mediaFormat.setInteger("aac-profile", 2);
        mediaFormat.setInteger("sample-rate", i);
        mediaFormat.setInteger("channel-count", 1);
        mediaFormat.setInteger("bitrate", 64000);
        mediaFormat.setInteger("max-input-size", (int) (0.38f * ((float) i)));
        return mediaFormat;
    }
}
