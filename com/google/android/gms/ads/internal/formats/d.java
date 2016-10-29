package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.oi;
import java.util.List;

@oi
public class d extends dt implements i {
    private String a;
    private List<c> b;
    private String c;
    private di d;
    private String e;
    private double f;
    private String g;
    private String h;
    private a i;
    private Bundle j;
    private Object k;
    private h l;

    public d(String str, List list, String str2, di diVar, String str3, double d, String str4, String str5, a aVar, Bundle bundle) {
        this.k = new Object();
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = diVar;
        this.e = str3;
        this.f = d;
        this.g = str4;
        this.h = str5;
        this.i = aVar;
        this.j = bundle;
    }

    public String a() {
        return this.a;
    }

    public void a(h hVar) {
        synchronized (this.k) {
            this.l = hVar;
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

    public double f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    public String h() {
        return this.h;
    }

    public j i() {
        return m.a(this.l);
    }

    public String j() {
        return "2";
    }

    public String k() {
        return BuildConfig.VERSION_NAME;
    }

    public a l() {
        return this.i;
    }

    public Bundle m() {
        return this.j;
    }

    public void n() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = 0.0d;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
    }
}
