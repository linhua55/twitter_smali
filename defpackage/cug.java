package defpackage;

import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cug */
final class cug implements Iterable<T> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ int b;

    cug(Iterable iterable, int i) {
        this.a = iterable;
        this.b = i;
    }

    public Iterator<T> iterator() {
        return new cuh(this);
    }
}
