package rx.subjects;

import rx.o;
import rx.p;
import rx.r;

/* compiled from: Twttr */
public abstract class k<T, R> extends o<R> implements r<T> {
    protected k(p<R> pVar) {
        super(pVar);
    }

    public final i<T, R> r() {
        if (getClass() == i.class) {
            return (i) this;
        }
        return new i(this);
    }
}
