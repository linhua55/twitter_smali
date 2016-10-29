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
public final class zzfu extends zzg<ma> {
    private static final zzfu a;

    static {
        a = new zzfu();
    }

    private zzfu() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Nullable
    public static lx a(Activity activity) {
        try {
            if (!b(activity)) {
                lx c = a.c(activity);
                if (c != null) {
                    return c;
                }
            }
            b.a("Using AdOverlay from the client jar.");
            return aa.c().b(activity);
        } catch (zza e) {
            b.d(e.getMessage());
            return null;
        }
    }

    private static boolean b(Activity activity) throws zza {
        Intent intent = activity.getIntent();
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        throw new zza("Ad overlay requires the useClientJar flag in intent extras.");
    }

    private lx c(Activity activity) {
        try {
            return ly.a(((ma) a(activity)).a(m.a(activity)));
        } catch (Throwable e) {
            b.d("Could not create remote AdOverlay.", e);
            return null;
        } catch (zza e2) {
            b.d("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    protected ma a(IBinder iBinder) {
        return mb.a(iBinder);
    }

    protected /* synthetic */ Object b(IBinder iBinder) {
        return a(iBinder);
    }
}
