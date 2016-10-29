package com.twitter.app.common.app;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.support.multidex.MultiDex;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.internal.af;
import com.twitter.app.common.app.internal.v;
import com.twitter.app.common.util.c;
import com.twitter.config.a;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.media.fresco.f;
import com.twitter.library.media.manager.l;
import com.twitter.util.aj;
import com.twitter.util.object.b;

/* compiled from: Twttr */
public class TwitterApplication extends InjectedApplication {
    private boolean d;

    protected /* synthetic */ a a(long j) {
        return b(j);
    }

    static {
        a.a("com.twitter.android");
        c();
    }

    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    public void onCreate() {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.d = a(getApplicationContext());
        c();
        super.onCreate();
        Session c = bg.a().c();
        if (!this.d && c.d()) {
            c.a().a(new j(this, SystemClock.uptimeMillis(), uptimeMillis, c.g()));
        }
    }

    protected l b(long j) {
        return c.i().a(new v(this, j)).a(new af(this.d)).a();
    }

    protected b<UserIdentifier, o> a() {
        return new k(this);
    }

    public void onLowMemory() {
        super.onLowMemory();
        l.a((Context) this).onLowMemory();
    }

    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        f.a().a(i);
    }

    private static boolean a(Context context) {
        RunningAppProcessInfo a = com.twitter.util.c.a(context, Process.myPid());
        return a != null && aj.b(a.processName) && a.processName.endsWith("MediaService");
    }

    private static void c() {
        if (!"com.twitter.android".equals(a.a())) {
            throw new IllegalArgumentException("Default authority is incorrect");
        }
    }
}
