package com.twitter.model.core;

import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class ch extends f<cg> {
    private boolean a;
    private boolean b;
    private int c;
    private int d;
    private long e;
    private long f;
    private long g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private TwitterUser n;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ch a(boolean z) {
        this.a = z;
        return this;
    }

    public ch b(boolean z) {
        this.b = z;
        return this;
    }

    public ch a(int i) {
        this.c = i;
        return this;
    }

    public ch b(int i) {
        this.d = i;
        return this;
    }

    public ch a(long j) {
        this.e = j;
        return this;
    }

    public ch b(long j) {
        this.f = j;
        return this;
    }

    public ch c(long j) {
        this.g = j;
        return this;
    }

    public ch a(String str) {
        this.h = str;
        return this;
    }

    public ch b(String str) {
        this.i = str;
        return this;
    }

    public ch c(String str) {
        this.j = str;
        return this;
    }

    public ch d(String str) {
        this.k = str;
        return this;
    }

    public ch e(String str) {
        this.l = str;
        return this;
    }

    public ch f(String str) {
        this.m = str;
        return this;
    }

    public ch a(TwitterUser twitterUser) {
        this.n = twitterUser;
        return this;
    }

    public boolean bo_() {
        return aj.b(this.i);
    }

    protected cg d() {
        return new cg(this);
    }
}
