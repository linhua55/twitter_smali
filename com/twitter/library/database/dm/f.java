package com.twitter.library.database.dm;

import com.twitter.model.core.TwitterUser;
import defpackage.bie;
import java.util.List;

/* compiled from: Twttr */
public final class f extends com.twitter.util.object.f<d> {
    String a;
    long b;
    String c;
    String d;
    String e;
    boolean f;
    long g;
    boolean h;
    List<TwitterUser> i;
    boolean j;
    boolean k;
    bie l;

    protected /* synthetic */ Object c() {
        return d();
    }

    public f a(String str) {
        this.a = str;
        return this;
    }

    public f a(long j) {
        this.b = j;
        return this;
    }

    public f b(String str) {
        this.c = str;
        return this;
    }

    public f c(String str) {
        this.d = str;
        return this;
    }

    public f d(String str) {
        this.e = str;
        return this;
    }

    public f a(boolean z) {
        this.f = z;
        return this;
    }

    public f b(long j) {
        this.g = j;
        return this;
    }

    public f b(boolean z) {
        this.h = z;
        return this;
    }

    public f a(List<TwitterUser> list) {
        this.i = list;
        return this;
    }

    public f c(boolean z) {
        this.j = z;
        return this;
    }

    public f d(boolean z) {
        this.k = z;
        return this;
    }

    protected d d() {
        return new d(this, null);
    }
}
