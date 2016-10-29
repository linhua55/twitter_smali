package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.al;
import com.google.android.gms.ads.internal.client.ar;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.client.z;
import com.google.android.gms.ads.internal.formats.r;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.purchase.f;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.mr;

public class a implements z {
    public static void a() {
        y.a = a.class.getName();
    }

    public al a(Context context, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return new v(context, str, kcVar, versionInfoParcel, k.a());
    }

    public ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return new o(context, adSizeParcel, str, kcVar, versionInfoParcel, k.a());
    }

    public dm a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new r(frameLayout, frameLayout2);
    }

    public mr a(Activity activity) {
        return new f(activity);
    }

    public ar b(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        if (((Boolean) cj.ae.c()).booleanValue()) {
            return new hv(context, str, kcVar, versionInfoParcel, k.a());
        }
        return new w(context, adSizeParcel, str, kcVar, versionInfoParcel, k.a());
    }

    public lx b(Activity activity) {
        return new zzd(activity);
    }
}
