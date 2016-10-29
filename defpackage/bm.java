package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: Twttr */
/* renamed from: bm */
public class bm extends bi {
    private static bm a;

    static {
        a = null;
    }

    private bm() {
        super(new Handler(Looper.getMainLooper()));
    }

    public static bm b() {
        if (a == null) {
            a = new bm();
        }
        return a;
    }

    public void execute(Runnable runnable) {
        if (a()) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }
}
