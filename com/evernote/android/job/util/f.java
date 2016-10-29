package com.evernote.android.job.util;

import android.content.Context;
import defpackage.cxm;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class f {
    private static final SimpleDateFormat a;
    private static final long b;
    private static final cxm c;

    static {
        a = new SimpleDateFormat("HH:mm:ss", Locale.US);
        b = TimeUnit.DAYS.toMillis(1);
        c = new d("JobUtil");
    }

    public static String a(long j) {
        a.setTimeZone(TimeZone.getTimeZone("GMT"));
        String format = a.format(new Date(j));
        long j2 = j / b;
        if (j2 == 1) {
            return format + " (+1 day)";
        }
        if (j2 > 1) {
            return format + " (+" + j2 + " days)";
        }
        return format;
    }

    public static boolean a(Context context) {
        return a(context, "android.permission.RECEIVE_BOOT_COMPLETED", 0);
    }

    public static boolean b(Context context) {
        return a(context, "android.permission.WAKE_LOCK", 0);
    }

    private static boolean a(Context context, String str, int i) {
        try {
            if (context.getPackageManager().checkPermission(str, context.getPackageName()) == 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            c.b(e);
            if (i >= 1 || !a(context.getApplicationContext(), str, i + 1)) {
                return false;
            }
            return true;
        }
    }
}
