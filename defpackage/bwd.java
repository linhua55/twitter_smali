package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: bwd */
class bwd extends Handler {
    private final WeakReference<bwc> a;

    bwd(Looper looper, bwc bwc) {
        super(looper);
        this.a = new WeakReference(bwc);
    }

    public void handleMessage(Message message) {
        bwc bwc = (bwc) this.a.get();
        if (bwc != null) {
            bwc.a(message);
        }
    }
}
