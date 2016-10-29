package defpackage;

import android.os.HandlerThread;

/* compiled from: Twttr */
/* renamed from: aji */
public class aji extends HandlerThread {
    private final Runnable a;

    public aji(String str, Runnable runnable) {
        super(str);
        this.a = runnable;
    }

    protected void onLooperPrepared() {
        super.onLooperPrepared();
        if (this.a != null) {
            this.a.run();
        }
    }
}
