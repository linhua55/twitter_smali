package defpackage;

import android.os.SystemClock;

/* compiled from: Twttr */
/* renamed from: cm */
public class cm implements cl {
    private static final cm a;

    static {
        a = new cm();
    }

    private cm() {
    }

    public static cm a() {
        return a;
    }

    public long now() {
        return SystemClock.elapsedRealtime();
    }
}
