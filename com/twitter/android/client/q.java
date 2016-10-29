package com.twitter.android.client;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.util.m;

/* compiled from: Twttr */
public class q {
    public static void a(Context context) {
        Object obj = 1;
        if (AppConfig.m().b()) {
            Object obj2;
            PackageManager packageManager = context.getPackageManager();
            try {
                packageManager.getPackageInfo("io.crash.air", 0);
                obj2 = 1;
            } catch (NameNotFoundException e) {
                obj2 = null;
            }
            if (obj2 != null) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                    int a = d.a("dogfood_update_interval", 5);
                    if ((((long) a) * 86400000) + packageInfo.lastUpdateTime >= m.b()) {
                        obj = null;
                    }
                    if (obj != null) {
                        z.a(context).b("io.crash.air");
                        return;
                    }
                    return;
                } catch (NameNotFoundException e2) {
                    return;
                }
            }
            z.a(context).e();
        }
    }
}
