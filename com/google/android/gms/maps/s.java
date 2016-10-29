package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.b;
import kl;
import kp;

public final class s {
    private static boolean a;

    static {
        a = false;
    }

    public static synchronized int a(Context context) {
        int i = 0;
        synchronized (s.class) {
            bm.a(context, "Context is null");
            if (!a) {
                try {
                    a(kl.a(context));
                    a = true;
                } catch (GooglePlayServicesNotAvailableException e) {
                    i = e.errorCode;
                }
            }
        }
        return i;
    }

    public static void a(kp kpVar) {
        try {
            b.a(kpVar.a());
            b.a(kpVar.b());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
