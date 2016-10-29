package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@oi
public final class zzgj extends zzg<mu> {
    private static final zzgj a;

    static {
        a = new zzgj();
    }

    private zzgj() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    @Nullable
    public static mr a(Activity activity) {
        try {
            if (!b(activity)) {
                mr c = a.c(activity);
                if (c != null) {
                    return c;
                }
            }
            b.a("Using AdOverlay from the client jar.");
            return aa.c().a(activity);
        } catch (zza e) {
            b.d(e.getMessage());
            return null;
        }
    }

    private static boolean b(Activity activity) throws zza {
        Intent intent = activity.getIntent();
        if (intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
        }
        throw new zza("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }

    private mr c(Activity activity) {
        try {
            return ms.a(((mu) a(activity)).a(m.a(activity)));
        } catch (Throwable e) {
            b.d("Could not create remote InAppPurchaseManager.", e);
            return null;
        } catch (zza e2) {
            b.d("Could not create remote InAppPurchaseManager.", e2);
            return null;
        }
    }

    protected mu a(IBinder iBinder) {
        return mv.a(iBinder);
    }

    protected /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
