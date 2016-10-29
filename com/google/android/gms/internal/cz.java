package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;

@oi
public final class cz extends dc {
    private final r a;
    private final String b;
    private final String c;

    public cz(r rVar, String str, String str2) {
        this.a = rVar;
        this.b = str;
        this.c = str2;
    }

    public String a() {
        return this.b;
    }

    public void a(j jVar) {
        if (jVar != null) {
            this.a.b((View) m.a(jVar));
        }
    }

    public String b() {
        return this.c;
    }

    public void c() {
        this.a.z();
    }

    public void d() {
        this.a.A();
    }
}
