package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.common.n;
import java.util.Locale;

public final class pc {
    private int a;
    private boolean b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private double m;
    private boolean n;
    private String o;
    private boolean p;
    private boolean q;
    private String r;
    private boolean s;
    private boolean t;
    private String u;
    private String v;
    private float w;
    private int x;
    private int y;

    public pc(Context context) {
        boolean z = true;
        PackageManager packageManager = context.getPackageManager();
        a(context);
        a(context, packageManager);
        b(context);
        Locale locale = Locale.getDefault();
        this.p = a(packageManager, "geo:0,0?q=donuts") != null;
        if (a(packageManager, "http://www.google.com") == null) {
            z = false;
        }
        this.q = z;
        this.r = locale.getCountry();
        this.s = aa.a().a();
        this.t = n.zzap(context);
        this.u = locale.getLanguage();
        this.v = a(packageManager);
        Resources resources = context.getResources();
        if (resources != null) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            if (displayMetrics != null) {
                this.w = displayMetrics.density;
                this.x = displayMetrics.widthPixels;
                this.y = displayMetrics.heightPixels;
            }
        }
    }

    public pc(Context context, pb pbVar) {
        PackageManager packageManager = context.getPackageManager();
        a(context);
        a(context, packageManager);
        b(context);
        c(context);
        this.p = pbVar.b;
        this.q = pbVar.c;
        this.r = pbVar.e;
        this.s = pbVar.f;
        this.t = pbVar.g;
        this.u = pbVar.j;
        this.v = pbVar.k;
        this.w = pbVar.r;
        this.x = pbVar.s;
        this.y = pbVar.t;
    }

    private static ResolveInfo a(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    private static String a(PackageManager packageManager) {
        String str = null;
        ResolveInfo a = a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (a != null) {
            ActivityInfo activityInfo = a.activityInfo;
            if (activityInfo != null) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0);
                    if (packageInfo != null) {
                        str = packageInfo.versionCode + "." + activityInfo.packageName;
                    }
                } catch (NameNotFoundException e) {
                }
            }
        }
        return str;
    }

    private void a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.a = audioManager.getMode();
        this.b = audioManager.isMusicActive();
        this.c = audioManager.isSpeakerphoneOn();
        this.d = audioManager.getStreamVolume(3);
        this.e = audioManager.getRingerMode();
        this.f = audioManager.getStreamVolume(2);
    }

    @TargetApi(16)
    private void a(Context context, PackageManager packageManager) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.g = telephonyManager.getNetworkOperator();
        this.i = telephonyManager.getNetworkType();
        this.j = telephonyManager.getPhoneType();
        this.h = -2;
        this.k = false;
        this.l = -1;
        if (ar.e().a(packageManager, context.getPackageName(), "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.h = activeNetworkInfo.getType();
                this.l = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.h = -1;
            }
            if (VERSION.SDK_INT >= 16) {
                this.k = connectivityManager.isActiveNetworkMetered();
            }
        }
    }

    private void b(Context context) {
        boolean z = false;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            this.m = (double) (((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)));
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.n = z;
            return;
        }
        this.m = -1.0d;
        this.n = false;
    }

    private void c(Context context) {
        this.o = Build.FINGERPRINT;
    }

    public pb a() {
        return new pb(this.a, this.p, this.q, this.g, this.r, this.s, this.t, this.b, this.c, this.u, this.v, this.d, this.h, this.i, this.j, this.e, this.f, this.w, this.x, this.y, this.m, this.n, this.k, this.l, this.o);
    }
}
