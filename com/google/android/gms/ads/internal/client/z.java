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

public interface z {
    al a(Context context, String str, kc kcVar, VersionInfoParcel versionInfoParcel);

    ar a(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel);

    dm a(FrameLayout frameLayout, FrameLayout frameLayout2);

    @Nullable
    mr a(Activity activity);

    ar b(Context context, AdSizeParcel adSizeParcel, String str, kc kcVar, VersionInfoParcel versionInfoParcel);

    @Nullable
    lx b(Activity activity);
}
