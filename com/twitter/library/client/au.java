package com.twitter.library.client;

import android.net.Uri;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;

/* compiled from: Twttr */
public final class au {
    final Uri a;
    final Class<? extends BaseFragment> b;
    g c;
    CharSequence d;
    String e;
    Object f;
    int g;
    boolean h;
    int i;

    public au(Uri uri, Class<? extends BaseFragment> cls) {
        this.a = uri;
        this.i = uri.hashCode();
        this.b = cls;
    }

    public au a(g gVar) {
        this.c = gVar;
        return this;
    }

    public au a(CharSequence charSequence) {
        this.d = charSequence;
        return this;
    }

    public au a(String str) {
        this.e = str;
        return this;
    }

    public au a(int i) {
        this.g = i;
        return this;
    }

    public au b(int i) {
        this.i = i;
        return this;
    }

    public au a(boolean z) {
        this.h = z;
        return this;
    }

    public au a(Object obj) {
        this.f = obj;
        return this;
    }

    public at a() {
        return new at(this);
    }
}
