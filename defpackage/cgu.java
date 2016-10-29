package defpackage;

import cgv;
import cgw;
import cgx;
import com.twitter.util.object.ObjectUtils;
import java.io.Closeable;
import java.util.Iterator;
import java.util.ListIterator;

/* compiled from: Twttr */
/* renamed from: cgu */
public abstract class cgu<T> implements Closeable, Iterable<T> {
    private static final cgu a;

    public abstract T a(int i);

    public abstract int aU_();

    static {
        a = new cgv();
    }

    public static <T> cgu<T> f() {
        return (cgu) ObjectUtils.a(a);
    }

    public boolean g() {
        return aU_() == 0;
    }

    public Iterator<T> iterator() {
        return new cgw(this);
    }

    public ListIterator<T> h() {
        return m(0);
    }

    public ListIterator<T> m(int i) {
        return new cgx(this, aU_(), i);
    }
}
