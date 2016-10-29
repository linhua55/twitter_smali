package defpackage;

import cta;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cui */
public class cui<T> extends cta<T> {
    private final Iterator<T> a;
    private T b;
    private boolean c;

    public cui(Iterator<T> it) {
        this.a = it;
        d();
    }

    public boolean hasNext() {
        return this.c;
    }

    public T c() {
        b();
        return this.b;
    }

    protected T a() {
        T t = this.b;
        d();
        return t;
    }

    private void d() {
        this.c = this.a.hasNext();
        if (this.c) {
            this.b = this.a.next();
        }
    }
}
