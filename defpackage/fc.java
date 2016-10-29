package defpackage;

import bx;
import cb;
import com.facebook.cache.common.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
/* renamed from: fc */
public class fc {
    private static final Class<?> a;
    @GuardedBy("this")
    private Map<a, gj> b;

    static {
        a = fc.class;
    }

    private fc() {
        this.b = new HashMap();
    }

    public static fc a() {
        return new fc();
    }

    public synchronized void a(a aVar, gj gjVar) {
        bx.a(aVar);
        bx.a(gj.e(gjVar));
        gj.d((gj) this.b.put(aVar, gj.a(gjVar)));
        c();
    }

    public void b() {
        synchronized (this) {
            List arrayList = new ArrayList(this.b.values());
            this.b.clear();
        }
        for (int i = 0; i < arrayList.size(); i++) {
            gj gjVar = (gj) arrayList.get(i);
            if (gjVar != null) {
                gjVar.close();
            }
        }
    }

    public synchronized boolean b(a aVar, gj gjVar) {
        boolean z;
        bx.a(aVar);
        bx.a(gjVar);
        bx.a(gj.e(gjVar));
        gj gjVar2 = (gj) this.b.get(aVar);
        if (gjVar2 == null) {
            z = false;
        } else {
            com.facebook.common.references.a c = gjVar2.c();
            com.facebook.common.references.a c2 = gjVar.c();
            if (!(c == null || c2 == null)) {
                try {
                    if (c.a() == c2.a()) {
                        this.b.remove(aVar);
                        com.facebook.common.references.a.c(c2);
                        com.facebook.common.references.a.c(c);
                        gj.d(gjVar2);
                        c();
                        z = true;
                    }
                } catch (Throwable th) {
                    com.facebook.common.references.a.c(c2);
                    com.facebook.common.references.a.c(c);
                    gj.d(gjVar2);
                }
            }
            com.facebook.common.references.a.c(c2);
            com.facebook.common.references.a.c(c);
            gj.d(gjVar2);
            z = false;
        }
        return z;
    }

    public synchronized gj a(a aVar) {
        gj gjVar;
        bx.a(aVar);
        gjVar = (gj) this.b.get(aVar);
        if (gjVar != null) {
            synchronized (gjVar) {
                if (gj.e(gjVar)) {
                    gj a = gj.a(gjVar);
                    gjVar = a;
                } else {
                    this.b.remove(aVar);
                    cb.b(a, "Found closed reference %d for key %s (%d)", new Object[]{Integer.valueOf(System.identityHashCode(gjVar)), aVar.toString(), Integer.valueOf(System.identityHashCode(aVar))});
                    gjVar = null;
                }
            }
        }
        return gjVar;
    }

    private synchronized void c() {
        cb.a(a, "Count = %d", Integer.valueOf(this.b.size()));
    }
}
