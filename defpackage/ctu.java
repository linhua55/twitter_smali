package defpackage;

import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctu */
final class ctu implements Iterable<T> {
    final /* synthetic */ Iterable a;

    ctu(Iterable iterable) {
        this.a = iterable;
    }

    public Iterator<T> iterator() {
        return new ctv(this);
    }
}
