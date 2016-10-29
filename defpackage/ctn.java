package defpackage;

import ctk;

/* compiled from: Twttr */
/* renamed from: ctn */
class ctn<T> extends ctk<T> {
    private final T a;

    ctn(T t, int i) {
        super(1, i);
        this.a = t;
    }

    protected T a(int i) {
        return this.a;
    }
}
