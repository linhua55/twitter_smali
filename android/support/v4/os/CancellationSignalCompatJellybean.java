package android.support.v4.os;

import android.os.CancellationSignal;

/* compiled from: Twttr */
class CancellationSignalCompatJellybean {
    CancellationSignalCompatJellybean() {
    }

    public static Object create() {
        return new CancellationSignal();
    }

    public static void cancel(Object obj) {
        ((CancellationSignal) obj).cancel();
    }
}
