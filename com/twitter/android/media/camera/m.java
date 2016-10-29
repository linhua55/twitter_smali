package com.twitter.android.media.camera;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.AsyncTask;
import android.os.Bundle;
import bbn;
import bbu;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.android.util.j;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.h;
import com.twitter.util.ui.r;
import java.io.File;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class m {
    private static final ShutterCallback b;
    private static m c;
    int a;
    private final Context d;
    private final int e;
    private u f;
    private String g;
    private int h;
    private int i;
    private Camera j;
    private SurfaceTexture k;
    private boolean l;
    private int m;
    private MediaRecorder n;
    private boolean o;
    private boolean p;
    private Parameters q;
    private int r;
    private int s;
    private w t;
    private av u;
    private final PreviewCallback v;
    private final PictureCallback w;

    static {
        b = new n();
    }

    private m(Context context) {
        this.a = 0;
        this.m = 0;
        this.v = new o(this);
        this.w = new p(this);
        this.d = context.getApplicationContext();
        this.e = Camera.getNumberOfCameras();
    }

    public Size a() {
        return this.q == null ? null : this.q.getPreviewSize();
    }

    public static m a(Context context) {
        if (c == null) {
            c = new m(context);
        }
        return c;
    }

    public void a(boolean z) {
        c(z ? g(1) : this.h);
    }

    public void b() {
        if (this.e >= 2) {
            c((this.i + 1) % this.e);
        }
    }

    public int c() {
        return this.i;
    }

    public CameraInfo d() {
        return a(this.i);
    }

    private int g(int i) {
        for (int i2 = 0; i2 < this.e; i2++) {
            if (a(i2).facing == i) {
                return i2;
            }
        }
        return 0;
    }

    public CameraInfo a(int i) {
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo;
    }

    public void b(int i) {
        AsyncTask.SERIAL_EXECUTOR.execute(new q(this, i));
    }

    void a(Camera camera) {
        boolean z = true;
        if (camera != null) {
            try {
                this.j = camera;
                this.q = camera.getParameters();
                if (d().facing != 1) {
                    z = false;
                }
                this.p = z;
                u();
                t();
                w();
                if (this.k != null) {
                    camera.setPreviewTexture(this.k);
                    if (this.s > 0) {
                        d(this.s);
                    }
                    if (this.l) {
                        g();
                    }
                    if (this.f != null) {
                        this.f.a(camera);
                        l();
                    }
                }
            } catch (Throwable e) {
                f();
                if (this.f != null) {
                    this.f.a();
                }
                bbn.a(e);
            }
        } else if (this.f != null) {
            this.f.a();
        }
    }

    public void c(int i) {
        if (i != this.i || (this.j == null && this.t == null)) {
            f();
            this.i = i;
            this.t = new w(this, i);
            this.t.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public void a(SurfaceTexture surfaceTexture) {
        if (this.j == null) {
            this.k = surfaceTexture;
            return;
        }
        this.k = surfaceTexture;
        try {
            this.j.setPreviewTexture(surfaceTexture);
            if (this.s > 0) {
                d(this.s);
            }
            if (this.l) {
                g();
            }
            if (this.f != null) {
                this.f.a(this.j);
                l();
            }
        } catch (Throwable e) {
            if (this.f != null) {
                this.f.a();
            }
            bbn.a(e);
        }
    }

    public void b(SurfaceTexture surfaceTexture) {
        if (this.k == surfaceTexture) {
            this.k = null;
            h();
            if (this.j != null) {
                try {
                    this.j.setPreviewTexture(null);
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
        }
    }

    public void a(u uVar) {
        this.f = uVar;
    }

    public void b(u uVar) {
        if (this.f == uVar) {
            this.f = null;
        }
    }

    public void a(Bundle bundle) {
        bundle.putString("flash_mode", this.g);
        bundle.putInt("camera_id", this.i);
    }

    public void b(Bundle bundle) {
        if (bundle != null) {
            this.g = bundle.getString("flash_mode");
            this.h = bundle.getInt("camera_id", 0);
            return;
        }
        this.g = "off";
        this.h = g(0);
    }

    public int e() {
        r();
        a(this.n);
        this.n = null;
        if (this.q != null) {
            this.g = this.q.getFlashMode();
        }
        f();
        return this.i;
    }

    public void f() {
        if (this.t != null) {
            if (!this.t.cancel(false)) {
                this.t = null;
            } else {
                return;
            }
        }
        Camera camera = this.j;
        if (camera != null) {
            this.j = null;
            this.q = null;
            s();
            h();
            c(camera);
        }
    }

    public void d(int i) {
        boolean z = true;
        boolean z2 = false;
        this.s = i;
        if (this.q != null) {
            float f;
            int i2;
            boolean z3;
            if (j.a()) {
                CamcorderProfile b = av.b(this.i);
                if (b == null) {
                    f = 0.5625f;
                    i2 = i;
                } else {
                    i2 = b.videoFrameWidth;
                    int i3 = b.videoFrameHeight;
                    f = i2 < i3 ? ((float) i2) / ((float) i3) : ((float) i3) / ((float) i2);
                    i2 = Math.min(i, Math.min(i2, i3));
                }
            } else {
                f = AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION;
                i2 = i;
            }
            Size a = j.a(this.q.getSupportedPreviewSizes(), i2, f);
            if (a == null || this.q.getPreviewSize().equals(a)) {
                z3 = false;
            } else {
                z3 = true;
            }
            Size a2 = j.a(this.q.getSupportedPictureSizes(), i, f);
            if (a2 == null || this.q.getPictureSize().equals(a2)) {
                z = false;
            }
            if (z3 || z) {
                if (z3) {
                    z2 = this.l;
                    h();
                    this.q.setPreviewSize(a.width, a.height);
                    this.q.set("video-size", a.width + "x" + a.height);
                }
                if (z) {
                    this.q.setPictureSize(a2.width, a2.height);
                }
                if (!x()) {
                    if (z3) {
                        this.q.setPreviewSize(a.width, a.height);
                    }
                    if (z) {
                        this.q.setPictureSize(a2.width, a2.height);
                    }
                    x();
                }
                if (z2) {
                    g();
                }
            }
        }
    }

    public void g() {
        h.a();
        this.l = true;
        if (o() && this.m == 0) {
            this.m = 1;
            this.j.setOneShotPreviewCallback(this.v);
            this.j.startPreview();
        }
    }

    public void h() {
        h.a();
        this.l = false;
        if (o() && this.m != 0) {
            this.j.stopPreview();
        }
        this.m = 0;
    }

    public boolean i() {
        return a(this.w);
    }

    public boolean j() {
        return this.p;
    }

    private void t() {
        if (this.q.getSupportedFlashModes() != null) {
            a(this.g);
        }
        this.g = "off";
    }

    private void u() {
        List supportedFocusModes = this.q.getSupportedFocusModes();
        if (supportedFocusModes != null) {
            String str = null;
            if (this.p && supportedFocusModes.contains("macro")) {
                str = "macro";
            } else if (this.o) {
                if (supportedFocusModes.contains("continuous-video")) {
                    str = "continuous-video";
                } else if (supportedFocusModes.contains("auto")) {
                    str = "auto";
                } else if (supportedFocusModes.contains("fixed")) {
                    str = "fixed";
                }
            } else if (supportedFocusModes.contains("continuous-picture")) {
                str = "continuous-picture";
            } else if (supportedFocusModes.contains("auto")) {
                str = "auto";
            }
            if (aj.b(str)) {
                a(str);
            }
        }
    }

    private boolean a(PictureCallback pictureCallback) {
        if (o() && this.m == 2) {
            try {
                this.m = 0;
                this.j.takePicture(b, null, pictureCallback);
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(bg.a().c().g());
                String[] strArr = new String[5];
                strArr[0] = "twitter_camera";
                strArr[1] = TtmlNode.ANONYMOUS_REGION_ID;
                strArr[2] = "photo";
                strArr[3] = this.p ? "front" : "back";
                strArr[4] = "captured";
                bbu.a((TwitterScribeLog) twitterScribeLog.b(strArr));
                return true;
            } catch (Throwable e) {
                if (this.f != null) {
                    this.f.c();
                }
                g();
                bbn.a(e);
            }
        }
        return false;
    }

    public int e(int i) {
        CameraInfo d = d();
        if (d.facing == 1) {
            return r.a((-d.orientation) - i);
        }
        return r.a(d.orientation - i);
    }

    public int k() {
        int a;
        if (j.d()) {
            a = r.a(-aa.a(this.d));
        } else {
            a = this.r;
        }
        CameraInfo d = d();
        int i = d.orientation + a;
        if (d.facing == 1 && (a == 90 || a == 270)) {
            a = i + 180;
        } else {
            a = i;
        }
        return r.a(a);
    }

    public void f(int i) {
        this.r = i;
    }

    public void b(boolean z) {
        if (this.o != z) {
            this.o = z;
            this.g = "off";
            if (o()) {
                t();
                u();
                l();
            }
        }
    }

    public void l() {
        if (this.q != null && this.f != null) {
            Collection supportedFlashModes = this.q.getSupportedFlashModes();
            Set hashSet = new HashSet();
            if (supportedFlashModes != null) {
                if (this.o) {
                    if (supportedFlashModes.contains("torch")) {
                        hashSet.add("off");
                        hashSet.add("torch");
                    }
                } else if (!this.p) {
                    supportedFlashModes.remove("torch");
                    hashSet.addAll(supportedFlashModes);
                }
            }
            this.f.a(hashSet, this.q.getFlashMode());
        }
    }

    public void a(CharSequence charSequence) {
        if (this.q != null) {
            this.q.setFlashMode(charSequence.toString());
            if (!x() && this.f != null) {
                this.f.a((CharSequence) "flash", charSequence);
            }
        }
    }

    public String m() {
        return this.q != null ? this.q.getFlashMode() : null;
    }

    private boolean v() {
        String focusMode = this.q.getFocusMode();
        return focusMode.equals("continuous-picture") || focusMode.equals("continuous-video") || focusMode.equals("auto") || focusMode.equals("macro");
    }

    public boolean n() {
        if (o() && this.m == 2 && this.a == 0 && v()) {
            this.a = 1;
            try {
                this.j.autoFocus(new r(this));
                return true;
            } catch (Throwable e) {
                this.a = 0;
                u();
                bbn.a(e);
            }
        }
        return false;
    }

    private boolean a(String str) {
        if (!this.q.getSupportedFocusModes().contains(str)) {
            return false;
        }
        this.q.setFocusMode(str);
        return x();
    }

    public boolean o() {
        return (this.j == null || this.k == null) ? false : true;
    }

    public boolean p() {
        return this.u != null && this.u.c();
    }

    public int q() {
        return this.u != null ? this.u.d() : 0;
    }

    public void a(File file, int i, ba baVar) {
        h.a();
        if (!o()) {
            return;
        }
        if (this.u == null || !this.u.c()) {
            if (this.n == null) {
                this.n = new MediaRecorder();
            }
            this.u = new av(this.n, this.j, this.i, this.q, k(), file);
            this.u.a(baVar);
            this.u.a(i);
        }
    }

    public void r() {
        h.a();
        if (o() && this.u != null) {
            av avVar = this.u;
            this.u = null;
            avVar.a();
        }
    }

    public void s() {
        h.a();
        av avVar = this.u;
        if (avVar != null) {
            this.u = null;
            avVar.b();
        }
        a(this.n);
        this.n = null;
    }

    private void w() {
        if (!j.c() && !j.b()) {
            this.q.setRecordingHint(this.o);
            x();
        }
    }

    @TargetApi(17)
    public void c(boolean z) {
        this.j.enableShutterSound(z);
    }

    private boolean x() {
        boolean z;
        synchronized (this.j) {
            try {
                this.j.setParameters(this.q);
                z = true;
            } catch (Throwable e) {
                this.q = this.j.getParameters();
                bbn.a(e);
                z = false;
            }
        }
        return z;
    }

    private static void c(Camera camera) {
        AsyncTask.SERIAL_EXECUTOR.execute(new s(camera));
    }

    private static void a(MediaRecorder mediaRecorder) {
        if (mediaRecorder != null) {
            AsyncTask.SERIAL_EXECUTOR.execute(new t(mediaRecorder));
        }
    }
}
