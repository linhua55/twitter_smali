package defpackage;

import com.twitter.util.object.ObjectUtils;
import cth;
import cti;
import ctj;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: ctf */
public abstract class ctf<T> extends cta<T> {
    private static final ctf a;

    static {
        a = new cti(null);
    }

    public static <T> Iterator<T> c() {
        return (Iterator) ObjectUtils.a(a);
    }

    public static <T> Iterator<T> a(T t) {
        return new ctj(t);
    }

    public static <T> Iterator<T> a(Iterator<T> it) {
        return it instanceof ctf ? it : new cth(it);
    }
}
