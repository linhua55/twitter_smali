package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Future;

@oi
public class hz {
    private hx a(Context context, VersionInfoParcel versionInfoParcel, ic<hx> icVar, y yVar) {
        id idVar = new id(context, versionInfoParcel, yVar);
        icVar.a = idVar;
        idVar.a(new ib(this, icVar));
        return idVar;
    }

    public Future<hx> a(Context context, VersionInfoParcel versionInfoParcel, String str, y yVar) {
        ic icVar = new ic(null);
        qw.a.post(new ia(this, context, versionInfoParcel, icVar, yVar, str));
        return icVar;
    }
}
