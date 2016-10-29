package tv.periscope.android.ui.chat;

import android.os.SystemClock;

/* compiled from: Twttr */
public class ao {
    private static final String a;
    private final int b;
    private final int c;
    private final int d;
    private int e;
    private long f;
    private long g;

    static {
        a = ao.class.getSimpleName();
    }

    public ao(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public boolean a() {
        if (SystemClock.elapsedRealtime() - this.g < ((long) this.b)) {
            return true;
        }
        this.g = SystemClock.elapsedRealtime();
        if (this.e == 0) {
            this.f = SystemClock.elapsedRealtime();
        }
        if (SystemClock.elapsedRealtime() - this.f >= ((long) this.c)) {
            this.e = 0;
            this.f = SystemClock.elapsedRealtime();
            return false;
        } else if (this.e > this.d) {
            return true;
        } else {
            this.f = SystemClock.elapsedRealtime();
            this.e++;
            return false;
        }
    }
}
