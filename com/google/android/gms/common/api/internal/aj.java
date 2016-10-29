package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

final class aj extends Handler {
    final /* synthetic */ ah a;

    aj(ah ahVar, Looper looper) {
        this.a = ahVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                ((ai) message.obj).a(this.a);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                throw ((RuntimeException) message.obj);
            default:
                Log.w("GACStateManager", "Unknown message id: " + message.what);
        }
    }
}
