package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

final class ab extends Handler {
    final /* synthetic */ y a;

    ab(y yVar, Looper looper) {
        this.a = yVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.o();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.a.n();
            default:
                Log.w("GoogleApiClientImpl", "Unknown message id: " + message.what);
        }
    }
}
