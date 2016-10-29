package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;

public class c {
    public static ua a(Context context) {
        return a(context, null);
    }

    public static ua a(Context context, ym ymVar) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (NameNotFoundException e) {
        }
        if (ymVar == null) {
            ymVar = VERSION.SDK_INT >= 9 ? new yn() : new yj(AndroidHttpClient.newInstance(str));
        }
        ua uaVar = new ua(new yf(file), new yc(ymVar));
        uaVar.a();
        return uaVar;
    }
}
