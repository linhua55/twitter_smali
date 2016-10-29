package rx.internal.schedulers;

import rx.t;
import rx.u;

/* compiled from: Twttr */
public final class aa extends t {
    public static final aa b;

    static {
        b = new aa();
    }

    public u a() {
        return new ab();
    }

    private aa() {
    }

    static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }
}
