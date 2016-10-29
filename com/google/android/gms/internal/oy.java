package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@oi
public final class oy {
    private String a;
    private String b;
    private String c;
    private List<String> d;
    private String e;
    private String f;
    private List<String> g;
    private long h;
    private boolean i;
    private final long j;
    private List<String> k;
    private long l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private int r;
    private String s;
    private boolean t;
    private boolean u;
    private RewardItemParcel v;
    private List<String> w;
    private List<String> x;
    private boolean y;
    private final AdRequestInfoParcel z;

    public oy(AdRequestInfoParcel adRequestInfoParcel) {
        this.h = -1;
        this.i = false;
        this.j = -1;
        this.l = -1;
        this.m = -1;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = true;
        this.r = 0;
        this.s = BuildConfig.VERSION_NAME;
        this.t = false;
        this.u = false;
        this.y = false;
        this.z = adRequestInfoParcel;
    }

    static String a(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty()) ? null : (String) list.get(0);
    }

    static long b(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            try {
                return (long) (Float.parseFloat(str2) * 1000.0f);
            } catch (NumberFormatException e) {
                b.d("Could not parse float from " + str + " header: " + str2);
            }
        }
        return -1;
    }

    private void b(Map<String, List<String>> map) {
        this.a = a(map, "X-Afma-Ad-Size");
    }

    static List<String> c(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        if (!(list == null || list.isEmpty())) {
            String str2 = (String) list.get(0);
            if (str2 != null) {
                return Arrays.asList(str2.trim().split("\\s+"));
            }
        }
        return null;
    }

    private void c(Map<String, List<String>> map) {
        List c = c(map, "X-Afma-Click-Tracking-Urls");
        if (c != null) {
            this.d = c;
        }
    }

    private void d(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Debug-Dialog");
        if (list != null && !list.isEmpty()) {
            this.e = (String) list.get(0);
        }
    }

    private boolean d(Map<String, List<String>> map, String str) {
        List list = (List) map.get(str);
        return (list == null || list.isEmpty() || !Boolean.valueOf((String) list.get(0)).booleanValue()) ? false : true;
    }

    private void e(Map<String, List<String>> map) {
        List c = c(map, "X-Afma-Tracking-Urls");
        if (c != null) {
            this.g = c;
        }
    }

    private void f(Map<String, List<String>> map) {
        long b = b(map, "X-Afma-Interstitial-Timeout");
        if (b != -1) {
            this.h = b;
        }
    }

    private void g(Map<String, List<String>> map) {
        this.f = a(map, "X-Afma-ActiveView");
    }

    private void h(Map<String, List<String>> map) {
        this.o = "native".equals(a(map, "X-Afma-Ad-Format"));
    }

    private void i(Map<String, List<String>> map) {
        this.n |= d(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void j(Map<String, List<String>> map) {
        this.i |= d(map, "X-Afma-Mediation");
    }

    private void k(Map<String, List<String>> map) {
        List c = c(map, "X-Afma-Manual-Tracking-Urls");
        if (c != null) {
            this.k = c;
        }
    }

    private void l(Map<String, List<String>> map) {
        long b = b(map, "X-Afma-Refresh-Rate");
        if (b != -1) {
            this.l = b;
        }
    }

    private void m(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Orientation");
        if (list != null && !list.isEmpty()) {
            String str = (String) list.get(0);
            if ("portrait".equalsIgnoreCase(str)) {
                this.m = ar.g().b();
            } else if ("landscape".equalsIgnoreCase(str)) {
                this.m = ar.g().a();
            }
        }
    }

    private void n(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Use-HTTPS");
        if (list != null && !list.isEmpty()) {
            this.p = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void o(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Content-Url-Opted-Out");
        if (list != null && !list.isEmpty()) {
            this.q = Boolean.valueOf((String) list.get(0)).booleanValue();
        }
    }

    private void p(Map<String, List<String>> map) {
        List<String> c = c(map, "X-Afma-OAuth-Token-Status");
        this.r = 0;
        if (c != null) {
            for (String str : c) {
                if ("Clear".equalsIgnoreCase(str)) {
                    this.r = 1;
                    return;
                } else if ("No-Op".equalsIgnoreCase(str)) {
                    this.r = 0;
                    return;
                }
            }
        }
    }

    private void q(Map<String, List<String>> map) {
        List list = (List) map.get("X-Afma-Gws-Query-Id");
        if (list != null && !list.isEmpty()) {
            this.s = (String) list.get(0);
        }
    }

    private void r(Map<String, List<String>> map) {
        String a = a(map, "X-Afma-Fluid");
        if (a != null && a.equals("height")) {
            this.t = true;
        }
    }

    private void s(Map<String, List<String>> map) {
        this.u = "native_express".equals(a(map, "X-Afma-Ad-Format"));
    }

    private void t(Map<String, List<String>> map) {
        this.v = RewardItemParcel.a(a(map, "X-Afma-Rewards"));
    }

    private void u(Map<String, List<String>> map) {
        if (this.w == null) {
            this.w = c(map, "X-Afma-Reward-Video-Start-Urls");
        }
    }

    private void v(Map<String, List<String>> map) {
        if (this.x == null) {
            this.x = c(map, "X-Afma-Reward-Video-Complete-Urls");
        }
    }

    private void w(Map<String, List<String>> map) {
        this.y |= d(map, "X-Afma-Use-Displayed-Impression");
    }

    public AdResponseParcel a(long j) {
        return new AdResponseParcel(this.z, this.b, this.c, this.d, this.g, this.h, this.i, -1, this.k, this.l, this.m, this.a, j, this.e, this.f, this.n, this.o, this.p, this.q, false, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y);
    }

    public void a(String str, Map<String, List<String>> map, String str2) {
        this.b = str;
        this.c = str2;
        a((Map) map);
    }

    public void a(Map<String, List<String>> map) {
        b(map);
        c(map);
        d(map);
        e(map);
        f(map);
        j(map);
        k(map);
        l(map);
        m(map);
        g(map);
        n(map);
        i(map);
        h(map);
        o(map);
        p(map);
        q(map);
        r(map);
        s(map);
        t(map);
        u(map);
        v(map);
        w(map);
    }
}
