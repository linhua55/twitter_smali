package com.evernote.android.job.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.evernote.android.job.gcm.PlatformGcmService;
import cxk;
import java.util.List;

/* compiled from: Twttr */
final class b {
    private static final boolean a;
    private static int b;

    static {
        boolean z;
        b = -1;
        try {
            Class.forName("com.google.android.gms.gcm.a");
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        a = z;
    }

    public static boolean a(Context context) {
        try {
            if (a && com.google.android.gms.common.b.a().a(context) == 0 && b(context) == 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            cxk.a(e);
            return false;
        }
    }

    private static int b(Context context) {
        if (b < 0) {
            synchronized (JobApi.class) {
                if (b < 0) {
                    int i;
                    if (a(context.getPackageManager().queryIntentServices(new Intent(context, PlatformGcmService.class), 0))) {
                        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_TASK_READY");
                        intent.setPackage(context.getPackageName());
                        if (a(context.getPackageManager().queryIntentServices(intent, 0))) {
                            b = 0;
                        } else {
                            b = 1;
                            i = b;
                            return i;
                        }
                    }
                    b = 1;
                    i = b;
                    return i;
                }
            }
        }
        return b;
    }

    private static boolean a(List<ResolveInfo> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (ResolveInfo resolveInfo : list) {
            if (resolveInfo.serviceInfo != null && "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE".equals(resolveInfo.serviceInfo.permission) && resolveInfo.serviceInfo.exported) {
                return true;
            }
        }
        return false;
    }
}
