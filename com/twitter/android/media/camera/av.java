package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.SystemClock;
import com.twitter.media.model.VideoFile;
import com.twitter.util.h;
import com.twitter.util.j;
import defpackage.bbn;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class av {
    private static final int[] a;
    private final MediaRecorder b;
    private final Camera c;
    private final int d;
    private final Parameters e;
    private final int f;
    private final File g;
    private ba h;
    private volatile long i;
    private ay j;
    private boolean k;

    static {
        a = new int[]{5, 4, 6, 7, 3, 2, 8};
    }

    av(MediaRecorder mediaRecorder, Camera camera, int i, Parameters parameters, int i2, File file) {
        this.i = -1;
        this.b = mediaRecorder;
        this.c = camera;
        this.d = i;
        this.e = parameters;
        this.f = i2;
        this.g = file;
    }

    public void a(ba baVar) {
        this.h = baVar;
    }

    public void a(int i) {
        h.a();
        if (!this.k) {
            this.k = true;
            this.j = new ay(this, i);
            this.j.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public void a() {
        h.a();
        ay ayVar = this.j;
        if (ayVar != null) {
            this.j = null;
            if (!ayVar.cancel(false)) {
                new az(this, false).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
            }
        }
    }

    public void b() {
        h.a();
        ay ayVar = this.j;
        if (ayVar != null) {
            this.j = null;
            if (!ayVar.cancel(false)) {
                try {
                    this.b.stop();
                    new ax(this, null).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                } catch (Throwable e) {
                    bbn.a(e);
                    this.g.delete();
                    if (this.h != null) {
                        this.h.j();
                    }
                    this.k = false;
                }
            }
        }
    }

    public boolean c() {
        return this.j != null;
    }

    public int d() {
        return this.i == -1 ? 0 : (int) (SystemClock.elapsedRealtime() - this.i);
    }

    public static CamcorderProfile b(int i) {
        for (int a : a) {
            CamcorderProfile a2 = a(i, a);
            if (a2 != null) {
                return a2;
            }
        }
        bbn.a(new Exception("cannot find appropriate camera profile"));
        return CamcorderProfile.get(i, 1);
    }

    private static CamcorderProfile a(int i, int i2) {
        try {
            if (!CamcorderProfile.hasProfile(i, i2)) {
                return null;
            }
            CamcorderProfile camcorderProfile = CamcorderProfile.get(i, i2);
            if (camcorderProfile.videoCodec != 2) {
                camcorderProfile = null;
            }
            return camcorderProfile;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    private void f() {
        CamcorderProfile b = b(this.d);
        try {
            this.b.setVideoSource(1);
            this.b.setAudioSource(5);
            this.b.setOrientationHint(this.f);
            this.b.setOutputFormat(2);
            this.b.setVideoFrameRate(Math.min(b.videoFrameRate, 38));
            this.b.setVideoSize(b.videoFrameWidth, b.videoFrameHeight);
            this.b.setVideoEncodingBitRate(3700000);
            this.b.setVideoEncoder(2);
            if (b.quality < 1000 || b.quality > 1007) {
                this.b.setAudioEncodingBitRate(b.audioBitRate);
                this.b.setAudioChannels(b.audioChannels);
                this.b.setAudioSamplingRate(b.audioSampleRate);
                this.b.setAudioEncoder(b.audioCodec);
            }
        } catch (Throwable e) {
            bbn.a(e);
        }
        if (this.e != null) {
            Size previewSize = this.e.getPreviewSize();
            Size size = null;
            List<Size> supportedVideoSizes = this.e.getSupportedVideoSizes();
            if (supportedVideoSizes == null) {
                size = previewSize;
            } else {
                int i = b.videoFrameWidth * b.videoFrameHeight;
                int i2 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                for (Size size2 : supportedVideoSizes) {
                    Size size3;
                    int i3;
                    if (size2.width * previewSize.height == size2.height * previewSize.width) {
                        int abs = Math.abs((size2.width * size2.height) - i);
                        if (abs < i2) {
                            int i4 = abs;
                            size3 = size2;
                            i3 = i4;
                            i2 = i3;
                            size = size3;
                        }
                    }
                    i3 = i2;
                    size3 = size;
                    i2 = i3;
                    size = size3;
                }
            }
            if (size != null) {
                this.b.setVideoSize(size.width, size.height);
            } else {
                bbn.a(new Exception("cannot find supported video recording size for preview size " + previewSize.width + "x" + previewSize.height));
            }
        }
    }

    boolean c(int i) {
        Throwable e;
        j.c();
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return false;
        }
        this.b.reset();
        this.b.setOnInfoListener(new aw(this));
        this.b.setOutputFile(this.g.getAbsolutePath());
        try {
            this.b.setMaxDuration(i);
            synchronized (this.c) {
                try {
                    this.c.unlock();
                    this.b.setCamera(this.c);
                    f();
                    this.b.prepare();
                    this.b.start();
                    this.i = SystemClock.elapsedRealtime();
                    return true;
                } catch (IOException e2) {
                    e = e2;
                    bbn.a(e);
                    e();
                    return false;
                } catch (RuntimeException e3) {
                    e = e3;
                    bbn.a(e);
                    e();
                    return false;
                }
            }
        } catch (RuntimeException e4) {
            this.b.reset();
            return false;
        }
    }

    VideoFile e() {
        j.c();
        VideoFile videoFile = null;
        try {
            this.b.stop();
            videoFile = VideoFile.a(this.g);
        } catch (Throwable e) {
            bbn.a(e);
            this.g.delete();
        }
        try {
            this.b.reset();
            this.c.lock();
        } catch (Throwable e2) {
            bbn.a(e2);
        }
        this.i = SystemClock.elapsedRealtime();
        return videoFile;
    }
}
