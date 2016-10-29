package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.ar;
import java.util.LinkedHashMap;
import java.util.Map;

@oi
public class cl {
    private boolean a;
    private String b;
    private Map<String, String> c;
    private Context d;
    private String e;

    public cl(Context context, String str) {
        this.d = null;
        this.e = null;
        this.d = context;
        this.e = str;
        this.a = ((Boolean) cj.G.c()).booleanValue();
        this.b = (String) cj.H.c();
        this.c = new LinkedHashMap();
        this.c.put("s", "gmob_sdk");
        this.c.put("v", "3");
        this.c.put("os", VERSION.RELEASE);
        this.c.put("sdk", VERSION.SDK);
        this.c.put("device", ar.e().d());
        this.c.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        pb a = ar.k().a(this.d);
        this.c.put("network_coarse", Integer.toString(a.m));
        this.c.put("network_fine", Integer.toString(a.n));
    }

    boolean a() {
        return this.a;
    }

    String b() {
        return this.b;
    }

    Context c() {
        return this.d;
    }

    String d() {
        return this.e;
    }

    Map<String, String> e() {
        return this.c;
    }
}
