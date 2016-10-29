package tv.periscope.android.ui.broadcast;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.OrientationEventListener;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import com.google.android.exoplayer.extractor.mp4.Mp4Extractor;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import com.google.android.exoplayer.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer.text.Cue;
import defpackage.dcf;
import defpackage.dck;
import defpackage.dcv;
import defpackage.ddb;
import defpackage.ddg;
import defpackage.ddk;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import tv.periscope.android.exoplayer.player.b;
import tv.periscope.android.exoplayer.player.c;
import tv.periscope.android.exoplayer.player.e;
import tv.periscope.android.exoplayer.player.g;
import tv.periscope.android.exoplayer.player.j;
import tv.periscope.android.exoplayer.player.k;
import tv.periscope.android.exoplayer.player.m;
import tv.periscope.android.exoplayer.player.o;
import tv.periscope.android.exoplayer.player.u;
import tv.periscope.android.library.p;
import tv.periscope.android.player.a;
import tv.periscope.model.v;

/* compiled from: Twttr */
public class f implements SurfaceTextureListener, tv.periscope.android.exoplayer.player.f, g, j, o {
    private tv.periscope.android.video.rtmp.o A;
    private long B;
    private long C;
    private long D;
    private tv.periscope.android.video.rtmp.o E;
    private double F;
    private boolean G;
    private double H;
    private double I;
    private OrientationEventListener J;
    private int K;
    private int L;
    private double M;
    private double N;
    private boolean O;
    private final i P;
    private int Q;
    protected boolean a;
    public final OnAudioFocusChangeListener b;
    private final ddk c;
    private int d;
    private String e;
    private boolean f;
    private boolean g;
    private boolean h;
    private ak i;
    private final Context j;
    private final int k;
    private final int l;
    private final String m;
    private final dck n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private long t;
    private TextureView u;
    private Surface v;
    private Handler w;
    private Handler x;
    private k y;
    private int z;

    private void t() {
        if (!this.n.a(this.j, this.b)) {
            H();
        }
    }

