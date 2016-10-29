package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;

public final class vm {
    @TargetApi(20)
    public static boolean a(Context context) {
        return vu.h() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static boolean a(Resources resources) {
        if (resources == null) {
            return false;
        }
        return (vu.a() && ((resources.getConfiguration().screenLayout & 15) > 3)) || b(resources);
    }

    @TargetApi(13)
    private static boolean b(Resources resources) {
        Configuration configuration = resources.getConfiguration();
        return vu.b() && (configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600;
    }
}
