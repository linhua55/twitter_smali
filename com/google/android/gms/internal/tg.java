package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@oi
public class tg {
    public sz a(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, y yVar, VersionInfoParcel versionInfoParcel) {
        return a(context, adSizeParcel, z, z2, yVar, versionInfoParcel, null, null);
    }

    public sz a(Context context, AdSizeParcel adSizeParcel, boolean z, boolean z2, y yVar, VersionInfoParcel versionInfoParcel, cy cyVar, k kVar) {
        sz thVar = new th(ti.a(context, adSizeParcel, z, z2, yVar, versionInfoParcel, cyVar, kVar));
        thVar.setWebViewClient(ar.g().a(thVar, z2));
        thVar.setWebChromeClient(ar.g().c(thVar));
        return thVar;
    }
}
