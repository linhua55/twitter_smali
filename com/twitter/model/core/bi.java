package com.twitter.model.core;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class bi extends f<bg> {
    final m<cr> a;
    final ab b;
    final m<ap> c;
    final m<q> d;
    final m<b> e;

    protected /* synthetic */ Object c() {
        return f();
    }

    public bi() {
        this.a = new m();
        this.b = new ab();
        this.c = new m();
        this.d = new m();
        this.e = new m();
    }

    public bi(bg bgVar) {
        this.a = new m(bgVar.c);
        this.b = new ab(bgVar.d);
        this.c = new m(bgVar.e);
        this.d = new m(bgVar.f);
        this.e = new m(bgVar.g);
    }

    public bi d() {
        this.a.e();
        this.b.e();
        this.c.e();
        this.d.e();
        this.e.e();
        return this;
    }

    public bi e() {
        this.d.e();
        return this;
    }

    public bi a(j<cr> jVar) {
        this.a.a((j) jVar);
        return this;
    }

    public bi a(cr crVar) {
        this.a.a((e) crVar);
        return this;
    }

    public bi b(cr crVar) {
        this.a.b(crVar);
        return this;
    }

    public bi a(z zVar) {
        this.b.a((j) zVar);
        return this;
    }

    public bi a(MediaEntity mediaEntity) {
        this.b.b(mediaEntity);
        return this;
    }

    public bi b(j<ap> jVar) {
        this.c.a((j) jVar);
        return this;
    }

    public bi a(ap apVar) {
        this.c.a((e) apVar);
        return this;
    }

    public bi c(j<q> jVar) {
        this.d.a((j) jVar);
        return this;
    }

    public bi d(j<b> jVar) {
        this.e.a((j) jVar);
        return this;
    }

    protected bg f() {
        return new bg(this);
    }
}
