package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.stats.b;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.HashMap;

final class an extends am implements Callback {
    private final HashMap<ao, ap> a;
    private final Context b;
    private final Handler c;
    private final b d;
    private final long e;

    an(Context context) {
        this.a = new HashMap();
        this.b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
        this.d = b.a();
        this.e = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
    }

    private boolean a(ao aoVar, ServiceConnection serviceConnection, String str) {
        boolean a;
        bm.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.a) {
            ap apVar = (ap) this.a.get(aoVar);
            if (apVar != null) {
                this.c.removeMessages(0, apVar);
                if (!apVar.a(serviceConnection)) {
                    apVar.a(serviceConnection, str);
                    switch (apVar.b()) {
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                            serviceConnection.onServiceConnected(apVar.e(), apVar.d());
                            break;
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            apVar.a(str);
                            break;
                        default:
                            break;
                    }
                }
                throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + aoVar);
            }
            apVar = new ap(this, aoVar);
            apVar.a(serviceConnection, str);
            apVar.a(str);
            this.a.put(aoVar, apVar);
            a = apVar.a();
        }
        return a;
    }

    private void b(ao aoVar, ServiceConnection serviceConnection, String str) {
        bm.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.a) {
            ap apVar = (ap) this.a.get(aoVar);
            if (apVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + aoVar);
            } else if (apVar.a(serviceConnection)) {
                apVar.b(serviceConnection, str);
                if (apVar.c()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, apVar), this.e);
                }
            } else {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + aoVar);
            }
        }
    }

    public boolean a(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return a(new ao(componentName), serviceConnection, str);
    }

    public boolean a(String str, ServiceConnection serviceConnection, String str2) {
        return a(new ao(str), serviceConnection, str2);
    }

    public void b(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        b(new ao(componentName), serviceConnection, str);
    }

    public void b(String str, ServiceConnection serviceConnection, String str2) {
        b(new ao(str), serviceConnection, str2);
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case Util.TYPE_DASH /*0*/:
                ap apVar = (ap) message.obj;
                synchronized (this.a) {
                    if (apVar.c()) {
                        if (apVar.a()) {
                            apVar.b("GmsClientSupervisor");
                        }
                        this.a.remove(apVar.g);
                    }
                    break;
                }
                return true;
            default:
                return false;
        }
    }
}
