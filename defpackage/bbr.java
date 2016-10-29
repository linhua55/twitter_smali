package defpackage;

import com.twitter.util.m;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
/* renamed from: bbr */
public class bbr {
    private static final List<bbt> a;
    private static final List<bbs> b;
    private static final List<Class> c;
    private static long d;

    static {
        a = new CopyOnWriteArrayList();
        b = new CopyOnWriteArrayList();
        c = new CopyOnWriteArrayList(Collections.singletonList(OutOfMemoryError.class));
    }

    private bbr() {
    }

    public static void a(Class cls) {
        c.add(cls);
    }

    public static boolean b(Class cls) {
        for (Class isAssignableFrom : c) {
            if (isAssignableFrom.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public static void a(bbt bbt) {
        a.add(bbt);
    }

    public static void a(bbs bbs) {
        b.add(bbs);
    }

    public static void a(OutOfMemoryError outOfMemoryError) {
        bbr.a(outOfMemoryError, false);
    }

    public static void a(OutOfMemoryError outOfMemoryError, boolean z) {
        bbr.a(outOfMemoryError, z, null);
    }

    public static synchronized void a(OutOfMemoryError outOfMemoryError, boolean z, Map<String, Object> map) {
        synchronized (bbr.class) {
            for (bbt a : a) {
                a.a(outOfMemoryError);
            }
            if (bbr.a()) {
                bbq b = bbr.b(outOfMemoryError, z, map);
                if (b != null) {
                    bbr.a(b, z);
                } else {
                    bbn.a((Throwable) outOfMemoryError);
                }
            }
        }
    }

    private static void a(bbq bbq, boolean z) {
        if (z) {
            try {
                bbn.b((bbl) bbq);
                return;
            } catch (OutOfMemoryError e) {
                return;
            } catch (Throwable e2) {
                bbn.a(e2);
                return;
            }
        }
        bbn.a((bbl) bbq);
    }

    private static bbq b(OutOfMemoryError outOfMemoryError, boolean z, Map<String, Object> map) {
        Throwable th;
        bbq bbq = null;
        try {
            bbq bbq2 = new bbq(outOfMemoryError);
            try {
                for (bbs a : b) {
                    a.a(outOfMemoryError, bbq2, z);
                }
                if (map != null) {
                    for (Entry entry : bbq2.a().entrySet()) {
                        bbq2.a((String) entry.getKey(), entry.getValue());
                    }
                }
                return bbq2;
            } catch (OutOfMemoryError e) {
                return bbq2;
            } catch (Throwable e2) {
                th = e2;
                bbq = bbq2;
                bbn.a(th);
                return bbq;
            }
        } catch (OutOfMemoryError e3) {
            return null;
        } catch (Exception e4) {
            th = e4;
            bbn.a(th);
            return bbq;
        }
    }

    private static boolean a() {
        boolean z;
        long b = m.b();
        synchronized (bbr.class) {
            z = b - d > 60000;
            if (z) {
                d = b;
            }
        }
        return z;
    }
}
