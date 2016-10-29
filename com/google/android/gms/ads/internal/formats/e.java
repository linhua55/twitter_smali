package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
public class e extends dx implements i {
    private String a;
    private List<c> b;
    private String c;
    private di d;
    private String e;
    private String f;
    private a g;
    private Bundle h;
    private Object i;
    private h j;

    public e(String str, List list, String str2, di diVar, String str3, String str4, a aVar, Bundle bundle) {
        this.i = new Object();
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = diVar;
        this.e = str3;
        this.f = str4;
        this.g = aVar;
        this.h = bundle;
    }

    public String a() {
        return this.a;
    }

    public void a(h hVar) {
        synchronized (this.i) {
            this.j = hVar;
        }
    }

    public List b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public di d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public j g() {
        return m.a(this.j);
    }

    public Bundle h() {
        return this.h;
    }

    public void i() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public String j() {
        return "1";
    }

    public String k() {
        return BuildConfig.VERSION_NAME;
    }

    public a l() {
        return this.g;
    }
}
