package defpackage;

import ars;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: arr */
public class arr {
    private static final Object a;
    private static art b;
    private static final ArrayList<WeakReference<ars>> c;

    static {
        a = new Object();
        b = new art(100, 100, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS, 600000, 3600000, 86400000);
        c = new ArrayList();
    }

    public static art a() {
        art art;
        synchronized (a) {
            art = b;
        }
        return art;
    }

    public static void a(art art) {
        synchronized (a) {
            if (b.equals(art)) {
                return;
            }
            b = art;
            synchronized (c) {
                Iterator it = c.iterator();
                while (it.hasNext()) {
                    ars ars = (ars) ((WeakReference) it.next()).get();
                    if (ars == null) {
                        it.remove();
                    } else {
                        ars.aN_();
                    }
                }
            }
        }
    }

    public static void a(ars ars) {
        synchronized (c) {
            c.add(new WeakReference(ars));
        }
    }
}
