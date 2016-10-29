package com.facebook.datasource;

import defpackage.bx;

/* compiled from: Twttr */
public class o<T> extends AbstractDataSource<T> {
    private o() {
    }

    public static <T> o<T> j() {
        return new o();
    }

    public boolean a(T t, boolean z) {
        return super.a(bx.a((Object) t), z);
    }

    public boolean a(Throwable th) {
        return super.a((Throwable) bx.a((Object) th));
    }

    public boolean a(float f) {
        return super.a(f);
    }
}
