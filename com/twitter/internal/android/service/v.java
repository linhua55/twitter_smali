package com.twitter.internal.android.service;

import java.util.concurrent.FutureTask;

/* compiled from: Twttr */
class v<S> extends FutureTask<S> implements Comparable<v> {
    public final int a;
    public final long b;

    public /* synthetic */ int compareTo(Object obj) {
        return a((v) obj);
    }

    v(w wVar, S s) {
        super(wVar, s);
        this.a = wVar.c;
        this.b = wVar.d;
    }

    public int a(v vVar) {
        int i = this.a - vVar.a;
        return i == 0 ? (int) (this.b - vVar.b) : i;
    }
}
