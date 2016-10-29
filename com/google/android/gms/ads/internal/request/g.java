package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.so;

@oi
public final class g {
    public static rj a(Context context, VersionInfoParcel versionInfoParcel, so<AdRequestInfoParcel> soVar, i iVar) {
        return a(context, versionInfoParcel, soVar, iVar, new h(context));
    }

    static rj a(Context context, VersionInfoParcel versionInfoParcel, so<AdRequestInfoParcel> soVar, i iVar, j jVar) {
        return jVar.a(versionInfoParcel) ? a(context, soVar, iVar) : b(context, versionInfoParcel, soVar, iVar);
    }

    private static rj a(Context context, so<AdRequestInfoParcel> soVar, i iVar) {
        b.a("Fetching ad response from local ad request service.");
        rj nVar = new n(context, soVar, iVar);
        nVar.c();
        return nVar;
    }

    private static rj b(Context context, VersionInfoParcel versionInfoParcel, so<AdRequestInfoParcel> soVar, i iVar) {
        b.a("Fetching ad response from remote ad request service.");
        if (aa.a().b(context)) {
            return new o(context, versionInfoParcel, soVar, iVar);
        }
        b.d("Failed to connect to remote ad request service.");
        return null;
    }
}
