package defpackage;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cxl */
public final class cxl {
    private static final Set<String> a;
    private static final List<String> b;
    private static cxm c;
    private static final Map<String, cxm> d;
    private static final List<String> e;

    static {
        a = new HashSet();
        b = new ArrayList();
        c = new cxp();
        d = new HashMap();
        e = new ArrayList();
    }

    static synchronized void a(int i, String str, String str2, Throwable th, List<? extends cxr> list) {
        synchronized (cxl.class) {
            if (a.isEmpty() || !a.contains(str)) {
                if (!((!b.isEmpty() && cxl.a()) || list == null || list.isEmpty())) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        ((cxr) list.get(i2)).a(i, str, str2, th);
                    }
                }
            }
        }
    }

    public static boolean a() {
        String c = cxn.c();
        for (int i = 0; i < b.size(); i++) {
            if (c.startsWith((String) b.get(i))) {
                return true;
            }
        }
        return false;
    }

    static synchronized cxm b() {
        cxm cxm;
        synchronized (cxl.class) {
            if (!e.isEmpty()) {
                String c = cxn.c();
                for (int size = e.size() - 1; size >= 0; size--) {
                    String str = (String) e.get(size);
                    if (c.startsWith(str)) {
                        cxm = (cxm) d.get(str);
                        break;
                    }
                }
            }
            cxm = c;
        }
        return cxm;
    }

    public static synchronized void a(@NonNull String str, cxm cxm) {
        synchronized (cxl.class) {
            d.put(str, cxm);
            e.add(str);
        }
    }
}
