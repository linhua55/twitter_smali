package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import ir;
import java.util.ArrayList;
import java.util.List;

@oi
public class la extends ku {
    private final ir a;

    public la(ir irVar) {
        this.a = irVar;
    }

    public String a() {
        return this.a.e();
    }

    public void a(j jVar) {
        this.a.b((View) m.a(jVar));
    }

    public List b() {
        List<b> f = this.a.f();
        if (f == null) {
            return null;
        }
        List arrayList = new ArrayList();
        for (b bVar : f) {
            arrayList.add(new c(bVar.a(), bVar.b(), bVar.c()));
        }
        return arrayList;
    }

    public void b(j jVar) {
        this.a.a((View) m.a(jVar));
    }

    public String c() {
        return this.a.g();
    }

    public di d() {
        b h = this.a.h();
        return h != null ? new c(h.a(), h.b(), h.c()) : null;
    }

    public String e() {
        return this.a.i();
    }

    public String f() {
        return this.a.j();
    }

    public void g() {
        this.a.d();
    }

    public boolean h() {
        return this.a.a();
    }

    public boolean i() {
        return this.a.b();
    }

    public Bundle j() {
        return this.a.c();
    }
}
