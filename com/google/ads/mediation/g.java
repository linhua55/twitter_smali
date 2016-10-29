package com.google.ads.mediation;

import com.google.android.gms.ads.a;
import com.google.android.gms.ads.formats.f;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.ads.formats.i;
import io;

final class g extends a implements com.google.android.gms.ads.formats.g, i, com.google.android.gms.ads.internal.client.a {
    final a a;
    final io b;

    public g(a aVar, io ioVar) {
        this.a = aVar;
        this.b = ioVar;
    }

    public void a() {
    }

    public void a(int i) {
        this.b.a(this.a, i);
    }

    public void a(f fVar) {
        this.b.a(this.a, new c(fVar));
    }

    public void a(h hVar) {
        this.b.a(this.a, new d(hVar));
    }

    public void b() {
        this.b.a(this.a);
    }

    public void c() {
        this.b.b(this.a);
    }

    public void d() {
        this.b.c(this.a);
    }

    public void e() {
        this.b.d(this.a);
    }
}
