package com.twitter.internal.network;

import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.m;
import com.twitter.util.object.e;
import com.twitter.util.z;
import cur;
import cvj;
import cvm;
import java.io.IOException;
import java.io.InputStream;
import java.net.NoRouteToHostException;
import java.net.URI;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import org.apache.http.HttpEntity;

/* compiled from: Twttr */
public abstract class HttpOperation<R, S> {
    protected static final i a;
    private static final AtomicLong g;
    protected final t b;
    protected final RequestMethod c;
    protected final URI d;
    protected final i e;
    protected long f;
    private HttpEntity h;
    private final d i;
    private final d j;
    private final q k;
    private z<Double> l;
    private boolean m;
    private final Map<String, ArrayList<String>> n;
    private final k o;
    private volatile boolean p;
    private volatile boolean q;
    private R r;
    private S s;
    private int t;
    private Inflater u;
    private Protocol v;
    private long w;
    private boolean x;

    /* compiled from: Twttr */
    public enum RequestMethod {
        GET("GET", false),
        POST("POST", true),
        PUT("PUT", true),
        DELETE("DELETE", false);
        
        private final boolean mHasRequestBody;
        private final String mMethod;

        private RequestMethod(String str, boolean z) {
            this.mMethod = str;
            this.mHasRequestBody = z;
        }

        public String toString() {
            return this.mMethod;
        }

        public boolean a() {
            return this.mHasRequestBody;
        }
    }

    protected abstract R a() throws IOException;

    protected abstract String a(S s);

    protected abstract String a(S s, String str, int i);

    protected abstract void a(R r, int i);

    protected abstract void a(R r, String str, String str2);

    protected abstract void a(R r, HttpEntity httpEntity);

    protected abstract String b(S s);

    protected abstract int c(S s);

    protected abstract InputStream d(S s) throws IOException;

    protected abstract String d();

    protected abstract void e(R r);

    protected abstract S f(R r) throws IOException;

    protected abstract Map<String, List<String>> g(S s);

    protected abstract int h(S s) throws IOException;

    protected abstract String i(S s) throws IOException;

    protected abstract Protocol k(S s);

    static {
        a = new b();
        g = new AtomicLong(0);
    }

    public void b() {
        if (this.r != null) {
            e(this.r);
        }
        this.p = true;
    }

    protected HttpOperation(RequestMethod requestMethod, URI uri, i iVar, t tVar, d dVar, q qVar) {
        this.f = -1;
        this.h = null;
        this.i = new d();
        this.m = false;
        this.n = MutableMap.a();
        this.o = new k();
        this.t = -1;
        this.x = false;
        this.b = tVar;
        this.j = dVar;
        this.k = qVar;
        this.w = this.b.b();
        this.c = requestMethod;
        this.d = uri;
        this.e = (i) e.b(iVar, a);
        b(Protocol.b);
    }

    protected HttpOperation(RequestMethod requestMethod, URI uri, i iVar) {
        this(requestMethod, uri, iVar, PlatformContext.f().a(), d.a(), q.a());
    }

    public HttpOperation a(String str, String str2) {
        if (this.n.containsKey(str)) {
            ((ArrayList) this.n.get(str)).set(0, str2);
        } else {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(str2);
            this.n.put(str, arrayList);
        }
        return this;
    }

