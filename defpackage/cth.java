package defpackage;

import ctf;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cth */
class cth<T> extends ctf<T> {
    private final Iterator<T> a;

    cth(Iterator<T> it) {
        this.a = it;
    }

    public boolean hasNext() {
        return this.a.hasNext();
    }

    protected T a() {
        return this.a.next();
    }
}
