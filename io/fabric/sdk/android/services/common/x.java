package io.fabric.sdk.android.services.common;

import android.content.Context;
import defpackage.cwo;

/* compiled from: Twttr */
class x implements cwo<String> {
    final /* synthetic */ w a;

    x(w wVar) {
        this.a = wVar;
    }

    public /* synthetic */ Object c(Context context) throws Exception {
        return a(context);
    }

    public String a(Context context) throws Exception {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }
}
