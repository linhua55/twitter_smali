package com.google.android.gms.ads.internal.formats;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.eb;
import com.google.android.gms.internal.oi;
import java.util.Arrays;
import java.util.List;

@oi
public class f extends eb implements i {
    private final a a;
    private final String b;
    private final SimpleArrayMap<String, c> c;
    private final SimpleArrayMap<String, String> d;
    private final Object e;
    private h f;

    public f(String str, SimpleArrayMap<String, c> simpleArrayMap, SimpleArrayMap<String, String> simpleArrayMap2, a aVar) {
        this.e = new Object();
        this.b = str;
        this.c = simpleArrayMap;
        this.d = simpleArrayMap2;
        this.a = aVar;
    }

    public String a(String str) {
        return (String) this.d.get(str);
    }

    public List<String> a() {
        int i = 0;
        String[] strArr = new String[(this.c.size() + this.d.size())];
        int i2 = 0;
        for (int i3 = 0; i3 < this.c.size(); i3++) {
            strArr[i2] = (String) this.c.keyAt(i3);
            i2++;
        }
        while (i < this.d.size()) {
            strArr[i2] = (String) this.d.keyAt(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    public void a(h hVar) {
        synchronized (this.e) {
            this.f = hVar;
        }
    }

    public di b(String str) {
        return (di) this.c.get(str);
    }

    public void b() {
        synchronized (this.e) {
            if (this.f == null) {
                b.b("Attempt to perform recordImpression before ad initialized.");
                return;
            }
            this.f.a();
        }
    }

    public void c(String str) {
        synchronized (this.e) {
            if (this.f == null) {
                b.b("Attempt to call performClick before ad initialized.");
                return;
            }
            this.f.a(str, null, null, null);
        }
    }

    public String j() {
        return "3";
    }

    public String k() {
        return this.b;
    }

    public a l() {
        return this.a;
    }
}
