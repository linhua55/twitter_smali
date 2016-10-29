package defpackage;

import java.util.Comparator;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctq */
final class ctq implements Iterable<T> {
    final /* synthetic */ Iterable a;
    final /* synthetic */ Iterable b;
    final /* synthetic */ Comparator c;

    ctq(Iterable iterable, Iterable iterable2, Comparator comparator) {
        this.a = iterable;
        this.b = iterable2;
        this.c = comparator;
    }

    public Iterator<T> iterator() {
        return new ctr(this);
    }
}
