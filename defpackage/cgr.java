package defpackage;

import android.database.Cursor;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: cgr */
public class cgr<T> extends chd<T> implements cgs {
    private static final cgr a;
    private final Cursor b;

    static {
        a = new cgr(n.g(), null);
    }

    public static <T> cgr<T> b() {
        return (cgr) ObjectUtils.a(a);
    }

    public cgr(Iterable<T> iterable, Cursor cursor) {
        super(iterable);
        this.b = cursor;
    }

    public Cursor a() {
        return this.b;
    }
}
