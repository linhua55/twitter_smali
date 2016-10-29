package defpackage;

import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
/* renamed from: bbn */
public class bbn {
    private static final bbk a;
    private static final List<bbm> b;

    static {
        a = new bbk();
        b = new CopyOnWriteArrayList();
    }

    private bbn() {
    }

    public static bbk a() {
        return a;
    }

    public static boolean b() {
        return a.c();
    }

    public static void a(bbm bbm) {
        cqf.a(bbn.class);
        b.add(bbm);
    }

    public static void a(bbl bbl) {
        if (!b.isEmpty() && bbl.b()) {
            Map e = a.e();
            for (bbm a : b) {
                a.a(bbl, e);
            }
        }
    }

    public static synchronized void b(bbl bbl) {
        synchronized (bbn.class) {
            if (!b.isEmpty() && bbl.b()) {
                Map e = a.e();
                for (bbm b : b) {
                    b.b(bbl, e);
                }
            }
        }
    }

    public static void a(Throwable th) {
        if (bbn.c(th)) {
            bbr.a((OutOfMemoryError) th, false);
        } else {
            bbn.a(new bbl(th));
        }
    }

    public static synchronized void b(Throwable th) {
        synchronized (bbn.class) {
            if (bbn.c(th)) {
                bbr.a((OutOfMemoryError) th, true);
            } else {
                bbn.b(new bbl(th));
            }
        }
    }

    private static boolean c(Throwable th) {
        while (th != null) {
            if (bbr.b(th.getClass())) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
