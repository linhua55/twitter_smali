package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.mr;

public class m implements z {
    public al a(Context context, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return new g();
    }

    public ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return new k();
    }

    public dm a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new n();
    }

    @Nullable
    public mr a(Activity activity) {
        return null;
    }

    public ar b(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel) {
        return new k();
    }

    @Nullable
    public lx b(Activity activity) {
        return null;
    }
}
