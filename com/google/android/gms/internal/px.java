package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public class px {
    long a;
    long b;
    int c;
    final String d;
    int e;
    int f;
    private final Object g;

    public px(String str) {
        this.a = -1;
        this.b = -1;
        this.c = -1;
        this.g = new Object();
        this.e = 0;
        this.f = 0;
        this.d = str;
    }

    public static boolean a(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            b.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                return true;
            }
            b.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (NameNotFoundException e) {
            b.d("Fail to fetch AdActivity theme");
            b.c("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public long a() {
        return this.b;
    }

    public Bundle a(Context context, String str) {
        Bundle bundle;
        synchronized (this.g) {
            bundle = new Bundle();
            bundle.putString("session_id", this.d);
            bundle.putLong("basets", this.b);
            bundle.putLong("currts", this.a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.c);
            bundle.putInt("pclick", this.e);
            bundle.putInt("pimp", this.f);
            bundle.putBoolean("support_transparent_background", a(context));
        }
        return bundle;
    }

    public void a(AdRequestParcel adRequestParcel, long j) {
        synchronized (this.g) {
            if (this.b == -1) {
                this.b = j;
                this.a = this.b;
            } else {
                this.a = j;
            }
            if (adRequestParcel.c == null || adRequestParcel.c.getInt("gw", 2) != 1) {
                this.c++;
                return;
            }
        }
    }

    public void b() {
        synchronized (this.g) {
            this.e++;
        }
    }

    public void c() {
        synchronized (this.g) {
            this.f++;
        }
    }
}
