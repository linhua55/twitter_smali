package defpackage;

import android.support.v4.util.LruCache;
import bzy.bzz;
import com.twitter.util.h;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bzy */
abstract class bzy<T, V> {
    protected HashMap<Long, bzz> a;
    protected LruCache<Long, V> b;
    private final boolean c;

    protected abstract void a(T t, long j, V v);

    bzy() {
        this(h.e());
    }

    bzy(boolean z) {
        this.c = z;
        this.a = new HashMap();
        this.b = new LruCache(10);
    }

    public void a(long j, T t) {
        if (t != null) {
            bzz a = a(j);
            if (!a.a.contains(t)) {
                a.a.add(t);
                if (a.b != null) {
                    a(t, j, a.b);
                }
            } else if (this.c) {
                throw new IllegalArgumentException("Duplicate listener");
            }
        } else if (this.c) {
            throw new IllegalArgumentException("Null listener");
        }
    }

    public void b(long j, T t) {
        if (t != null) {
            bzz bzz = (bzz) this.a.get(Long.valueOf(j));
            if (bzz != null) {
                if (bzz.a != null) {
                    bzz.a.remove(t);
                }
                if (bzz.a.size() == 0) {
                    if (bzz.b != null) {
                        this.b.put(Long.valueOf(j), bzz.b);
                    }
                    this.a.remove(Long.valueOf(j));
                }
            }
        } else if (this.c) {
            throw new IllegalArgumentException("Null listener");
        }
    }

    public void c(long j, V v) {
        a(j, v, null, true);
    }

    public void a(long j, V v, T t, boolean z) {
        if (v != null) {
            bzz bzz = (bzz) this.a.get(Long.valueOf(j));
            if (bzz != null) {
                if (bzz.b == null || z) {
                    bzz.b = v;
                    Iterator it = bzz.a.iterator();
                    while (it.hasNext()) {
                        T next = it.next();
                        if (next != t) {
                            a(next, j, v);
                        }
                    }
                }
            } else if (this.b.get(Long.valueOf(j)) == null || z) {
                this.b.put(Long.valueOf(j), v);
            }
        } else if (this.c) {
            throw new IllegalArgumentException("Null data");
        }
    }

    private bzz a(long j) {
        bzz bzz = (bzz) this.a.get(Long.valueOf(j));
        if (bzz != null) {
            return bzz;
        }
        bzz = new bzz(this);
        bzz.b = this.b.remove(Long.valueOf(j));
        this.a.put(Long.valueOf(j), bzz);
        return bzz;
    }
}
