package tv.periscope.android.exoplayer.player;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.upstream.DefaultBandwidthMeter;
import defpackage.dcv;
import defpackage.u;
import java.net.URI;
import java.text.DecimalFormat;
import java.util.Map;
import java.util.Timer;
import tv.periscope.android.video.rtmp.Connection;
import tv.periscope.android.video.rtmp.e;
import tv.periscope.android.video.rtmp.n;
import tv.periscope.android.video.rtmp.o;

/* compiled from: Twttr */
public class m implements k, e {
    private long A;
    private o B;
    private o C;
    private final String a;
    private Context b;
    private e c;
    private Connection d;
    private q e;
    private q f;
    private o g;
    private Timer h;
    private long i;
    private boolean j;
    private long k;
    private o l;
    private o m;
    private long n;
    private long o;
    private o p;
    private long q;
    private long r;
    private long s;
    private long t;
    private long u;
    private long v;
    private long w;
    private long x;
    private long y;
    private long z;

    public m(Context context, String str, o oVar) {
        this.e = null;
        this.f = null;
        this.j = false;
        this.k = 0;
        this.l = new o();
        this.m = new o();
        this.n = 0;
        this.o = 0;
        this.p = new o();
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.A = 0;
        this.B = new o();
        this.C = new o();
        this.b = context;
        this.a = str;
        this.g = oVar;
    }

    public void a(e eVar) {
        this.c = eVar;
        this.i = System.currentTimeMillis();
        this.x = this.i;
        this.y = 0;
        f();
        d();
    }

    public void a() {
    }

    private void d() {
        this.d = new Connection();
        this.d.a(2500000);
        this.d.a(this.a, (e) this);
    }