    public final HttpOperation c() {
        int i;
        Exception e;
        Exception exception;
        if (!this.k.b()) {
            b(new NoRouteToHostException("Wifi only mode is enabled."));
        } else if (!(this.q || o())) {
            Object f;
            b(0);
            this.q = true;
            v();
            long b = this.b.b();
            k kVar = this.o;
            kVar.o = p();
            kVar.p = d();
            try {
                this.r = a();
                l(this.r);
                b(1);
                i = 2;
                try {
                    f = f(this.r);
                    try {
                        b(2);
                        kVar.a = h(f);
                        b(3);
                        this.o.r = this.b.b();
                        kVar.b = i(f);
                        kVar.k = c(f);
                        kVar.l = b(f);
                        kVar.m = a(f);
                        kVar.o = k(f);
                        kVar.q = a(f, "x-served-by", 0);
                        if (kVar.q == null) {
                            kVar.q = a(f, "server", 0);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        b(i);
                        kVar.d = e instanceof IOException;
                        b(e);
                        m(f);
                        kVar.g = this.b.b() - b;
                        a(kVar, f);
                        a(4, this.o.r);
                        b(5);
                        kVar.e = (kVar.g + kVar.f) + kVar.h;
                        this.p = true;
                        this.q = false;
                        this.s = f;
                        if (!kVar.a()) {
                            this.e.a(kVar);
                        }
                        if (this.r != null) {
                            j(this.r);
                        }
                        u();
                        b(6);
                        return this;
                    }
                } catch (Exception e3) {
                    exception = e3;
                    f = null;
                    e = exception;
                    b(i);
                    kVar.d = e instanceof IOException;
                    b(e);
                    m(f);
                    kVar.g = this.b.b() - b;
                    a(kVar, f);
                    a(4, this.o.r);
                    b(5);
                    kVar.e = (kVar.g + kVar.f) + kVar.h;
                    this.p = true;
                    this.q = false;
                    this.s = f;
                    if (kVar.a()) {
                        this.e.a(kVar);
                    }
                    if (this.r != null) {
                        j(this.r);
                    }
                    u();
                    b(6);
                    return this;
                }
            } catch (Exception e32) {
                i = 1;
                exception = e32;
                f = null;
                e = exception;
                b(i);
                kVar.d = e instanceof IOException;
                b(e);
                m(f);
                kVar.g = this.b.b() - b;
                a(kVar, f);
                a(4, this.o.r);
                b(5);
                kVar.e = (kVar.g + kVar.f) + kVar.h;
                this.p = true;
                this.q = false;
                this.s = f;
                if (kVar.a()) {
                    this.e.a(kVar);
                }
                if (this.r != null) {
                    j(this.r);
                }
                u();
                b(6);
                return this;
            }
            m(f);
            kVar.g = this.b.b() - b;
            if (f != null && kVar.c == null) {
                a(kVar, f);
                a(4, this.o.r);
                b(5);
            }
            kVar.e = (kVar.g + kVar.f) + kVar.h;
            this.p = true;
            this.q = false;
            this.s = f;
            if (kVar.a()) {
                this.e.a(kVar);
            }
            if (this.r != null) {
                j(this.r);
            }
            u();
            b(6);
        }
        return this;
    }

    protected void j(R r) {
    }

    public HttpOperation a(HttpEntity httpEntity) {
        this.h = httpEntity;
        return this;
    }

    public final HttpEntity e() {
        if (this.h == null || !this.c.a()) {
            return null;
        }
        return this.h;
    }

    public long f() {
        return this.h != null ? this.h.getContentLength() : 0;
    }

    public long g() {
        return this.f;
    }

    public HttpOperation a(c cVar) {
        this.i.a(cVar);
        return this;
    }

    public RequestMethod h() {
        return this.c;
    }

    public URI i() {
        return this.d;
    }

    public void a(int i) {
        this.t = i;
    }

    public boolean j() {
        t();
        return this.o.a == 200;
    }

    public boolean k() {
        t();
        return this.o.a();
    }

    public HttpOperation a(Exception exception) {
        b();
        k kVar = this.o;
        kVar.a = 0;
        kVar.b = null;
        kVar.c = exception;
        return this;
    }

    public k l() {
        return this.o;
    }

    private void l(R r) {
        if (this.t >= 0) {
            a((Object) r, this.t);
        }
        a((Object) r, e());
        for (Entry entry : this.n.entrySet()) {
            Iterator it = ((ArrayList) entry.getValue()).iterator();
            while (it.hasNext()) {
                a((Object) r, (String) entry.getKey(), (String) it.next());
            }
        }
    }

    private static boolean a(cur cur) {
        return cur != null && cur.a();
    }

    public Map<String, List<String>> m() {
        Map<String, List<String>> hashMap = new HashMap();
        for (Entry entry : this.n.entrySet()) {
            hashMap.put(entry.getKey(), new ArrayList((Collection) entry.getValue()));
        }
        return hashMap;
    }

    public String a(String str) {
        if (this.n.containsKey(str)) {
            return (String) ((ArrayList) this.n.get(str)).get(0);
        }
        return null;
    }

    public Map<String, List<String>> n() {
        t();
        return this.s != null ? g(this.s) : Collections.emptyMap();
    }

    public String b(String str) {
        t();
        return a(this.s, str);
    }

    private String a(S s, String str) {
        if (s != null) {
            return a((Object) s, str, 0);
        }
        return null;
    }

    protected void b(Exception exception) {
        c(exception);
        b();
        k kVar = this.o;
        kVar.a = 0;
        kVar.c = exception;
    }

    public boolean o() {
        return this.p;
    }

    public void a(boolean z) {
        this.m = z;
    }

    protected boolean a(Protocol protocol) {
        return protocol == Protocol.b;
    }

    public final void b(Protocol protocol) {
        if (a(protocol)) {
            this.v = protocol;
            c(protocol);
            return;
        }
        throw new IllegalArgumentException(protocol + " is not supported by this HttpOperation");
    }

    protected void c(Protocol protocol) {
    }

    public Protocol p() {
        return this.v;
    }

    private static long a(cvj cvj) {
        if (cvj != null) {
            return cvj.a();
        }
        return 0;
    }

    public i q() {
        return this.e;
    }

    public void a(z<Double> zVar) {
        this.l = zVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(com.twitter.internal.network.k r14, S r15) {
        /*
        r13 = this;
        r5 = r14.m;
        r4 = r14.l;
        r3 = r14.k;
        r2 = 0;
        r6 = 0;
        r0 = 0;
        r8 = 0;
        r1 = r13.d(r15);	 Catch:{ Exception -> 0x01ae, all -> 0x0179 }
        if (r1 == 0) goto L_0x01da;
    L_0x0010:
        r7 = new cvj;	 Catch:{ Exception -> 0x01b5, all -> 0x0199 }
        r7.<init>(r1);	 Catch:{ Exception -> 0x01b5, all -> 0x0199 }
        r2 = r13.l;	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
        if (r2 == 0) goto L_0x00ba;
    L_0x0019:
        r6 = new cvl;	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
        r2 = r13.l;	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
        r6.<init>(r7, r3, r2);	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
    L_0x0020:
        if (r4 == 0) goto L_0x00ca;
    L_0x0022:
        r1 = "application/octet-stream";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x002b:
        r1 = "video/mp4";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x0034:
        r1 = "binary/octet-stream";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x003d:
        r1 = "application/zip";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x0046:
        r1 = "text/event-stream";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x004f:
        r1 = cvk.a(r4);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x0055:
        r1 = "image/";
        r1 = r4.startsWith(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 != 0) goto L_0x00ca;
    L_0x005e:
        r1 = new java.io.IOException;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2.<init>();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r3 = "Unsupported content type: ";
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2 = r2.append(r4);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r1.<init>(r2);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        throw r1;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
    L_0x0078:
        r1 = move-exception;
        r2 = r8;
        r3 = r0;
        r0 = r1;
        r1 = r7;
    L_0x007d:
        if (r1 == 0) goto L_0x0192;
    L_0x007f:
        r4 = r1.d();	 Catch:{ all -> 0x01ab }
        if (r4 == 0) goto L_0x0192;
    L_0x0085:
        r4 = 1;
    L_0x0086:
        r14.d = r4;	 Catch:{ all -> 0x01ab }
        r13.b(r0);	 Catch:{ all -> 0x01ab }
        if (r2 == 0) goto L_0x0091;
    L_0x008d:
        r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r14.a = r0;	 Catch:{ all -> 0x01ab }
    L_0x0091:
        defpackage.cun.a(r3);
        defpackage.cun.a(r6);
    L_0x0097:
        r2 = a(r1);
        r14.f = r2;
        if (r1 == 0) goto L_0x0195;
    L_0x009f:
        r2 = r1.c();
    L_0x00a3:
        r14.i = r2;
        if (r1 == 0) goto L_0x00b9;
    L_0x00a7:
        r2 = r1.b();
        r4 = 0;
        r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r0 <= 0) goto L_0x00b9;
    L_0x00b1:
        r0 = r13.o;
        r2 = r1.b();
        r0.r = r2;
    L_0x00b9:
        return;
    L_0x00ba:
        r6 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
        r2 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r6.<init>(r7, r2);	 Catch:{ Exception -> 0x00c3, all -> 0x0199 }
        goto L_0x0020;
    L_0x00c3:
        r2 = move-exception;
        r3 = r0;
        r6 = r1;
        r0 = r2;
        r1 = r7;
        r2 = r8;
        goto L_0x007d;
    L_0x00ca:
        if (r5 == 0) goto L_0x01d7;
    L_0x00cc:
        r1 = "gzip";
        r1 = r5.equals(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 == 0) goto L_0x015f;
    L_0x00d5:
        r1 = 14;
        r1 = new byte[r1];	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r3 = r6.read(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2 = new java.io.SequenceInputStream;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r9 = new java.io.ByteArrayInputStream;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r10 = 0;
        r9.<init>(r1, r10, r3);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2.<init>(r9, r6);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r6 = r13.a(r2);	 Catch:{ Exception -> 0x01be, all -> 0x019f }
        r3 = -1;
        r2 = r6;
    L_0x00ee:
        r1 = r14.a;	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        r6 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r1 < r6) goto L_0x01d4;
    L_0x00f4:
        r1 = r14.a;	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        r6 = 600; // 0x258 float:8.41E-43 double:2.964E-321;
        if (r1 >= r6) goto L_0x01d4;
    L_0x00fa:
        r1 = r13.m;	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        if (r1 == 0) goto L_0x01d4;
    L_0x00fe:
        r1 = cvk.a(r4);	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        if (r1 == 0) goto L_0x01d4;
    L_0x0104:
        r6 = new java.io.BufferedInputStream;	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        r6.<init>(r2);	 Catch:{ Exception -> 0x01c6, all -> 0x01a4 }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r6.mark(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r1 = new byte[r1];	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r2 = 0;
        r9 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r2 = r6.read(r1, r2, r9);	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r9 = new java.lang.String;	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r10 = 0;
        r11 = "UTF-8";
        r11 = java.nio.charset.Charset.forName(r11);	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r9.<init>(r1, r10, r2, r11);	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r14.s = r9;	 Catch:{ Exception -> 0x0174, all -> 0x0183 }
        r6.reset();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
    L_0x012b:
        r2 = new cur;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2.<init>(r6);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r0 = r13.e;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r1 = r14.a;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r0.a(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r0 = r13.b;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r0 = r0.b();	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r3 = a(r2);	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        if (r3 != 0) goto L_0x0146;
    L_0x0143:
        defpackage.cun.a(r2);	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
    L_0x0146:
        r3 = r13.b;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r4 = r3.b();	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r0 = r4 - r0;
        r14.h = r0;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        r0 = r7.e();	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        if (r0 == 0) goto L_0x0188;
    L_0x0156:
        r1 = r13.x;	 Catch:{ Exception -> 0x01ce, all -> 0x01a9 }
        throw r0;	 Catch:{ Exception -> 0x0159, all -> 0x01a9 }
    L_0x0159:
        r0 = move-exception;
        r3 = r2;
        r2 = r1;
        r1 = r7;
        goto L_0x007d;
    L_0x015f:
        r1 = "deflate";
        r1 = r5.equals(r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        if (r1 == 0) goto L_0x01d7;
    L_0x0168:
        r2 = new java.util.zip.InflaterInputStream;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r1 = r13.s();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r2.<init>(r6, r1);	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        r3 = -1;
        goto L_0x00ee;
    L_0x0174:
        r1 = move-exception;
        r6.reset();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        goto L_0x012b;
    L_0x0179:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x017c:
        defpackage.cun.a(r2);
        defpackage.cun.a(r6);
        throw r0;
    L_0x0183:
        r1 = move-exception;
        r6.reset();	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
        throw r1;	 Catch:{ Exception -> 0x0078, all -> 0x0179 }
    L_0x0188:
        r0 = r6;
        r1 = r7;
    L_0x018a:
        defpackage.cun.a(r2);
        defpackage.cun.a(r0);
        goto L_0x0097;
    L_0x0192:
        r4 = 0;
        goto L_0x0086;
    L_0x0195:
        r2 = 0;
        goto L_0x00a3;
    L_0x0199:
        r2 = move-exception;
        r6 = r1;
        r12 = r0;
        r0 = r2;
        r2 = r12;
        goto L_0x017c;
    L_0x019f:
        r1 = move-exception;
        r6 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x017c;
    L_0x01a4:
        r1 = move-exception;
        r6 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x017c;
    L_0x01a9:
        r0 = move-exception;
        goto L_0x017c;
    L_0x01ab:
        r0 = move-exception;
        r2 = r3;
        goto L_0x017c;
    L_0x01ae:
        r1 = move-exception;
        r3 = r0;
        r0 = r1;
        r1 = r2;
        r2 = r8;
        goto L_0x007d;
    L_0x01b5:
        r3 = move-exception;
        r6 = r1;
        r1 = r2;
        r2 = r8;
        r12 = r3;
        r3 = r0;
        r0 = r12;
        goto L_0x007d;
    L_0x01be:
        r1 = move-exception;
        r3 = r0;
        r6 = r2;
        r0 = r1;
        r2 = r8;
        r1 = r7;
        goto L_0x007d;
    L_0x01c6:
        r1 = move-exception;
        r3 = r0;
        r6 = r2;
        r0 = r1;
        r2 = r8;
        r1 = r7;
        goto L_0x007d;
    L_0x01ce:
        r0 = move-exception;
        r3 = r2;
        r1 = r7;
        r2 = r8;
        goto L_0x007d;
    L_0x01d4:
        r6 = r2;
        goto L_0x012b;
    L_0x01d7:
        r2 = r6;
        goto L_0x00ee;
    L_0x01da:
        r12 = r0;
        r0 = r1;
        r1 = r2;
        r2 = r12;
        goto L_0x018a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.network.HttpOperation.a(com.twitter.internal.network.k, java.lang.Object):void");
    }

    protected GZIPInputStream a(InputStream inputStream) throws IOException {
        return this.x ? new cvm(inputStream) : new GZIPInputStream(inputStream);
    }

    private void m(S s) {
        if (s != null) {
            Date n = n(s);
            if (n != null) {
                g.set(n.getTime() - this.b.a());
            }
        }
    }

    private Date n(S s) {
        String a = a((Object) s, "Date");
        if (a != null) {
            try {
                return m.a.parse(a);
            } catch (ParseException e) {
            }
        }
        return null;
    }

    private void t() {
        if (!o()) {
            throw new IllegalStateException("Request not yet complete for this HttpOperation");
        }
    }

    private void u() {
        this.i.a(this);
        this.j.a(this);
    }

    private void v() {
        this.i.b(this);
        this.j.b(this);
    }

    private void c(Exception exception) {
        this.i.a(this, exception);
        this.j.a(this, exception);
    }

    private void b(int i) {
        a(i, this.b.b());
    }

    private void a(int i, long j) {
        if (j >= this.w) {
            this.o.t[i] = (int) (j - this.w);
            this.w = j;
        }
    }

    public long r() {
        return g.get();
    }

    public synchronized Inflater s() {
        if (this.u == null) {
            this.u = new Inflater(false);
        }
        return this.u;
    }

    public void b(boolean z) {
        this.x = z;
    }
}
