package defpackage;

import ctf;

/* compiled from: Twttr */
/* renamed from: ctj */
class ctj<T> extends ctf<T> {
    private final T a;
    private boolean b;

    ctj(T t) {
        this.b = true;
        this.a = t;
    }

    public boolean hasNext() {
        return this.b;
    }

    public T a() {
        this.b = false;
        return this.a;
    }
}