    private void e() {
        if (this.d != null && this.d.e()) {
            try {
                URI uri = new URI(this.a);
                String scheme = uri.getScheme();
                String host = uri.getHost();
                int port = uri.getPort();
                String query = uri.getQuery();
                if (query.startsWith("t=")) {
                    query = query.substring(2);
                }
                String path = uri.getPath();
                if (path.charAt(0) == '/') {
                    path = path.substring(1);
                }
                int indexOf = path.indexOf(47);
                if (indexOf > 0) {
                    String substring = path.substring(0, indexOf);
                    String substring2 = path.substring(indexOf + 1);
                    if (port == 80 && scheme.equalsIgnoreCase("rtmp")) {
                        this.d = new Connection();
                        this.d.a(2500000);
                        this.d.a("RTMPS", host, 443, substring, substring2, query, this);
                        return;
                    }
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        synchronized (this) {
            if (this.j) {
                return;
            }
            this.j = true;
            this.g.b();
        }
    }

    public void a(int i) {
        if (i <= 0) {
            return;
        }
        if (this.d.a()) {
            this.d.a("fast-play", new Object[]{null, this.d.c(), Integer.valueOf(0), this.d.d()});
            return;
        }
        this.d.a("play", new Object[]{null, this.d.c(), Integer.valueOf(0)});
    }

    public boolean a(n nVar) {
        if (nVar.b() == 18) {
            Object[] h = nVar.h();
            if (h == null || h.length == 0) {
                return false;
            }
            String str = (String) h[0];
            if (str.equals("onMetaData") && this.f == null) {
                a((Map) h[1]);
            } else if (str.equals("Periscope") && ((Map) h[1]).containsKey("SourceChange")) {
                dcv.e("RTMP", "Source Change flagged");
                this.g.a();
            }
        } else if (nVar.b() == 9) {
            if (nVar.d() != 0) {
                synchronized (this) {
                    if (this.z == 0) {
                        this.z = nVar.d();
                    }
                }
            }
            if (this.f != null) {
                a(true);
                this.f.a(nVar);
                return true;
            }
        } else if (nVar.b() == 8 && this.e != null) {
            a(false);
            this.e.a(nVar);
            return true;
        }
        return false;
    }

    public void b() {
        dcv.e("RTMP", "Unexpected close: reconnect");
        e();
    }

    public void c() {
        g();
        dcv.e("RTMP", "Frame rate: " + this.p);
        double d = (((double) this.q) * 100.0d) / ((double) (this.q + this.t));
        dcv.e("RTMP", "Skipped %: " + new DecimalFormat("0.#").format(d));
        if (this.u != 0) {
            long nanoTime = System.nanoTime() / 1000000;
            this.w = (nanoTime - this.u) + this.w;
        }
    }

    @TargetApi(19)
    public void a(Map<String, Object> map) {
        p pVar;
        MediaCodecAudioTrackRenderer mediaCodecAudioTrackRenderer = null;
        Object[] objArr = (Object[]) map.get("trackinfo");
        for (int i = 0; i < objArr.length; i++) {
            Map map2 = (Map) objArr[i];
            String str = (String) map2.get("type");
            if (str.equals("video")) {
                this.f = new r(i, -1, (String) map2.get("sprop-parameter-sets"), ((Double) map.get("width")).intValue(), ((Double) map.get("height")).intValue(), this.g);
                this.f.a(this.d);
            } else if (str.equals("audio")) {
                this.e = new l(i, -1, (String) map2.get("config"), ((Double) map.get("audiochannels")).intValue(), ((Double) map.get("audiosamplerate")).intValue());
                this.e.a(this.d);
            }
        }
        if (this.f == null) {
            u.a("Stream with no video encountered: " + this.a);
            pVar = null;
        } else {
            pVar = new p(this, this.b, this.f, 1, 5000, this.c.i(), this.c, 50);
        }
        if (this.e == null) {
            u.a(new Exception("Stream with no audio encountered: " + this.a));
        } else {
            mediaCodecAudioTrackRenderer = new MediaCodecAudioTrackRenderer(this.e, MediaCodecSelector.DEFAULT);
        }
        TrackRenderer[] trackRendererArr = new TrackRenderer[4];
        trackRendererArr[0] = pVar;
        trackRendererArr[1] = mediaCodecAudioTrackRenderer;
        this.c.a(trackRendererArr, new DefaultBandwidthMeter());
    }

    public void a(long j) {
        synchronized (this) {
            if (j == 0) {
                if (this.z != 0) {
                    j = this.z;
                }
            }
        }
        if (this.e != null) {
            long bufferedPositionUs = this.e.getBufferedPositionUs();
            double d = (double) ((bufferedPositionUs / 1000) - j);
            dcv.e("RTMP", "Audio queue: " + ((long) d) + "ms (" + (bufferedPositionUs / 1000) + "/" + j + ")");
            this.B.a(d / 1000.0d);
        }
        if (this.f != null) {
            bufferedPositionUs = this.f.getBufferedPositionUs();
            d = (double) ((bufferedPositionUs / 1000) - j);
            dcv.e("RTMP", "Video queue: " + ((long) d) + "ms (" + (bufferedPositionUs / 1000) + "/" + j + ")");
            this.C.a(d / 1000.0d);
        }
    }

    private synchronized void a(boolean z) {
        this.i = 0;
        this.k = System.currentTimeMillis();
        if (this.y == 0) {
            this.y = this.k;
        }
        if (z) {
            if (this.n > 0) {
                this.m.a((double) (this.k - this.n));
            }
            this.n = this.k;
        } else {
            if (this.o > 0) {
                this.l.a((double) (this.k - this.o));
            }
            this.o = this.k;
        }
    }

    private void f() {
        this.h = new Timer();
        this.h.schedule(new n(this), 3000, 3000);
    }

    private void g() {
        if (this.h != null) {
            this.h.cancel();
            this.h.purge();
            this.h = null;
        }
    }

    private void h() {
        Object obj = 1;
        long currentTimeMillis = System.currentTimeMillis();
        Object obj2 = null;
        synchronized (this) {
            if (this.i > 0) {
                if (currentTimeMillis - this.i > 9000) {
                    dcv.e("RTMP", "Connect timeout");
                    this.i = 0;
                    this.k = 0;
                    obj2 = 1;
                }
            } else if (this.k > 0 && currentTimeMillis - this.k > 9000) {
                dcv.e("RTMP", "No data timeout");
                this.k = 0;
                int i = 1;
            }
        }
        if (!i()) {
            obj = obj2;
        }
        if (obj != null) {
            this.d.g();
            e();
        }
    }

    private boolean i() {
        boolean z = false;
        long nanoTime = System.nanoTime() / 1000000;
        synchronized (this) {
            if (this.r > 0) {
                double d = (double) ((this.s * 1000) / (nanoTime - this.r));
                this.p.a(d);
                dcv.e("RTMP", "FPS: " + d);
                if (this.s == 0) {
                    if (this.u == 0) {
                        this.u = nanoTime;
                        this.v++;
                    } else if (nanoTime - this.u > 9000) {
                        dcv.e("RTMP", "No video timeout");
                        z = true;
                    }
                }
            }
            this.r = nanoTime;
            this.s = 0;
        }
        return z;
    }

    private void b(long j) {
        synchronized (this) {
            this.s++;
            this.t++;
            if (this.A == 0) {
                this.A = System.currentTimeMillis();
                dcv.e("RTMP", "Start to first packet: " + (this.y - this.x));
                dcv.e("RTMP", "Start to first frame: " + (this.A - this.x));
            }
            if (this.u != 0) {
                long nanoTime = System.nanoTime() / 1000000;
                this.w = (nanoTime - this.u) + this.w;
                this.u = 0;
            }
        }
    }
}