    public f(Context context, TextureView textureView, a aVar, int i, int i2, ak akVar, dck dck) {
        boolean z = true;
        this.h = false;
        this.x = new Handler(Looper.getMainLooper());
        this.z = 0;
        this.A = new tv.periscope.android.video.rtmp.o();
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = new tv.periscope.android.video.rtmp.o();
        this.G = false;
        this.H = 0.0d;
        this.I = 0.0d;
        this.K = 0;
        this.L = 0;
        this.M = 0.0d;
        this.N = 0.0d;
        this.O = false;
        this.P = new i(this);
        this.b = new g(this);
        this.j = context.getApplicationContext();
        this.w = new k(aVar);
        this.u = textureView;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(this);
            if (textureView.isAvailable()) {
                this.p = true;
                this.v = new Surface(textureView.getSurfaceTexture());
            }
        } else {
            this.p = true;
        }
        this.k = i;
        this.l = i2;
        this.m = a(context);
        this.i = akVar;
        this.n = dck;
        if (this.i == null || this.i.a() == 0) {
            z = false;
        }
        this.r = z;
        this.c = new ddk();
        if (this.J == null) {
            this.J = new h(this, context, 3);
            if (this.J.canDetectOrientation()) {
                this.J.enable();
            } else {
                this.J = null;
            }
        }
    }

    private String a(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            str = "?";
        }
        return String.format(Locale.US, "Periscope/%s (Linux;Android %s) ExoPlayerLib/%s", new Object[]{str, VERSION.RELEASE, "1.5.9"});
    }

    void a(List<v> list, URL url) {
        if (list != null) {
            for (v vVar : list) {
                if (vVar != null) {
                    this.c.a(vVar.a(), url);
                }
            }
        }
    }

    private k u() {
        switch (this.d) {
            case p.View_android_theme /*0*/:
                throw new UnsupportedOperationException("unsupported type dash");
            case p.View_android_focusable /*1*/:
                throw new UnsupportedOperationException("unsupported type ss");
            case p.View_paddingEnd /*3*/:
                return new c(this.j, this.m, this.e);
            case p.View_theme /*4*/:
                return new m(this.j, this.e, this);
            default:
                return new b(this.j, this.m, Uri.parse(this.e), new Mp4Extractor());
        }
    }

    private synchronized void v() {
        if (this.i == null) {
            this.q = true;
            this.y = u();
            this.i = new am(new e(this.y, this.c), this, this, this);
        }
        if (this.q) {
            this.i.c();
            this.q = false;
        }
        if (this.v != null) {
            this.i.a(this.v);
        }
    }

    private void w() {
        if (this.u != null) {
            this.u.setRotation(0.0f);
        }
        if (this.i != null) {
            this.i.g();
            this.i = null;
        }
    }

    public void e() {
        this.g = true;
        w();
        if (this.u != null) {
            this.u.setSurfaceTextureListener(null);
            this.u = null;
        }
        if (this.v != null) {
            this.v.release();
            this.v = null;
        }
        if (this.J != null) {
            this.J.disable();
            this.J = null;
        }
        x();
        this.y = null;
    }

    private void x() {
        this.w.removeCallbacksAndMessages(null);
        this.x.removeCallbacksAndMessages(null);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (!this.p) {
            this.p = true;
            this.v = new Surface(surfaceTexture);
            a(i, i2);
        }
        if (this.o) {
            v();
        }
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    private void a(int i, int i2) {
        float f = 1.0f;
        if (this.u != null) {
            float f2 = (float) this.l;
            float f3 = (float) this.k;
            if (ddb.c(this.j)) {
                f2 = ((f2 / f3) * ((float) i)) / ((float) i2);
            } else {
                f = ((f3 / f2) * ((float) i2)) / ((float) i);
                f2 = 1.0f;
            }
            Matrix matrix = new Matrix();
            matrix.setScale(f, f2, (float) (i2 / 2), (float) (i / 2));
            this.u.setTransform(matrix);
        }
    }

    public void a(long j) {
        if (!this.r && !this.s) {
            this.s = true;
            this.t = j;
            E();
            if (this.a) {
                c(j);
            }
        }
    }

    public boolean f() {
        return this.r;
    }

    private void y() {
        synchronized (this) {
            if (this.C != 0) {
                this.B += System.currentTimeMillis() - this.C;
                this.C = 0;
            }
        }
    }

    private void z() {
        synchronized (this) {
            if (this.D != 0) {
                double currentTimeMillis = (double) (System.currentTimeMillis() - this.D);
                this.B = (long) (((double) this.B) - currentTimeMillis);
                this.E.a(currentTimeMillis / 1000.0d);
                this.D = 0;
                dcv.e("BroadcastPlayer", "Stall recovered");
            }
        }
    }

    private void A() {
        if (!this.g) {
            this.g = true;
            if (this.i != null) {
                this.i.d();
            }
            D();
        }
    }

    public void a(boolean z, int i) {
        if (this.i != null) {
            switch (i) {
                case p.View_paddingEnd /*3*/:
                    synchronized (this) {
                        if (this.h) {
                            dcv.e("RTMP", "Stall when end pending");
                            A();
                            return;
                        }
                        if (this.D == 0 && this.C != 0) {
                            this.D = System.currentTimeMillis();
                            this.z++;
                            dcv.e("BroadcastPlayer", "Stall");
                        }
                        dcv.e("RTMP", "buffering");
                        G();
                    }
                case p.View_theme /*4*/:
                    z();
                    this.a = true;
                    b(z);
                    if (this.s) {
                        this.s = false;
                        c(this.t);
                        return;
                    }
                    dcv.a("BroadcastPlayer", "playback was not requested");
                case p.Toolbar_contentInsetStart /*5*/:
                    y();
                    this.r = false;
                    D();
                default:
            }
        }
    }

    public long g() {
        return (long) ((this.F - 2.2089888E9d) * 1000.0d);
    }

    public boolean h() {
        return this.i != null && this.i.e() == 4 && this.i.f();
    }

    private void c(long j) {
        if (!this.r && this.i != null) {
            this.r = true;
            C();
            this.F = 0.0d;
            t();
            this.i.a(j);
        }
    }

    public void a(Exception exception) {
        b(exception);
        this.q = true;
    }

    public void a(int i, int i2, int i3, float f) {
        this.L = i2;
        this.K = i;
    }

    public void c() {
        if (this.i != null) {
            this.i.a(true);
        }
        if (this.C == 0) {
            this.C = System.currentTimeMillis();
        }
    }

    public void b(List<Cue> list) {
    }

    public void a(List<Id3Frame> list) {
        for (Id3Frame id3Frame : list) {
            if (id3Frame instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) id3Frame;
                if ("TIT3".equals(textInformationFrame.id)) {
                    double parseDouble = Double.parseDouble(textInformationFrame.description);
                    if (this.F != parseDouble) {
                        this.F = parseDouble;
                        d(g());
                    }
                } else if ("TKEY".equals(textInformationFrame.id) && textInformationFrame.description != null) {
                    a(u.a(textInformationFrame.description));
                }
            }
        }
    }

    private void a(double d) {
        this.G = true;
        this.H = d;
        B();
    }

    private void B() {
        if (this.K > 0 && this.L > 0) {
            double d = this.H;
            if (!this.G) {
                d = 0.0d;
            }
            if (this.u != null) {
                this.Q = u.a(this.u, d, this.K, this.L);
            } else {
                this.Q = u.a(d);
            }
        }
    }

    public int i() {
        return this.Q;
    }

    public void a(Map<String, Object> map, long j) {
        if (map != null && map.get("ntp") != null) {
            double doubleValue;
            this.O = false;
            double doubleValue2 = ((Double) map.get("ntp")).doubleValue();
            long k = k();
            double d = ((double) (j - k)) / 1000.0d;
            this.F = doubleValue2 - d;
            double d2 = (double) tv.periscope.android.video.rtmp.f.a().d();
            double d3 = ((d2 / 1000.0d) + 2.2089888E9d) - this.F;
            if (k > 0) {
                this.A.a(d3);
            }
            if (this.y instanceof m) {
                ((m) this.y).a(k);
            }
            DecimalFormat decimalFormat = new DecimalFormat("0.###");
            dcv.a("BroadcastPlayer", "Latency: " + decimalFormat.format(d3) + " queued: " + decimalFormat.format(d) + " ntp " + decimalFormat.format(doubleValue2));
            dcv.a("BroadcastPlayer", "Capture: " + new Date((long) ((this.F - 2.2089888E9d) * 1000.0d)) + " now: " + new Date((long) d2));
            if (!(map.get("width") == null || map.get("height") == null)) {
                doubleValue2 = ((Double) map.get("width")).doubleValue();
                doubleValue = ((Double) map.get("height")).doubleValue();
                if (this.N == 0.0d && this.M == 0.0d) {
                    this.N = doubleValue;
                    this.M = doubleValue2;
                }
                if (!(doubleValue2 == this.M && doubleValue == this.N)) {
                    dcv.a("BroadcastPlayer", "Source Change detected");
                    this.N = doubleValue;
                    this.M = doubleValue2;
                }
            }
            if (map.get("rotation") != null) {
                this.G = true;
                doubleValue = ((Double) map.get("rotation")).doubleValue();
                dcv.e("BroadcastPlayer", "Broadcast " + doubleValue + " degrees");
                this.x.postDelayed(new j(this, doubleValue), Math.max(0, j - k));
            }
        }
    }

    public void a() {
        a(false);
    }

    public void d() {
        synchronized (this) {
            this.h = true;
            if (!(this.D == 0 && !this.f && this.r)) {
                dcv.e("RTMP", "End signalled when not playing");
                A();
            }
        }
    }

    public void b() {
        a(true);
    }

    private void a(boolean z) {
        if (!this.g) {
            this.w.removeCallbacks(this.P);
            this.P.b = z;
            this.w.post(this.P);
        }
    }

    public long j() {
        if (this.F == 0.0d) {
            return dcf.b();
        }
        return g();
    }

    public long k() {
        if (this.i != null) {
            return this.i.a();
        }
        return 0;
    }

    public long l() {
        if (this.i != null) {
            return this.i.b();
        }
        return 0;
    }

    public void m() {
        d();
        this.n.b(this.j, this.b);
    }

    public void n() {
        this.f = true;
        this.n.b(this.j, this.b);
        if (this.i != null) {
            this.i.a(false);
        }
    }

    public boolean o() {
        return this.g || (this.i != null && this.i.e() == 5);
    }

    public boolean p() {
        return (this.i == null || this.O || (this.i.e() != 3 && this.i.e() != 2)) ? false : true;
    }

    public boolean q() {
        return this.f;
    }

    public void r() {
        this.f = false;
        t();
        if (this.i != null) {
            this.i.a(true);
        }
    }

    public void b(long j) {
        this.f = false;
        t();
        if (this.i != null) {
            this.i.a(j);
        }
    }

    public boolean s() {
        return this.d == 3;
    }

    public boolean a(String str, String str2, String str3, List<v> list) {
        if (ddg.b(str)) {
            dcv.a("BroadcastPlayer", "Using RTMP url.");
            this.d = 4;
            this.e = str;
        } else if (ddg.b(str2)) {
            dcv.a("BroadcastPlayer", "Using HLS url.");
            this.d = 3;
            this.e = str2;
        } else if (ddg.b(str3)) {
            if (Uri.parse(str3).getLastPathSegment().endsWith(".m3u8")) {
                dcv.a("BroadcastPlayer", "Found .m3u8 extension, using HLS.");
                this.d = 3;
            } else {
                dcv.a("BroadcastPlayer", "Using other url (probably mp4)");
                this.d = 2;
            }
            this.e = str3;
        } else {
            dcv.a("BroadcastPlayer", "Unplayable url");
            return false;
        }
        try {
            a((List) list, new URL(this.e));
        } catch (MalformedURLException e) {
        }
        this.o = true;
        if (this.p) {
            v();
            return true;
        }
        dcv.a("BroadcastPlayer", "Texture not ready, we'll set up the player once it becomes available.");
        return true;
    }

    private void C() {
        this.w.sendEmptyMessage(1);
    }

    private void D() {
        this.w.sendEmptyMessage(2);
    }

    private void E() {
        this.w.sendEmptyMessage(3);
    }

    private void F() {
        this.w.sendEmptyMessage(4);
    }

    private void b(boolean z) {
        this.w.sendMessage(this.w.obtainMessage(5, Boolean.valueOf(z)));
    }

    private void G() {
        this.w.sendEmptyMessage(6);
    }

    private void b(Exception exception) {
        this.w.sendMessage(this.w.obtainMessage(7, exception));
    }

    private void d(long j) {
        this.w.sendMessage(this.w.obtainMessage(8, Long.valueOf(j)));
    }

    private void H() {
        this.w.sendEmptyMessage(9);
    }
}
