package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.common.n;

@oi
public class ch {
    private final Object a;
    private boolean b;
    private SharedPreferences c;

    public ch() {
        this.a = new Object();
        this.b = false;
        this.c = null;
    }

    public <T> T a(ca<T> caVar) {
        synchronized (this.a) {
            if (this.b) {
                return se.a(new ci(this, caVar));
            }
            T b = caVar.b();
            return b;
        }
    }

    public void a(Context context) {
        synchronized (this.a) {
            if (this.b) {
                return;
            }
            Context remoteContext = n.getRemoteContext(context);
            if (remoteContext == null) {
                return;
            }
            this.c = ar.l().a(remoteContext);
            this.b = true;
        }
    }
}
