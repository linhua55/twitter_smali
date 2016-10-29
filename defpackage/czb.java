package defpackage;

import java.util.Iterator;
import rx.internal.util.atomic.LinkedQueueNode;

/* compiled from: Twttr */
/* renamed from: czb */
abstract class czb<E> extends czc<E> {
    czb() {
    }

    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    public final int size() {
        LinkedQueueNode a = a();
        LinkedQueueNode b = b();
        int i = 0;
        while (a != b && i < Integer.MAX_VALUE) {
            LinkedQueueNode c;
            do {
                c = a.c();
            } while (c == null);
            i++;
            a = c;
        }
        return i;
    }

    public final boolean isEmpty() {
        return a() == b();
    }
}
