package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.wo;
import com.google.android.gms.internal.wr;
import com.google.android.gms.internal.ws;
import com.google.android.gms.internal.wu;
import com.google.android.gms.internal.wv;
import com.google.android.gms.internal.wx;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import com.google.android.gms.measurement.AppMeasurementService;
import com.google.android.gms.measurement.a;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class bx {
    private static c a;
    private static volatile bx b;
    private final Context c;
    private final aj d;
    private final bn e;
    private final bc f;
    private final bt g;
    private final u h;
    private final bs i;
    private final a j;
    private final ag k;
    private final ak l;
    private final bf m;
    private final vj n;
    private final i o;
    private final aq p;
    private final d q;
    private final ba r;
    private final bk s;
    private final ad t;
    private final ai u;
    private final boolean v;
    private Boolean w;
    private List<Long> x;
    private int y;
    private int z;

    bx(c cVar) {
        bm.a((Object) cVar);
        this.c = cVar.a;
        this.n = cVar.l(this);
        this.d = cVar.a(this);
        bn b = cVar.b(this);
        b.H();
        this.e = b;
        bc c = cVar.c(this);
        c.H();
        this.f = c;
        f().x().a("App measurement is starting up, version", Long.valueOf(d().M()));
        f().x().a("To enable debug logging run: adb shell setprop log.tag.GMPM VERBOSE");
        f().y().a("Debug logging enabled");
        this.k = cVar.i(this);
        aq n = cVar.n(this);
        n.H();
        this.p = n;
        ba o = cVar.o(this);
        o.H();
        this.r = o;
        ak j = cVar.j(this);
        j.H();
        this.l = j;
        ai r = cVar.r(this);
        r.H();
        this.u = r;
        bf k = cVar.k(this);
        k.H();
        this.m = k;
        i m = cVar.m(this);
        m.H();
        this.o = m;
        d h = cVar.h(this);
        h.H();
        this.q = h;
        ad q = cVar.q(this);
        q.H();
        this.t = q;
        this.s = cVar.p(this);
        this.j = cVar.g(this);
        u e = cVar.e(this);
        e.H();
        this.h = e;
        bs f = cVar.f(this);
        f.H();
        this.i = f;
        bt d = cVar.d(this);
        d.H();
        this.g = d;
        if (this.y != this.z) {
            f().b().a("Not all components initialized", Integer.valueOf(this.y), Integer.valueOf(this.z));
        }
        this.v = true;
        if (!(this.d.N() || y())) {
            if (!(this.c.getApplicationContext() instanceof Application)) {
                f().c().a("Application context is not an Application");
            } else if (VERSION.SDK_INT >= 14) {
                l().b();
            } else {
                f().y().a("Not tracking deep linking pre-ICS");
            }
        }
        this.g.a(new by(this));
    }

    @WorkerThread
    private boolean D() {
        x();
        return this.x != null;
    }

    private boolean E() {
        x();
        a();
        return n().C() || !TextUtils.isEmpty(n().x());
    }

    @WorkerThread
    private void F() {
        x();
        a();
        if (b() && E()) {
            long G = G();
            if (G == 0) {
                u().b();
                v().b();
                return;
            } else if (o().b()) {
                long a = e().e.a();
                long X = d().X();
                if (!m().a(a, X)) {
                    G = Math.max(G, a + X);
                }
                u().b();
                G -= q().a();
                if (G <= 0) {
                    v().a(1);
                    return;
                }
                f().z().a("Upload scheduled in approximately ms", Long.valueOf(G));
                v().a(G);
                return;
            } else {
                u().a();
                v().b();
                return;
            }
        }
        u().b();
        v().b();
    }

    private long G() {
        long a = q().a();
        long aa = d().aa();
        long Y = d().Y();
        long a2 = e().c.a();
        long a3 = e().d.a();
        long max = Math.max(n().A(), n().B());
        if (max == 0) {
            return 0;
        }
        max = a - Math.abs(max - a);
        a3 = a - Math.abs(a3 - a);
        a = Math.max(a - Math.abs(a2 - a), a3);
        aa += max;
        if (!m().a(a, Y)) {
            aa = a + Y;
        }
        if (a3 == 0 || a3 < max) {
            return aa;
        }
        for (int i = 0; i < d().ac(); i++) {
            aa += ((long) (1 << i)) * d().ab();
            if (aa > a3) {
                return aa;
            }
        }
        return 0;
    }

    public static bx a(Context context) {
        bm.a((Object) context);
        bm.a(context.getApplicationContext());
        if (b == null) {
            synchronized (bx.class) {
                if (b == null) {
                    b = (a != null ? a : new c(context)).a();
                }
            }
        }
        return b;
    }

    @WorkerThread
    private void a(int i, Throwable th, byte[] bArr) {
        int i2 = 0;
        x();
        a();
        if (bArr == null) {
            bArr = new byte[0];
        }
        List<Long> list = this.x;
        this.x = null;
        if ((i == 200 || i == 204) && th == null) {
            e().c.a(q().a());
            e().d.a(0);
            F();
            f().z().a("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
            n().b();
            try {
                for (Long longValue : list) {
                    n().a(longValue.longValue());
                }
                n().c();
                if (o().b() && E()) {
                    B();
                } else {
                    F();
                }
            } finally {
                n().v();
            }
        } else {
            f().z().a("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            e().d.a(q().a());
            if (i == 503 || i == 429) {
                i2 = 1;
            }
            if (i2 != 0) {
                e().e.a(q().a());
            }
            F();
        }
    }

    private void a(Bundle bundle, int i) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", (long) i);
        }
    }

    private void a(ck ckVar) {
        if (ckVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    @WorkerThread
    private void a(String str, int i, Throwable th, byte[] bArr) {
        int i2 = 0;
        x();
        a();
        bm.a(str);
        if (bArr == null) {
            bArr = new byte[0];
        }
        n().b();
        b b = n().b(str);
        int i3 = ((i == 200 || i == 204 || i == 304) && th == null) ? 1 : 0;
        if (i3 != 0 || i == 404) {
            if (i == 404 || i == 304) {
                if (j().a(str) == null && !j().a(str, null)) {
                    return;
                }
            } else if (!j().a(str, bArr)) {
                n().v();
                return;
            }
            try {
                b.f(q().a());
                n().a(b);
                if (i == 404) {
                    f().c().a("Config not found. Using empty config");
                } else {
                    f().z().a("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (o().b() && E()) {
                    B();
                } else {
                    F();
                }
            } finally {
                n().v();
            }
        } else {
            b.g(q().a());
            n().a(b);
            f().z().a("Fetching config failed. code, error", Integer.valueOf(i), th);
            e().d.a(q().a());
            if (i == 503 || i == 429) {
                i2 = 1;
            }
            if (i2 != 0) {
                e().e.a(q().a());
            }
            F();
        }
        n().c();
        n().v();
    }

    private void a(List<Long> list) {
        bm.b(!list.isEmpty());
        if (this.x != null) {
            f().b().a("Set uploading progress before finishing the previous upload");
        } else {
            this.x = new ArrayList(list);
        }
    }

    private boolean a(String str, long j) {
        n().b();
        try {
            cb cbVar = new cb(this, null);
            n().a(str, j, cbVar);
            if (cbVar.a()) {
                n().c();
                n().v();
                return false;
            }
            int i;
            wv wvVar = cbVar.a;
            wvVar.b = new ws[cbVar.c.size()];
            int i2 = 0;
            int i3 = 0;
            while (i3 < cbVar.c.size()) {
                if (j().b(cbVar.a.o, ((ws) cbVar.c.get(i3)).b)) {
                    f().z().a("Dropping blacklisted raw event", ((ws) cbVar.c.get(i3)).b);
                    i = i2;
                } else {
                    int i4 = i2 + 1;
                    wvVar.b[i2] = (ws) cbVar.c.get(i3);
                    i = i4;
                }
                i3++;
                i2 = i;
            }
            if (i2 < cbVar.c.size()) {
                wvVar.b = (ws[]) Arrays.copyOf(wvVar.b, i2);
            }
            wvVar.A = a(cbVar.a.o, cbVar.a.c, wvVar.b);
            wvVar.e = wvVar.b[0].c;
            wvVar.f = wvVar.b[0].c;
            for (i = 1; i < wvVar.b.length; i++) {
                ws wsVar = wvVar.b[i];
                if (wsVar.c.longValue() < wvVar.e.longValue()) {
                    wvVar.e = wsVar.c;
                }
                if (wsVar.c.longValue() > wvVar.f.longValue()) {
                    wvVar.f = wsVar.c;
                }
            }
            String str2 = cbVar.a.o;
            b b = n().b(str2);
            if (b == null) {
                f().b().a("Bundling raw events w/o app info");
            } else {
                long g = b.g();
                wvVar.h = g != 0 ? Long.valueOf(g) : null;
                long f = b.f();
                if (f != 0) {
                    g = f;
                }
                wvVar.g = g != 0 ? Long.valueOf(g) : null;
                b.p();
                wvVar.w = Integer.valueOf((int) b.m());
                b.a(wvVar.e.longValue());
                b.b(wvVar.f.longValue());
                n().a(b);
            }
            wvVar.x = f().A();
            n().a(wvVar);
            n().a(cbVar.b);
            n().f(str2);
            n().c();
            return true;
        } finally {
            n().v();
        }
    }

    private wr[] a(String str, wx[] wxVarArr, ws[] wsVarArr) {
        bm.a(str);
        return w().a(str, wsVarArr, wxVarArr);
    }

    private void b(cl clVar) {
        if (clVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!clVar.E()) {
            throw new IllegalStateException("Component not initialized");
        }
    }

    @WorkerThread
    private void c(AppMetadata appMetadata) {
        Object obj = 1;
        x();
        a();
        bm.a((Object) appMetadata);
        bm.a(appMetadata.b);
        b b = n().b(appMetadata.b);
        String b2 = e().b(appMetadata.b);
        Object obj2 = null;
        if (b == null) {
            b bVar = new b(this, appMetadata.b);
            bVar.a(e().b());
            bVar.c(b2);
            b = bVar;
            obj2 = 1;
        } else if (!b2.equals(b.e())) {
            b.c(b2);
            b.a(e().b());
            int i = 1;
        }
        if (!(TextUtils.isEmpty(appMetadata.c) || appMetadata.c.equals(b.d()))) {
            b.b(appMetadata.c);
            obj2 = 1;
        }
        if (!(appMetadata.f == 0 || appMetadata.f == b.j())) {
            b.c(appMetadata.f);
            obj2 = 1;
        }
        if (!(TextUtils.isEmpty(appMetadata.d) || appMetadata.d.equals(b.h()))) {
            b.d(appMetadata.d);
            obj2 = 1;
        }
        if (!(TextUtils.isEmpty(appMetadata.e) || appMetadata.e.equals(b.i()))) {
            b.e(appMetadata.e);
            obj2 = 1;
        }
        if (appMetadata.g != b.k()) {
            b.d(appMetadata.g);
            obj2 = 1;
        }
        if (appMetadata.i != b.l()) {
            b.a(appMetadata.i);
        } else {
            obj = obj2;
        }
        if (obj != null) {
            n().a(b);
        }
    }

    void A() {
        if (d().N()) {
            throw new IllegalStateException("Unexpected call on package side");
        }
    }

    @WorkerThread
    public void B() {
        Map map = null;
        int i = 0;
        x();
        a();
        if (!d().N()) {
            Boolean v = e().v();
            if (v == null) {
                f().c().a("Upload data called on the client side before use of service was decided");
                return;
            } else if (v.booleanValue()) {
                f().b().a("Upload called in the client side when service should be used");
                return;
            }
        }
        if (D()) {
            f().c().a("Uploading requested multiple times");
        } else if (o().b()) {
            long a = q().a();
            a(a - d().W());
            long a2 = e().c.a();
            if (a2 != 0) {
                f().y().a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(a - a2)));
            }
            String x = n().x();
            if (TextUtils.isEmpty(x)) {
                String b = n().b(a - d().W());
                if (!TextUtils.isEmpty(b)) {
                    b b2 = n().b(b);
                    if (b2 != null) {
                        String a3 = d().a(b2.d(), b2.c());
                        try {
                            URL url = new URL(a3);
                            f().z().a("Fetching remote configuration", b2.b());
                            wo a4 = j().a(b2.b());
                            if (!(a4 == null || a4.a == null)) {
                                map = new ArrayMap();
                                map.put("Config-Version", String.valueOf(a4.a));
                            }
                            o().a(b, url, map, new ca(this));
                            return;
                        } catch (MalformedURLException e) {
                            f().b().a("Failed to parse config URL. Not fetching", a3);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            List<Pair> a5 = n().a(x, d().c(x), d().d(x));
            if (!a5.isEmpty()) {
                wv wvVar;
                Object obj;
                List subList;
                for (Pair pair : a5) {
                    wvVar = (wv) pair.first;
                    if (!TextUtils.isEmpty(wvVar.s)) {
                        obj = wvVar.s;
                        break;
                    }
                }
                obj = null;
                if (obj != null) {
                    for (int i2 = 0; i2 < a5.size(); i2++) {
                        wvVar = (wv) ((Pair) a5.get(i2)).first;
                        if (!TextUtils.isEmpty(wvVar.s) && !wvVar.s.equals(obj)) {
                            subList = a5.subList(0, i2);
                            break;
                        }
                    }
                }
                subList = a5;
                wu wuVar = new wu();
                wuVar.a = new wv[subList.size()];
                List arrayList = new ArrayList(subList.size());
                while (i < wuVar.a.length) {
                    wuVar.a[i] = (wv) ((Pair) subList.get(i)).first;
                    arrayList.add(((Pair) subList.get(i)).second);
                    wuVar.a[i].r = Long.valueOf(d().M());
                    wuVar.a[i].d = Long.valueOf(a);
                    wuVar.a[i].z = Boolean.valueOf(d().N());
                    i++;
                }
                Object b3 = f().a(2) ? ag.b(wuVar) : null;
                byte[] a6 = m().a(wuVar);
                String V = d().V();
                try {
                    URL url2 = new URL(V);
                    a(arrayList);
                    e().d.a(a);
                    Object obj2 = "?";
                    if (wuVar.a.length > 0) {
                        obj2 = wuVar.a[0].o;
                    }
                    f().z().a("Uploading data. app, uncompressed size, data", obj2, Integer.valueOf(a6.length), b3);
                    o().a(x, url2, a6, null, new bz(this));
                } catch (MalformedURLException e2) {
                    f().b().a("Failed to parse upload URL. Not uploading", V);
                }
            }
        } else {
            f().c().a("Network not connected, ignoring upload request");
            F();
        }
    }

    void C() {
        this.z++;
    }

    void a() {
        if (!this.v) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    void a(AppMetadata appMetadata) {
        x();
        a();
        bm.a(appMetadata.b);
        c(appMetadata);
    }

    void a(EventParcel eventParcel, AppMetadata appMetadata) {
        long nanoTime = System.nanoTime();
        x();
        a();
        String str = appMetadata.b;
        bm.a(str);
        if (!TextUtils.isEmpty(appMetadata.c)) {
            if (!appMetadata.i) {
                c(appMetadata);
            } else if (j().b(str, eventParcel.b)) {
                f().z().a("Dropping blacklisted event", eventParcel.b);
            } else {
                if (f().a(2)) {
                    f().z().a("Logging event", eventParcel);
                }
                n().b();
                try {
                    Bundle b = eventParcel.c.b();
                    c(appMetadata);
                    if ("_iap".equals(eventParcel.b) || "ecommerce_purchase".equals(eventParcel.b)) {
                        Object string = b.getString("currency");
                        long j = b.getLong("value");
                        if (!TextUtils.isEmpty(string) && j > 0) {
                            String toUpperCase = string.toUpperCase(Locale.US);
                            if (toUpperCase.matches("[A-Z]{3}")) {
                                af afVar;
                                String str2 = "_ltv_" + toUpperCase;
                                af c = n().c(str, str2);
                                if (c == null || !(c.d instanceof Long)) {
                                    n().a(str, d().b(str) - 1);
                                    afVar = new af(str, str2, q().a(), Long.valueOf(j));
                                } else {
                                    afVar = new af(str, str2, q().a(), Long.valueOf(j + ((Long) c.d).longValue()));
                                }
                                n().a(afVar);
                            }
                        }
                    }
                    boolean a = ag.a(eventParcel.b);
                    boolean a2 = ag.a(b);
                    ak n = n();
                    long z = z();
                    boolean z2 = a && a2;
                    al a3 = n.a(z, str, a, z2);
                    z = a3.b - d().B();
                    if (z > 0) {
                        if (z % 1000 == 1) {
                            f().c().a("Data loss. Too many events logged. count", Long.valueOf(a3.b));
                        }
                        n().c();
                        return;
                    }
                    as a4;
                    if (a) {
                        z = a3.a - d().C();
                        if (z > 0) {
                            a(str, 2);
                            if (z % 1000 == 1) {
                                f().c().a("Data loss. Too many public events logged. count", Long.valueOf(a3.a));
                            }
                            n().c();
                            n().v();
                            return;
                        }
                    }
                    if (a && a2) {
                        if (a3.c - d().D() > 0) {
                            b.remove("_c");
                            a(b, 4);
                        }
                    }
                    long c2 = n().c(str);
                    if (c2 > 0) {
                        f().c().a("Data lost. Too many events stored on disk, deleted", Long.valueOf(c2));
                    }
                    ar arVar = new ar(this, eventParcel.d, str, eventParcel.b, eventParcel.e, 0, b);
                    as a5 = n().a(str, arVar.b);
                    if (a5 != null) {
                        arVar = arVar.a(this, a5.e);
                        a4 = a5.a(arVar.d);
                    } else if (n().g(str) >= ((long) d().A())) {
                        f().c().a("Too many event names used, ignoring event. name, supported count", arVar.b, Integer.valueOf(d().A()));
                        a(str, 1);
                        n().v();
                        return;
                    } else {
                        a4 = new as(str, arVar.b, 0, 0, arVar.d);
                    }
                    n().a(a4);
                    a(arVar, appMetadata);
                    n().c();
                    if (f().a(2)) {
                        f().z().a("Event recorded", arVar);
                    }
                    n().v();
                    F();
                    f().z().a("Background event processing time, ms", Long.valueOf(((System.nanoTime() - nanoTime) + 500000) / 1000000));
                } finally {
                    n().v();
                }
            }
        }
    }

    void a(EventParcel eventParcel, String str) {
        b b = n().b(str);
        if (b == null || TextUtils.isEmpty(b.h())) {
            f().y().a("No app data available; dropping event", str);
            return;
        }
        try {
            String str2 = p().getPackageManager().getPackageInfo(str, 0).versionName;
            if (!(b.h() == null || b.h().equals(str2))) {
                f().c().a("App version does not match; dropping event", str);
                return;
            }
        } catch (NameNotFoundException e) {
            f().c().a("Could not find package", str);
        }
        a(eventParcel, new AppMetadata(str, b.d(), b.h(), b.i(), b.j(), b.k(), null, b.l(), false));
    }

    @WorkerThread
    void a(UserAttributeParcel userAttributeParcel, AppMetadata appMetadata) {
        x();
        a();
        if (!TextUtils.isEmpty(appMetadata.c)) {
            if (appMetadata.i) {
                m().c(userAttributeParcel.b);
                Object c = m().c(userAttributeParcel.b, userAttributeParcel.a());
                if (c != null) {
                    af afVar = new af(appMetadata.b, userAttributeParcel.b, userAttributeParcel.c, c);
                    f().y().a("Setting user property", afVar.b, c);
                    n().b();
                    try {
                        c(appMetadata);
                        boolean a = n().a(afVar);
                        n().c();
                        if (a) {
                            f().y().a("User property set", afVar.b, afVar.d);
                        } else {
                            f().w().a("Ignoring user property. Value too long", afVar.b, afVar.d);
                        }
                        n().v();
                        return;
                    } catch (Throwable th) {
                        n().v();
                    }
                } else {
                    return;
                }
            }
            c(appMetadata);
        }
    }

    void a(ar arVar, AppMetadata appMetadata) {
        x();
        a();
        bm.a((Object) arVar);
        bm.a((Object) appMetadata);
        bm.a(arVar.a);
        bm.b(arVar.a.equals(appMetadata.b));
        wv wvVar = new wv();
        wvVar.a = Integer.valueOf(1);
        wvVar.i = "android";
        wvVar.o = appMetadata.b;
        wvVar.n = appMetadata.e;
        wvVar.p = appMetadata.d;
        wvVar.q = Long.valueOf(appMetadata.f);
        wvVar.y = appMetadata.c;
        wvVar.v = appMetadata.g == 0 ? null : Long.valueOf(appMetadata.g);
        Pair a = e().a(appMetadata.b);
        if (!(a == null || a.first == null || a.second == null)) {
            wvVar.s = (String) a.first;
            wvVar.t = (Boolean) a.second;
        }
        wvVar.k = s().b();
        wvVar.j = s().c();
        wvVar.m = Integer.valueOf((int) s().v());
        wvVar.l = s().w();
        wvVar.r = null;
        wvVar.d = null;
        wvVar.e = null;
        wvVar.f = null;
        b b = n().b(appMetadata.b);
        if (b == null) {
            b = new b(this, appMetadata.b);
            b.a(e().b());
            b.b(appMetadata.c);
            b.c(e().b(appMetadata.b));
            b.e(0);
            b.a(0);
            b.b(0);
            b.d(appMetadata.d);
            b.e(appMetadata.e);
            b.c(appMetadata.f);
            b.d(appMetadata.g);
            b.a(appMetadata.i);
            n().a(b);
        }
        wvVar.u = b.c();
        List a2 = n().a(appMetadata.b);
        wvVar.c = new wx[a2.size()];
        for (int i = 0; i < a2.size(); i++) {
            wx wxVar = new wx();
            wvVar.c[i] = wxVar;
            wxVar.b = ((af) a2.get(i)).b;
            wxVar.a = Long.valueOf(((af) a2.get(i)).c);
            m().a(wxVar, ((af) a2.get(i)).d);
        }
        try {
            n().a(arVar, n().b(wvVar));
        } catch (IOException e) {
            f().b().a("Data loss. Failed to insert raw event metadata", e);
        }
    }

    void a(cl clVar) {
        this.y++;
    }

    void a(String str, int i) {
    }

    public void a(boolean z) {
        F();
    }

    boolean a(long j) {
        return a(null, j);
    }

    @WorkerThread
    public void b(AppMetadata appMetadata) {
        x();
        a();
        bm.a((Object) appMetadata);
        bm.a(appMetadata.b);
        if (!TextUtils.isEmpty(appMetadata.c)) {
            if (appMetadata.i) {
                long a = q().a();
                n().b();
                try {
                    Bundle bundle;
                    b b = n().b(appMetadata.b);
                    if (!(b == null || b.h() == null || b.h().equals(appMetadata.d))) {
                        bundle = new Bundle();
                        bundle.putString("_pv", b.h());
                        a(new EventParcel("_au", new EventParams(bundle), "auto", a), appMetadata);
                    }
                    c(appMetadata);
                    if (n().a(appMetadata.b, "_f") == null) {
                        a(new UserAttributeParcel("_fot", a, Long.valueOf(((a / 3600000) + 1) * 3600000), "auto"), appMetadata);
                        bundle = new Bundle();
                        bundle.putLong("_c", 1);
                        a(new EventParcel("_f", new EventParams(bundle), "auto", a), appMetadata);
                    } else if (appMetadata.j) {
                        a(new EventParcel("_cd", new EventParams(new Bundle()), "auto", a), appMetadata);
                    }
                    n().c();
                } finally {
                    n().v();
                }
            } else {
                c(appMetadata);
            }
        }
    }

    @WorkerThread
    void b(UserAttributeParcel userAttributeParcel, AppMetadata appMetadata) {
        x();
        a();
        if (!TextUtils.isEmpty(appMetadata.c)) {
            if (appMetadata.i) {
                f().y().a("Removing user property", userAttributeParcel.b);
                n().b();
                try {
                    c(appMetadata);
                    n().b(appMetadata.b, userAttributeParcel.b);
                    n().c();
                    f().y().a("User property removed", userAttributeParcel.b);
                } finally {
                    n().v();
                }
            } else {
                c(appMetadata);
            }
        }
    }

    @WorkerThread
    protected boolean b() {
        boolean z = true;
        a();
        x();
        if (this.w == null) {
            boolean z2 = m().f("android.permission.INTERNET") && m().f("android.permission.ACCESS_NETWORK_STATE") && AppMeasurementReceiver.a(p()) && AppMeasurementService.a(p());
            this.w = Boolean.valueOf(z2);
            if (this.w.booleanValue() && !d().N()) {
                if (TextUtils.isEmpty(t().c())) {
                    z = false;
                }
                this.w = Boolean.valueOf(z);
            }
        }
        return this.w.booleanValue();
    }

    @WorkerThread
    protected void c() {
        x();
        if (!y() || (this.g.E() && !this.g.F())) {
            n().y();
            if (b()) {
                if (!(d().N() || y() || TextUtils.isEmpty(t().c()))) {
                    l().c();
                }
            } else if (e().w()) {
                if (!m().f("android.permission.INTERNET")) {
                    f().b().a("App is missing INTERNET permission");
                }
                if (!m().f("android.permission.ACCESS_NETWORK_STATE")) {
                    f().b().a("App is missing ACCESS_NETWORK_STATE permission");
                }
                if (!AppMeasurementReceiver.a(p())) {
                    f().b().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!AppMeasurementService.a(p())) {
                    f().b().a("AppMeasurementService not registered/enabled");
                }
                f().b().a("Uploading is not possible. App measurement disabled");
            }
            F();
            return;
        }
        f().b().a("Scheduler shutting down before Scion.start() called");
    }

    public aj d() {
        return this.d;
    }

    public bn e() {
        a(this.e);
        return this.e;
    }

    public bc f() {
        b(this.f);
        return this.f;
    }

    public bc g() {
        return (this.f == null || !this.f.E()) ? null : this.f;
    }

    public bt h() {
        b(this.g);
        return this.g;
    }

    public u i() {
        b(this.h);
        return this.h;
    }

    public bs j() {
        b(this.i);
        return this.i;
    }

    bt k() {
        return this.g;
    }

    public d l() {
        b(this.q);
        return this.q;
    }

    public ag m() {
        a(this.k);
        return this.k;
    }

    public ak n() {
        b(this.l);
        return this.l;
    }

    public bf o() {
        b(this.m);
        return this.m;
    }

    public Context p() {
        return this.c;
    }

    public vj q() {
        return this.n;
    }

    public i r() {
        b(this.o);
        return this.o;
    }

    public aq s() {
        b(this.p);
        return this.p;
    }

    public ba t() {
        b(this.r);
        return this.r;
    }

    public bk u() {
        if (this.s != null) {
            return this.s;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public ad v() {
        b(this.t);
        return this.t;
    }

    public ai w() {
        b(this.u);
        return this.u;
    }

    @WorkerThread
    public void x() {
        h().f();
    }

    protected boolean y() {
        return false;
    }

    long z() {
        return ((((q().a() + e().c()) / 1000) / 60) / 60) / 24;
    }
}
