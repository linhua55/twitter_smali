package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;

public abstract class zzg<T> {
    private final String a;
    private T b;

    protected zzg(String str) {
        this.a = str;
    }

    protected final T a(Context context) throws zza {
        if (this.b == null) {
            bm.a((Object) context);
            Context remoteContext = n.getRemoteContext(context);
            if (remoteContext == null) {
                throw new zza("Could not get remote context.");
            }
            try {
                this.b = b((IBinder) remoteContext.getClassLoader().loadClass(this.a).newInstance());
            } catch (Throwable e) {
                throw new zza("Could not load creator class.", e);
            } catch (Throwable e2) {
                throw new zza("Could not instantiate creator.", e2);
            } catch (Throwable e22) {
                throw new zza("Could not access creator.", e22);
            }
        }
        return this.b;
    }

    protected abstract T b(IBinder iBinder);
}
