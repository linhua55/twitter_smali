package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.vu;

public abstract class s {
    @Nullable
    public abstract zzi a(Context context, sz szVar, int i, cy cyVar, cu cuVar);

    protected boolean a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return vu.c() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11);
    }
}
