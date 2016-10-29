package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
/* renamed from: c */
class c implements Executor {
    private c() {
    }

    public void execute(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }
}
