package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.t;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

final class az extends Handler {
    final /* synthetic */ ax a;

    public void handleMessage(Message message) {
        switch (message.what) {
            case Util.TYPE_DASH /*0*/:
                t tVar = (t) message.obj;
                synchronized (this.a.e) {
                    if (tVar != null) {
                        if (tVar instanceof at) {
                            this.a.b.a(((at) tVar).b());
                        } else {
                            this.a.b.a(tVar);
                        }
                        break;
                    }
                    this.a.b.a(new Status(13, "Transform returned null"));
                    break;
                }
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: " + runtimeException.getMessage());
                throw runtimeException;
            default:
                Log.e("TransformedResultImpl", "TransformationResultHandler received unknown message type: " + message.what);
        }
    }
}
