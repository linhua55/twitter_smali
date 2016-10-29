package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.oi;

@oi
public class s extends zzg<au> {
    public s() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    private ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, int i) {
        Throwable e;
        try {
            return as.a(((au) a(context)).a(m.a(context), adSizeParcel, str, kcVar, 8487000, i));
        } catch (RemoteException e2) {
            e = e2;
            b.a("Could not create remote AdManager.", e);
            return null;
        } catch (zza e3) {
            e = e3;
            b.a("Could not create remote AdManager.", e);
            return null;
        }
    }

    public ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar) {
        if (aa.a().b(context)) {
            ar a = a(context, adSizeParcel, str, kcVar, 1);
            if (a != null) {
                return a;
            }
        }
        b.a("Using BannerAdManager from the client jar.");
        return aa.c().a(context, adSizeParcel, str, kcVar, new VersionInfoParcel(8487000, 8487000, true));
    }

    protected au a(IBinder iBinder) {
        return av.a(iBinder);
    }

    public ar b(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar) {
        if (aa.a().b(context)) {
            ar a = a(context, adSizeParcel, str, kcVar, 2);
            if (a != null) {
                return a;
            }
        }
        b.d("Using InterstitialAdManager from the client jar.");
        return aa.c().b(context, adSizeParcel, str, kcVar, new VersionInfoParcel(8487000, 8487000, true));
    }

    protected /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
