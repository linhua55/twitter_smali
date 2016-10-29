package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.mr;
import com.google.android.gms.internal.oi;

@oi
public class y {
    public static String a;
    private z b;

    static {
        a = null;
    }

    public y() {
        a.a();
        if (a != null) {
            try {
                this.b = (z) y.class.getClassLoader().loadClass(a).newInstance();
                return;
            } catch (Throwable e) {
                b.d("Failed to instantiate ClientApi class.", e);
                this.b = new m();
                return;
            }
        }
        b.d("No client jar implementation found.");
        this.b = new m();
    }

    public al a(Context context, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return this.b.a(context, str, kcVar, versionInfoParcel);
    }

    public ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return this.b.a(context, adSizeParcel, str, kcVar, versionInfoParcel);
    }

    public dm a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        return this.b.a(frameLayout, frameLayout2);
    }

    @Nullable
    public mr a(Activity activity) {
        return this.b.a(activity);
    }

    public ar b(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return this.b.b(context, adSizeParcel, str, kcVar, versionInfoParcel);
    }

    @Nullable
    public lx b(Activity activity) {
        return this.b.b(activity);
    }
}
