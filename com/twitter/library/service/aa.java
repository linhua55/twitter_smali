package com.twitter.library.service;

import android.os.Bundle;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.api.RateLimit;
import com.twitter.library.network.an;

/* compiled from: Twttr */
public class aa {
    private int a;
    private boolean b;
    public final Bundle c;
    private Exception d;
    private String e;
    private RateLimit f;
    private HttpOperation g;
    private w h;
    private boolean i;

    public aa() {
        this.i = false;
        this.c = new Bundle();
    }

    public void a(int i) {
        a(i, null, null);
    }

    public void a(int i, String str) {
        a(i, str, null);
    }

    public void a(int i, Exception exception) {
        a(i, exception.getMessage(), exception);
    }

    public void a(int i, String str, Exception exception) {
        this.b = false;
        this.a = i;
        this.e = str;
        this.d = exception;
    }

    public void a(HttpOperation httpOperation) {
        this.b = httpOperation.k();
        k l = httpOperation.l();
        this.a = l.a;
        this.d = l.c;
        this.e = l.b;
        this.f = an.a(httpOperation);
        this.g = httpOperation;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public boolean b() {
        return this.b;
    }

    public Exception c() {
        return this.d;
    }

    public int d() {
        return this.a;
    }

    public String e() {
        return this.e;
    }

    public HttpOperation f() {
        return this.g;
    }

    public k g() {
        if (this.g != null) {
            return this.g.l();
        }
        return null;
    }

    public RateLimit h() {
        return this.f;
    }

    public void a(w wVar) {
        this.h = wVar;
    }

    public w i() {
        return this.h;
    }

    public void a(aa aaVar) {
        this.b = aaVar.b;
        this.a = aaVar.a;
        this.e = aaVar.e;
        this.d = aaVar.d;
        this.f = aaVar.f;
        this.g = aaVar.g;
        this.c.putAll(aaVar.c);
        this.h = aaVar.h;
    }
}
