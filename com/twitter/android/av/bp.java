package com.twitter.android.av;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.util.extensions.Buffer;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class bp extends Handler {
    private final WeakReference<bm> a;

    private bp(bm bmVar) {
        super(Looper.getMainLooper());
        this.a = new WeakReference(bmVar);
    }

    public void handleMessage(Message message) {
        bm bmVar = (bm) this.a.get();
        if (bmVar != null && bmVar.b() != null) {
            switch (message.what) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    bmVar.b().q();
                default:
            }
        }
    }
}
