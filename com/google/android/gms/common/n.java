package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.internal.vm;
import com.google.android.gms.internal.vo;
import com.google.android.gms.internal.vu;
import com.twitter.android.mx;
import ie;
import java.io.InputStream;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;
import tv.periscope.chatman.api.WireMessage;

public class n {
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean zzafL;
    public static boolean zzafM;
    static int zzafN;
    private static String zzafO;
    private static Integer zzafP;
    static final AtomicBoolean zzafQ;
    private static final AtomicBoolean zzafR;
    private static final Object zzqy;

    static {
        GOOGLE_PLAY_SERVICES_VERSION_CODE = zzoM();
        zzafL = false;
        zzafM = false;
        zzafN = -1;
        zzqy = new Object();
        zzafO = null;
        zzafP = null;
        zzafQ = new AtomicBoolean();
        zzafR = new AtomicBoolean();
    }

    n() {
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return f.b().a(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.a(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        InputStream openInputStream;
        try {
            openInputStream = context.getContentResolver().openInputStream(new Builder().scheme("android.resource").authority(GOOGLE_PLAY_SERVICES_PACKAGE).appendPath("raw").appendPath("oss_notice").build());
            String next = new Scanner(openInputStream).useDelimiter("\\A").next();
            if (openInputStream == null) {
                return next;
            }
            openInputStream.close();
            return next;
        } catch (NoSuchElementException e) {
            if (openInputStream != null) {
                openInputStream.close();
            }
            return null;
        } catch (Exception e2) {
            return null;
        } catch (Throwable th) {
            if (openInputStream != null) {
                openInputStream.close();
            }
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext(GOOGLE_PLAY_SERVICES_PACKAGE, 3);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication(GOOGLE_PLAY_SERVICES_PACKAGE);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        if (i.a) {
            return GOOGLE_PLAY_SERVICES_VERSION_CODE;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(ie.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!GOOGLE_PLAY_SERVICES_PACKAGE.equals(context.getPackageName())) {
            zzan(context);
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
            o a = o.a();
            if (!vm.a(context)) {
                try {
                    if (a.a(packageManager.getPackageInfo(GOOGLE_PLAY_STORE_PACKAGE, 8256), k.a) == null) {
                        Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                        return 9;
                    }
                    if (a.a(packageInfo, new h[]{a.a(packageManager.getPackageInfo(GOOGLE_PLAY_STORE_PACKAGE, 8256), k.a)}) == null) {
                        Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                        return 9;
                    }
                } catch (NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store is neither installed nor updating.");
                    return 9;
                }
            } else if (a.a(packageInfo, k.a) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (vo.a(packageInfo.versionCode) < vo.a(GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but found " + packageInfo.versionCode);
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo(GOOGLE_PLAY_SERVICES_PACKAGE, GOOGLE_PLAY_SERVICES_VERSION_CODE);
                } catch (Throwable e2) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : GOOGLE_PLAY_SERVICES_VERSION_CODE;
        } catch (NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case mx.TwitterEditText_messageSize /*9*/:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static void zzad(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int a = f.b().a(context);
        if (a != 0) {
            Intent a2 = f.b().a(context, a, "e");
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + a);
            if (a2 == null) {
                throw new GooglePlayServicesNotAvailableException(a);
            }
            throw new GooglePlayServicesRepairableException(a, "Google Play Services not available", a2);
        }
    }

    @Deprecated
    public static int zzaj(Context context) {
        int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        try {
            return context.getPackageManager().getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, GOOGLE_PLAY_SERVICES_VERSION_CODE).versionCode;
        } catch (NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return i;
        }
    }

    @Deprecated
    public static void zzal(Context context) {
        if (!zzafQ.getAndSet(true)) {
            try {
                ((NotificationManager) context.getSystemService("notification")).cancel(10436);
            } catch (SecurityException e) {
            }
        }
    }

    private static void zzan(Context context) {
        if (!zzafR.get()) {
            Integer num;
            synchronized (zzqy) {
                if (zzafO == null) {
                    zzafO = context.getPackageName();
                    try {
                        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
                        if (bundle != null) {
                            zzafP = Integer.valueOf(bundle.getInt("com.google.android.gms.version"));
                        } else {
                            zzafP = null;
                        }
                    } catch (Throwable e) {
                        Log.wtf("GooglePlayServicesUtil", "This should never happen.", e);
                    }
                } else if (!zzafO.equals(context.getPackageName())) {
                    throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + zzafO + "' and this call used package '" + context.getPackageName() + "'.");
                }
                num = zzafP;
            }
            if (num == null) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (num.intValue() != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but" + " found " + num + ".  You must have the" + " following declaration within the <application> element: " + "    <meta-data android:name=\"" + "com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
    }

    public static String zzao(Context context) {
        Object obj = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(obj)) {
            return obj;
        }
        ApplicationInfo applicationInfo;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
    }

    public static boolean zzap(Context context) {
        return vu.j() && context.getPackageManager().hasSystemFeature("cn.google");
    }

    @TargetApi(18)
    public static boolean zzaq(Context context) {
        if (vu.f()) {
            Bundle applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(19)
    public static boolean zzb(Context context, int i, String str) {
        if (vu.g()) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (int i2 = GOOGLE_PLAY_SERVICES_VERSION_CODE; i2 < packagesForUid.length; i2++) {
            if (str.equals(packagesForUid[i2])) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzb(PackageManager packageManager) {
        boolean z = true;
        synchronized (zzqy) {
            if (zzafN == -1) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
                    if (o.a().a(packageInfo, new h[]{k.a[1]}) != null) {
                        zzafN = 1;
                    } else {
                        zzafN = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                    }
                } catch (NameNotFoundException e) {
                    zzafN = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                }
            }
            if (zzafN == 0) {
                z = false;
            }
        }
        return z;
    }

    @Deprecated
    public static Intent zzbv(int i) {
        return f.b().a(null, i, null);
    }

    static boolean zzbw(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case mx.TwitterButton_knockout /*18*/:
            case mx.AppCompatTheme_dialogTheme /*42*/:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzc(PackageManager packageManager) {
        return zzb(packageManager) || !zzoN();
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        return i == 18 ? true : i == 1 ? zzi(context, GOOGLE_PLAY_SERVICES_PACKAGE) : false;
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        return i == 9 ? zzi(context, GOOGLE_PLAY_STORE_PACKAGE) : false;
    }

    public static boolean zzf(Context context, int i) {
        boolean z = false;
        if (!zzb(context, i, GOOGLE_PLAY_SERVICES_PACKAGE)) {
            return z;
        }
        try {
            return o.a().a(context.getPackageManager(), context.getPackageManager().getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64));
        } catch (NameNotFoundException e) {
            if (!Log.isLoggable("GooglePlayServicesUtil", 3)) {
                return z;
            }
            Log.d("GooglePlayServicesUtil", "Package manager can't find google play services package, defaulting to false");
            return z;
        }
    }

    @TargetApi(21)
    static boolean zzi(Context context, String str) {
        if (vu.j()) {
            for (SessionInfo appPackageName : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(appPackageName.getAppPackageName())) {
                    return true;
                }
            }
        }
        if (zzaq(context)) {
            return false;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD).enabled;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    private static int zzoM() {
        return 8487000;
    }

    public static boolean zzoN() {
        return zzafL ? zzafM : "user".equals(Build.TYPE);
    }
}
