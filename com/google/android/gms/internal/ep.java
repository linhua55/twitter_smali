package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@oi
public class ep extends zzg<dp> {
    public ep() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    private dm b(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        Throwable e;
        try {
            return dn.a(((dp) a(context)).a(m.a(context), m.a(frameLayout), m.a(frameLayout2), 8487000));
        } catch (RemoteException e2) {
            e = e2;
            b.d("Could not create remote NativeAdViewDelegate.", e);
            return null;
        } catch (zza e3) {
            e = e3;
            b.d("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    public dm a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        if (aa.a().b(context)) {
            dm b = b(context, frameLayout, frameLayout2);
            if (b != null) {
                return b;
            }
        }
        b.a("Using NativeAdViewDelegate from the client jar.");
        return aa.c().a(frameLayout, frameLayout2);
    }

    protected dp a(IBinder iBinder) {
        return dq.a(iBinder);
    }

    protected /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
