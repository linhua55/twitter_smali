package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.api.x;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class f<R extends w> extends Handler {
    public f() {
        this(Looper.getMainLooper());
    }

    public f(Looper looper) {
        super(looper);
    }

    public void a() {
        removeMessages(2);
    }

    public void a(x<? super R> xVar, R r) {
        sendMessage(obtainMessage(1, new Pair(xVar, r)));
    }

    protected void b(x<? super R> xVar, R r) {
        try {
            xVar.a(r);
        } catch (RuntimeException e) {
            e.b((w) r);
            throw e;
        }
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                Pair pair = (Pair) message.obj;
                b((x) pair.first, (w) pair.second);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                ((e) message.obj).b(Status.d);
            default:
                Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
        }
    }
}
