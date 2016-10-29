package com.twitter.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Vibrator;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.View;
import java.util.List;

/* compiled from: Twttr */
public class c {
    private static PackageInfo a;

    public static boolean a() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static int a(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getMemoryClass() * AccessibilityNodeInfoCompat.ACTION_DISMISS;
    }

    public static boolean a(Context context, String str) {
        int i = 0;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
            boolean z = applicationInfo.enabled;
            if (VERSION.SDK_INT < 17) {
                return z;
            }
            if ((applicationInfo.flags & GravityCompat.RELATIVE_LAYOUT_DIRECTION) != 0) {
                i = 1;
            }
            return i & z;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static synchronized PackageInfo b(Context context) {
        PackageInfo packageInfo;
        synchronized (c.class) {
            if (a == null) {
                try {
                    a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                } catch (NameNotFoundException e) {
                }
            }
            packageInfo = a;
        }
        return packageInfo;
    }

    public static String c(Context context) {
        PackageInfo b = b(context);
        String str = b != null ? b.versionName : null;
        return TextUtils.isEmpty(str) ? "0.0.0" : str;
    }

    public static int d(Context context) {
        PackageInfo b = b(context);
        return b != null ? b.versionCode : 0;
    }

    public static void a(View view) {
        view.setSystemUiVisibility(5894);
    }

    public static void a(View view, int i) {
        view.setSystemUiVisibility(i | AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
    }

    public static void b(View view) {
        a(view, 0);
    }

    public static boolean e(Context context) {
        return ((Vibrator) context.getSystemService("vibrator")).hasVibrator();
    }

    public static RunningAppProcessInfo a(Context context, int i) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == i) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    public static boolean f(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static void a(Context context, long j) {
        ((AlarmManager) context.getSystemService(NotificationCompatApi21.CATEGORY_ALARM)).set(1, m.b() + j, PendingIntent.getActivity(context, 0, context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()), 0));
        System.exit(0);
    }

    public static void a(Context context, String str, String str2) {
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str, str2));
    }
}
