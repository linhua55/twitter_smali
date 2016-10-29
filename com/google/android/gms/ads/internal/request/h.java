package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.n;
import com.google.android.gms.internal.cj;

final class h implements j {
    final /* synthetic */ Context a;

    h(Context context) {
        this.a = context;
    }

    public boolean a(VersionInfoParcel versionInfoParcel) {
        return versionInfoParcel.e || (n.zzap(this.a) && !((Boolean) cj.B.c()).booleanValue());
    }
}
