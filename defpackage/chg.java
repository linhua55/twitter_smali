package defpackage;

import android.database.Cursor;
import android.support.v4.util.LruCache;
import chg.chi;
import chj;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: chg */
public class chg<T> extends chj<T> {
    private final chj<T> a;
    private final chi b;
    private WeakReference<Cursor> c;
    private final LruCache<Integer, T> d;

    public chg(chj<T> chj_T) {
        this.b = new chi();
        this.d = new LruCache(20);
        this.a = chj_T;
    }

    public final T a(Cursor cursor) {
        T t;
        Object obj = (this.c == null || this.c.get() != cursor) ? null : 1;
        Integer valueOf = Integer.valueOf(cursor.getPosition());
        if (obj != null) {
            t = this.d.get(valueOf);
        } else {
            a();
            b(cursor);
            t = null;
        }
        if (t != null) {
            return t;
        }
        t = this.a.a(cursor);
        this.d.put(valueOf, t);
        return t;
    }

    void a() {
        this.d.evictAll();
        b(null);
    }

    void b(Cursor cursor) {
        if (this.c != null) {
            Cursor cursor2 = (Cursor) this.c.get();
            if (cursor2 != null) {
                cursor2.unregisterDataSetObserver(this.b);
            }
        }
        if (cursor != null) {
            this.c = new WeakReference(cursor);
            cursor.registerDataSetObserver(this.b);
            return;
        }
        this.c = null;
    }
}
