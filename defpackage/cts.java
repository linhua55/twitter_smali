package defpackage;

import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cts */
final class cts implements Iterable<T> {
    final /* synthetic */ Iterable[] a;

    cts(Iterable[] iterableArr) {
        this.a = iterableArr;
    }

    public Iterator<T> iterator() {
        return new ctt(this);
    }
}
