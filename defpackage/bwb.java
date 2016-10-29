package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import bvy;

/* compiled from: Twttr */
/* renamed from: bwb */
class bwb extends Handler {
    private final bvy a;

    bwb(bvy bvy, Looper looper) {
        super(looper);
        this.a = bvy;
    }

    public void handleMessage(Message message) {
        this.a.a(message);
    }
}
