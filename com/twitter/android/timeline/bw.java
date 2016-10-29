package com.twitter.android.timeline;

import cni;
import com.twitter.model.timeline.aj;
import com.twitter.model.topic.i;

/* compiled from: Twttr */
public class bw {
    final ar a;
    final long b;
    final aj c;
    String d;
    String e;
    String f;
    cni g;
    i h;
    boolean i;
    String j;
    String k;
    int l;
    int m;

    public bw(ar arVar, long j, aj ajVar) {
        this.a = arVar;
        this.b = j;
        this.c = ajVar;
    }

    public bw a(String str) {
        this.d = str;
        return this;
    }

    public bw b(String str) {
        this.e = str;
        return this;
    }

    public bw c(String str) {
        this.f = str;
        return this;
    }

    public bw a(cni cni) {
        this.g = cni;
        return this;
    }

    public bw a(i iVar) {
        this.h = iVar;
        return this;
    }

    public bw a(boolean z) {
        this.i = z;
        return this;
    }

    public bw d(String str) {
        this.j = str;
        return this;
    }

    public bw e(String str) {
        this.k = str;
        return this;
    }

    public bw a(int i) {
        this.l = i;
        return this;
    }

    public bw b(int i) {
        this.m = i;
        return this;
    }

    public bv a() {
        return new bv(this);
    }
}
