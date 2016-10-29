package defpackage;

import bbv;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
/* renamed from: bbu */
public class bbu {
    private static final List<bbv> a;

    static {
        a = new CopyOnWriteArrayList();
    }

    private bbu() {
    }

    public static void a(bbv bbv) {
        cqf.a(bbu.class);
        a.add(bbv);
    }

    public static void a(bbw bbw) {
        for (bbv bbv : a) {
            if (bbv.a(bbw)) {
                bbv.b(bbw);
            }
        }
    }
}
