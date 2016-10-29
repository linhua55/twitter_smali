package com.twitter.model.core;

import cjs;
import com.twitter.model.av.VideoCta;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
public class x extends cs<MediaEntity, x> {
    long a;
    long e;
    long f;
    String g;
    Type h;
    Size i;
    List<bm> j;
    aj k;
    List<ag> l;
    List<cjs> m;
    VideoCta n;
    String o;
    boolean p;
    String q;
    TwitterUser r;
    boolean s;
    String t;
    ad u;

    protected /* synthetic */ Object c() {
        return d();
    }

    public x() {
        this.h = Type.a;
        this.i = Size.b;
        this.p = false;
    }

    public x(MediaEntity mediaEntity) {
        super(mediaEntity);
        this.h = Type.a;
        this.i = Size.b;
        this.p = false;
        this.a = mediaEntity.c;
        this.e = mediaEntity.i;
        this.f = mediaEntity.j;
        this.g = mediaEntity.l;
        this.h = mediaEntity.m;
        this.i = mediaEntity.n;
        this.j = mediaEntity.q;
        this.k = mediaEntity.o;
        this.l = mediaEntity.p;
        this.m = mediaEntity.r;
        this.n = mediaEntity.s;
        this.o = mediaEntity.t;
        this.p = mediaEntity.u;
        this.q = mediaEntity.v;
        this.r = mediaEntity.k;
        this.s = mediaEntity.w;
        this.t = mediaEntity.x;
        this.u = mediaEntity.y;
    }

    public x a(long j) {
        this.a = j;
        return this;
    }

    public x b(long j) {
        this.e = j;
        return this;
    }

    public x c(long j) {
        this.f = j;
        return this;
    }

    public x a(String str) {
        this.g = str;
        return this;
    }

    public x a(Type type) {
        this.h = type;
        return this;
    }

    public x a(Size size) {
        this.i = size;
        return this;
    }

    public x a(List<bm> list) {
        this.j = list;
        return this;
    }

    public x a(aj ajVar) {
        this.k = ajVar;
        return this;
    }

    public x b(List<ag> list) {
        this.l = list;
        return this;
    }

    public x c(List<cjs> list) {
        this.m = list;
        return this;
    }

    public x a(VideoCta videoCta) {
        this.n = videoCta;
        return this;
    }

    public x b(String str) {
        this.o = str;
        return this;
    }

    public x a(boolean z) {
        this.p = z;
        return this;
    }

    public x c(String str) {
        this.q = str;
        return this;
    }

    public x a(TwitterUser twitterUser) {
        this.r = twitterUser;
        return this;
    }

    public x b(boolean z) {
        this.s = z;
        return this;
    }

    public x d(String str) {
        this.t = str;
        return this;
    }

    public x a(ad adVar) {
        this.u = adVar;
        return this;
    }

    protected MediaEntity d() {
        return new MediaEntity(this);
    }
}
