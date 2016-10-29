package defpackage;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
/* renamed from: asj */
class asj implements ash {
    private static asj a;
    private final Map<asi, Integer> b;
    private final asd c;

    asj() {
        this(asi.f() ? new ase() : new ask());
    }

    asj(asd asd) {
        this.b = new ConcurrentHashMap();
        this.c = asd;
        this.c.a(this);
    }

    public static synchronized asj a() {
        asj asj;
        synchronized (asj.class) {
            if (a == null) {
                a = new asj();
            }
            asj = a;
        }
        return asj;
    }

    synchronized void a(asi asi) {
        this.b.put(asi, Integer.valueOf(0));
        if (this.b.size() == 1) {
            this.c.a();
        }
    }

    synchronized void b(asi asi) {
        if (this.b.size() == 1) {
            this.c.b();
        }
        this.b.remove(asi);
    }

    public void a(long j) {
        for (ash a : this.b.keySet()) {
            a.a(j);
        }
    }
}
