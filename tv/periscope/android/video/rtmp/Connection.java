package tv.periscope.android.video.rtmp;

import android.os.Handler;
import android.os.Looper;
import defpackage.dcv;
import defpackage.u;
import java.net.URI;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class Connection implements l {
    private RTMPConnectState A;
    private e a;
    private j b;
    private p c;
    private String d;
    private String e;
    private int f;
    private String g;
    private String h;
    private String i;
    private byte[] j;
    private long k;
    private List<i> l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private long r;
    private long s;
    private long t;
    private boolean u;
    private h v;
    private String w;
    private boolean x;
    private long y;
    private Runnable z;

    /* compiled from: Twttr */
    enum RTMPConnectState {
        RTMP_Connecting,
        RTMP_Handshake_S0,
        RTMP_Handshake_S1,
        RTMP_Handshake_S2,
        RTMP_CreateStream,
        RTMP_Active,
        RTMP_Shutdown
    }

    public Connection() {
        this.m = 0;
        this.n = 0;
        this.o = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = false;
        this.v = new h();
        this.w = "";
        this.x = false;
        this.y = 0;
        this.z = null;
    }

    public void a(n nVar) {
        if (nVar.e() != null && nVar.e().a() != null) {
            this.c.a(nVar);
        }
    }

    public void a(i iVar) {
        if (iVar.a() == this.v) {
            this.v.a(iVar);
        }
    }

    public boolean a() {
        return this.x;
    }

    public void a(String str, e eVar) {
        this.a = eVar;
        try {
            URI uri = new URI(str);
            this.d = uri.getScheme();
            this.e = uri.getHost();
            this.f = uri.getPort();
            this.i = uri.getQuery();
            String path = uri.getPath();
            if (path.charAt(0) == '/') {
                path = path.substring(1);
            }
            int indexOf = path.indexOf(47);
            if (indexOf > 0) {
                this.g = path.substring(0, indexOf);
                this.h = path.substring(indexOf + 1);
                h();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2, int i, String str3, String str4, String str5, e eVar) {
        this.a = eVar;
        this.d = str;
        this.e = str2;
        this.f = i;
        this.g = str3;
        this.h = str4;
        this.i = "t=" + str5;
        h();
    }

    private void h() {
        boolean z = true;
        this.x = false;
        if (!"rtmps".equalsIgnoreCase(this.d)) {
            if ("psps".equalsIgnoreCase(this.d)) {
                this.x = true;
            } else {
                if ("psp".equalsIgnoreCase(this.d)) {
                    this.x = true;
                }
                z = false;
            }
        }
        this.b = new j();
        this.c = new p(this.b);
        this.b.a(this.e, this.f, z, this);
    }

    public void a(j jVar) {
        this.l = new LinkedList();
        j();
    }

    public void b(j jVar) {
        dcv.e("RTMP", "Close stream");
        if (this.A != RTMPConnectState.RTMP_Shutdown) {
            this.a.b();
        }
    }

    public void b() {
        synchronized (this) {
            if (this.z != null) {
                dcv.e("RTMP", "Send queue drain complete");
                new Handler(Looper.getMainLooper()).post(this.z);
                this.z = null;
            }
        }
    }

    public String c() {
        return this.h;
    }

    public String d() {
        if (this.i == null || this.i.length() < 3) {
            return "";
        }
        return this.i.substring(2);
    }

    public void a(long j) {
        this.t = j;
    }

    public boolean e() {
        return this.u;
    }

    long f() {
        return new Date().getTime() - this.k;
    }

    public static void a(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((int) ((j >> 24) % 256));
        bArr[i + 1] = (byte) ((int) ((j >> 16) % 256));
        bArr[i + 2] = (byte) ((int) ((j >> 8) % 256));
        bArr[i + 3] = (byte) ((int) (j % 256));
    }

    public void a(j jVar, i iVar) {
        synchronized (this) {
            this.y = System.currentTimeMillis();
        }
        this.l.add(iVar);
        this.m += iVar.b;
        if (this.s > 0 && ((long) this.m) - this.r > this.s) {
            this.r = (long) this.m;
            byte[] bArr = new byte[4];
            a(this.r, bArr, 0);
            n nVar = new n(3, 2, 0);
            nVar.a(bArr);
            b(nVar);
        }
        while (true) {
            i a = a(this.o);
            if (a != null) {
                byte[] copyOfRange;
                switch (d.a[this.A.ordinal()]) {
                    case p.View_android_focusable /*1*/:
                        return;
                    case p.View_paddingStart /*2*/:
                        if (a.a[0] != (byte) 3) {
                            dcv.e("RTMP", "Invalid version " + a.a[0]);
                            if (a.a[0] == 72 && this.f == 80) {
                                dcv.e("RTMP", "Proxy error? try SSL");
                                this.u = true;
                                this.a.b();
                                this.A = RTMPConnectState.RTMP_Shutdown;
                                this.b.a();
                                return;
                            }
                        }
                        this.A = RTMPConnectState.RTMP_Handshake_S1;
                        this.o = 1536;
                        a(a);
                        break;
                    case p.View_paddingEnd /*3*/:
                        copyOfRange = Arrays.copyOfRange(a.a, 0, a.b);
                        a(a);
                        a(f(), copyOfRange, 4);
                        this.b.a(copyOfRange, 0, copyOfRange.length);
                        this.A = RTMPConnectState.RTMP_Handshake_S2;
                        this.o = 1536;
                        break;
                    case p.View_theme /*4*/:
                        copyOfRange = Arrays.copyOfRange(a.a, 8, a.b);
                        byte[] copyOfRange2 = Arrays.copyOfRange(this.j, 8, a.b);
                        a(a);
                        if (Arrays.equals(copyOfRange, copyOfRange2)) {
                            dcv.e("RTMP", "C2 ok");
                        } else {
                            dcv.e("RTMP", "C2 mismatch");
                        }
                        i();
                        break;
                    default:
                        nVar = this.c.a(a.a, 0, a.b);
                        a(a);
                        if (!(nVar == null || c(nVar))) {
                            a(nVar);
                        }
                        this.o = this.c.a();
                        break;
                }
            }
            return;
        }
    }

    private void i() {
        this.p = 0;
        String str = this.g + "?" + this.i;
        String str2 = this.d + "://" + this.e + ":" + this.f + "/" + str + "/";
        this.o = 1;
        this.A = RTMPConnectState.RTMP_Connecting;
        this.q = 0;
        HashMap hashMap = new HashMap();
        hashMap.put("app", str);
        hashMap.put("tcUrl", str2);
        hashMap.put("fpad", Boolean.valueOf(false));
        hashMap.put("audioCodecs", Integer.valueOf(1024));
        hashMap.put("videoCodecs", Integer.valueOf(128));
        a("connect", new Object[]{hashMap});
    }

    private i a(int i) {
        if (i > this.m) {
            return null;
        }
        i b = this.v.b(i);
        int i2 = i;
        while (b != null && i2 > 0) {
            i iVar = (i) this.l.get(0);
            int i3 = iVar.b - this.n;
            if (i3 > i2) {
                i3 = i2;
            }
            b.a(iVar.a, this.n, i3);
            this.n += i3;
            this.m -= i3;
            i2 -= i3;
            if (this.n >= iVar.b) {
                this.l.remove(0);
                this.b.a(iVar);
                this.n = 0;
            }
        }
        return b;
    }

    private void j() {
        if (this.x) {
            dcv.e("RTMP", "Using PSP");
            byte[] bArr = new byte[]{(byte) 4, (byte) 1, (byte) 0, (byte) 0};
            this.b.a(bArr, 0, bArr.length);
            this.p = 2;
            this.o = 1;
            this.q = 1;
            this.A = RTMPConnectState.RTMP_Active;
            this.a.a(this.q);
            return;
        }
        this.b.a(new byte[]{(byte) 3}, 0, 1);
        this.j = new byte[1536];
        new Random().nextBytes(this.j);
        Arrays.fill(this.j, 0, 8, (byte) 0);
        this.k = System.currentTimeMillis();
        this.A = RTMPConnectState.RTMP_Handshake_S0;
        this.o = 1;
        this.b.a(this.j, 0, this.j.length);
    }

    public void a(String str, Object[] objArr) {
        n nVar = new n(20, 3, this.q);
        Object[] objArr2 = new Object[(objArr.length + 2)];
        objArr2[0] = str;
        int i = this.p + 1;
        this.p = i;
        objArr2[1] = Integer.valueOf(i);
        System.arraycopy(objArr, 0, objArr2, 2, objArr.length);
        nVar.a(objArr2);
        b(nVar);
    }

    public void b(n nVar) {
        if (this.A != RTMPConnectState.RTMP_Shutdown) {
            if (!(nVar.b() == 8 || nVar.b() == 9 || nVar.b() == 18)) {
                dcv.e("RTMP", "Send: " + nVar);
            }
            if (nVar.b() == 9 && this.x && this.A == RTMPConnectState.RTMP_Active && this.y > 0) {
                Object obj = null;
                synchronized (this) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis - this.y > 5000) {
                        obj = 1;
                        this.y = currentTimeMillis;
                    }
                }
                if (obj != null) {
                    dcv.a("RTMP", "Receive timeout in video send");
                    u.a("Receive timeout in video send");
                    this.a.b();
                }
            }
            if (this.c != null) {
                this.c.b(nVar);
            } else {
                u.a(new IllegalStateException("Attempt to send message while mStreamSet is null"));
            }
        }
    }

    public synchronized void g() {
        if (this.A == RTMPConnectState.RTMP_Active) {
            a("deleteStream", new Object[]{null, Integer.valueOf(this.q)});
        }
        this.A = RTMPConnectState.RTMP_Shutdown;
        this.b.a();
        this.a.c();
    }

    private boolean c(n nVar) {
        if (!(nVar.b() == 8 || nVar.b() == 9 || (this.A == RTMPConnectState.RTMP_Active && nVar.b() == 18))) {
            dcv.e("RTMP", "Receive: " + nVar);
        }
        if (nVar.a() == 2) {
            byte[] bArr;
            n nVar2;
            if (nVar.b() == 5) {
                this.s = a.b(nVar.e().a, 0);
                if (this.t > 0) {
                    bArr = new byte[4];
                    a(this.t, bArr, 0);
                    nVar2 = new n(5, 2, 0);
                    nVar2.a(bArr);
                    b(nVar2);
                    byte[] bArr2 = new byte[5];
                    a(this.t, bArr, 0);
                    bArr2[4] = (byte) 2;
                    n nVar3 = new n(6, 2, 0);
                    nVar3.a(bArr2);
                    b(nVar3);
                    return false;
                }
            } else if (nVar.b() == 1) {
                this.c.a((int) a.b(nVar.e().a, 0));
                return false;
            } else if (nVar.b() == 4) {
                bArr = Arrays.copyOfRange(nVar.e().a, 0, nVar.e().b);
                if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) == 6) {
                    bArr[1] = (byte) 7;
                    nVar2 = new n(4, 2, 0);
                    nVar2.a(bArr);
                    b(nVar2);
                }
                return false;
            }
        } else if (this.A == RTMPConnectState.RTMP_Active) {
            return this.a.a(nVar);
        } else {
            if (nVar.b() == 20) {
                Object[] h = nVar.h();
                if ((h[1] instanceof Double) && Math.round(((Double) h[1]).doubleValue()) == ((long) this.p)) {
                    if (this.A == RTMPConnectState.RTMP_Connecting) {
                        if (h.length > 2 && (h[2] instanceof Map)) {
                            this.w = (String) ((Map) h[2]).get("fmsVer");
                        }
                        a(300, 0);
                        this.q = 0;
                        a("createStream", new Object[]{null});
                        this.A = RTMPConnectState.RTMP_CreateStream;
                        return false;
                    } else if (this.A == RTMPConnectState.RTMP_CreateStream && h.length == 4 && (h[3] instanceof Double)) {
                        this.q = (int) Math.round(((Double) h[3]).doubleValue());
                        dcv.e("RTMP", "Media Stream: " + this.q);
                        this.A = RTMPConnectState.RTMP_Active;
                        this.a.a(this.q);
                    }
                }
            }
        }
        return false;
    }

    private void a(int i, int i2) {
        byte[] bArr = new byte[10];
        bArr[0] = (byte) 0;
        bArr[1] = (byte) 3;
        a((long) i2, bArr, 2);
        a((long) i, bArr, 6);
        n nVar = new n(4, 2, 0);
        nVar.a(bArr);
        b(nVar);
    }
}
