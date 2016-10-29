package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.oi;

@oi
public final class r extends zzg<ao> {
    private static final r a;

    static {
        a = new r();
    }

    private r() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public static al a(Context context, String str, kc kcVar) {
        if (aa.a().b(context)) {
            al b = a.b(context, str, kcVar);
            if (b != null) {
                return b;
            }
        }
        b.a("Using AdLoader from the client jar.");
        return aa.c().a(context, str, kcVar, new VersionInfoParcel(8487000, 8487000, true));
    }

    private al b(Context context, String str, kc kcVar) {
        try {
            return am.a(((ao) a(context)).a(m.a(context), str, kcVar, 8487000));
        } catch (Throwable e) {
            b.d("Could not create remote builder for AdLoader.", e);
            return null;
        } catch (zza e2) {
            b.d("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }

    protected ao a(IBinder iBinder) {
        return ap.a(iBinder);
    }

    protected /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
