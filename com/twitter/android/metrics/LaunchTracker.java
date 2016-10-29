package com.twitter.android.metrics;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.app.main.MainActivity;

/* compiled from: Twttr */
public class LaunchTracker {
    private static LaunchTracker a;
    private LaunchType b;
    private boolean c;
    private boolean d;
    private Boolean e;

    public static synchronized LaunchTracker a() {
        LaunchTracker launchTracker;
        synchronized (LaunchTracker.class) {
            if (a == null) {
                a = new LaunchTracker();
            }
            launchTracker = a;
        }
        return launchTracker;
    }

    private LaunchTracker() {
        this.b = LaunchType.a;
    }

    public void a(Intent intent) {
        this.b = this.b == LaunchType.a ? LaunchType.b : LaunchType.c;
        this.c = intent.getBooleanExtra("from_launcher", false);
        this.d = intent.getBooleanExtra("test_start", false);
    }

    public void a(Uri uri) {
        if (this.e == null || uri == null) {
            this.e = Boolean.valueOf(uri.equals(MainActivity.c));
        }
    }

    boolean b() {
        return this.b != LaunchType.a && ((this.c || this.d) && this.e != null && this.e.booleanValue());
    }

    String a(boolean z) {
        if (this.b == LaunchType.b) {
            return z ? "_firstui:full" : "_cold";
        } else {
            if (this.b == LaunchType.c) {
                return z ? "_resume:full" : "_warm";
            } else {
                return BuildConfig.VERSION_NAME;
            }
        }
    }

    void c() {
        this.c = false;
        this.e = null;
    }
}
