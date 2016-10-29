package com.google.android.gcm;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.recyclerview.BuildConfig;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.util.Log;
import com.twitter.library.platform.c;
import com.twitter.util.m;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public final class b {
    private static final boolean a;
    private static GCMBroadcastReceiver b;
    private static String c;

    static {
        a = Log.isLoggable("GCMRegistrar", 3);
    }

    public static void a(Context context) {
        if (!c.a(context)) {
            throw new UnsupportedOperationException("GooglePlayServices not enabled on this device.");
        }
    }

    public static void b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        String str = packageName + ".permission.C2D_MESSAGE";
        try {
            packageManager.getPermissionInfo(str, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
            try {
                ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(packageName, 2).receivers;
                if (activityInfoArr == null || activityInfoArr.length == 0) {
                    throw new IllegalStateException("No receiver for package " + packageName);
                }
                if (a) {
                    Log.v("GCMRegistrar", "number of receivers for " + packageName + ": " + activityInfoArr.length);
                }
                Set hashSet = new HashSet();
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if ("com.google.android.c2dm.permission.SEND".equals(activityInfo.permission)) {
                        hashSet.add(activityInfo.name);
                    }
                }
                if (hashSet.isEmpty()) {
                    throw new IllegalStateException("No receiver allowed to receive com.google.android.c2dm.permission.SEND");
                }
                a(context, hashSet, "com.google.android.c2dm.intent.RECEIVE");
            } catch (NameNotFoundException e) {
                throw new IllegalStateException("Could not get receivers for package " + packageName);
            }
        } catch (NameNotFoundException e2) {
            throw new IllegalStateException("Application does not define permission " + str);
        }
    }

    private static void a(Context context, Set<String> set, String str) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        Intent intent = new Intent(str);
        intent.setPackage(packageName);
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 32);
        if (queryBroadcastReceivers.isEmpty()) {
            throw new IllegalStateException("No receivers for action " + str);
        }
        if (a) {
            Log.v("GCMRegistrar", "Found " + queryBroadcastReceivers.size() + " receivers for action " + str);
        }
        for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
            String str2 = resolveInfo.activityInfo.name;
            if (!set.contains(str2)) {
                throw new IllegalStateException("Receiver " + str2 + " is not set with permission " + "com.google.android.c2dm.permission.SEND");
            }
        }
    }

    public static void a(Context context, String... strArr) {
        k(context);
        b(context, strArr);
    }

    static void b(Context context, String... strArr) {
        String a = a(strArr);
        if (a) {
            Log.v("GCMRegistrar", "Registering app " + context.getPackageName() + " of senders " + a);
        }
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTRATION");
        intent.putExtra("sender", a);
        intent.setClass(context, a.a);
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(context);
        if (b == null) {
            a(a.a.getName());
            e(context);
            instance.registerReceiver(b, new IntentFilter("com.google.android.c2dm.intent.REGISTRATION"));
        }
        instance.sendBroadcast(intent);
    }

    static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuilder.append(',').append(strArr[i]);
        }
        return stringBuilder.toString();
    }

    public static synchronized void c(Context context) {
        synchronized (b.class) {
            if (b != null) {
                if (a) {
                    Log.v("GCMRegistrar", "Unregistering receiver");
                }
                context.unregisterReceiver(b);
                b = null;
            }
        }
    }

    static void d(Context context) {
        if (a) {
            Log.v("GCMRegistrar", "Unregistering app " + context.getPackageName());
        }
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTRATION");
        intent.putExtra("unregistered", "1");
        intent.setClass(context, a.a);
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(context);
        if (b == null) {
            a(a.a.getName());
            e(context);
            instance.registerReceiver(b, new IntentFilter("com.google.android.c2dm.intent.REGISTRATION"));
        }
        instance.sendBroadcast(intent);
    }

    static synchronized void e(Context context) {
        synchronized (b.class) {
            if (b == null) {
                if (c == null) {
                    if (a) {
                        Log.e("GCMRegistrar", "internal error: retry receiver class not set yet");
                    }
                    b = new GCMBroadcastReceiver();
                } else {
                    try {
                        b = (GCMBroadcastReceiver) Class.forName(c).newInstance();
                    } catch (Exception e) {
                        if (a) {
                            Log.e("GCMRegistrar", "Could not create instance of " + c + ". Using " + GCMBroadcastReceiver.class.getName() + " directly.");
                        }
                        b = new GCMBroadcastReceiver();
                    }
                }
                String packageName = context.getPackageName();
                IntentFilter intentFilter = new IntentFilter("com.google.android.gcm.intent.RETRY");
                intentFilter.addCategory(packageName);
                packageName = packageName + ".permission.C2D_MESSAGE";
                if (a) {
                    Log.v("GCMRegistrar", "Registering receiver");
                }
                context.registerReceiver(b, intentFilter, packageName, null);
            }
        }
    }

    static void a(String str) {
        if (a) {
            Log.v("GCMRegistrar", "Setting the name of retry receiver class to " + str);
        }
        c = str;
    }

    public static String f(Context context) {
        SharedPreferences n = n(context);
        String string = n.getString("regId", BuildConfig.VERSION_NAME);
        int i = n.getInt("appVersion", RtlSpacingHelper.UNDEFINED);
        int m = m(context);
        if (i == RtlSpacingHelper.UNDEFINED || i == m) {
            return string;
        }
        if (a) {
            Log.v("GCMRegistrar", "App version changed from " + i + " to " + m + "; resetting registration id");
        }
        h(context);
        return BuildConfig.VERSION_NAME;
    }

    public static boolean g(Context context) {
        return f(context).length() > 0;
    }

    static String h(Context context) {
        return a(context, BuildConfig.VERSION_NAME);
    }

    static String a(Context context, String str) {
        SharedPreferences n = n(context);
        String string = n.getString("regId", BuildConfig.VERSION_NAME);
        int m = m(context);
        if (a) {
            Log.v("GCMRegistrar", "Saving regId on app version " + m);
        }
        Editor edit = n.edit();
        edit.putString("regId", str);
        edit.putInt("appVersion", m);
        edit.apply();
        return string;
    }

    public static void a(Context context, boolean z) {
        Editor edit = n(context).edit();
        edit.putBoolean("onServer", z);
        long j = j(context) + m.b();
        if (a) {
            Log.v("GCMRegistrar", "Setting registeredOnServer status as " + z + " until " + new Timestamp(j));
        }
        edit.putLong("onServerExpirationTime", j);
        edit.apply();
    }

    public static boolean i(Context context) {
        SharedPreferences n = n(context);
        boolean z = n.getBoolean("onServer", false);
        if (a) {
            Log.v("GCMRegistrar", "Is registered on server: " + z);
        }
        if (z) {
            long j = n.getLong("onServerExpirationTime", -1);
            if (m.b() > j) {
                if (!a) {
                    return false;
                }
                Log.v("GCMRegistrar", "flag expired on: " + new Timestamp(j));
                return false;
            }
        }
        return z;
    }

    public static long j(Context context) {
        return n(context).getLong("onServerLifeSpan", 604800000);
    }

    public static void a(Context context, long j) {
        Editor edit = n(context).edit();
        edit.putLong("onServerLifeSpan", j);
        edit.apply();
    }

    private static int m(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            throw new RuntimeException("Coult not get package name: " + e);
        }
    }

    static void k(Context context) {
        if (a) {
            Log.d("GCMRegistrar", "resetting backoff for " + context.getPackageName());
        }
        a(context, 3000);
    }

    static int l(Context context) {
        return n(context).getInt("backoff_ms", 3000);
    }

    static void a(Context context, int i) {
        Editor edit = n(context).edit();
        edit.putInt("backoff_ms", i);
        edit.apply();
    }

    private static SharedPreferences n(Context context) {
        return context.getSharedPreferences("com.google.android.gcm", 0);
    }
}
