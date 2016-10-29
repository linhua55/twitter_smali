package defpackage;

import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctw */
final class ctw implements Iterable<T> {
    final /* synthetic */ Object[] a;

    ctw(Object[] objArr) {
        this.a = objArr;
    }

    public Iterator<T> iterator() {
        return new ctx(this);
    }
}
