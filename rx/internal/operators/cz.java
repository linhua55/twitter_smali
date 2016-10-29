package rx.internal.operators;

import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public final class cz<T> implements q<T, T> {
    final int a;

    public cz(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("count cannot be negative");
        }
        this.a = i;
    }

    public am<? super T> a(am<? super T> amVar) {
        an dbVar = new db(amVar, this.a);
        amVar.a(dbVar);
        amVar.a(new da(this, dbVar));
        return dbVar;
    }
}
