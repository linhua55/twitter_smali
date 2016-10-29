package com.twitter.badge;

import android.content.Context;

/* compiled from: Twttr */
public class LauncherIconBadgeUtil {
    private static LauncherIconBadgeUtil a;
    private final Context b;
    private final Badger c;
    private final int d;

    public static synchronized LauncherIconBadgeUtil a(Context context) {
        LauncherIconBadgeUtil launcherIconBadgeUtil;
        synchronized (LauncherIconBadgeUtil.class) {
            if (a == null) {
                a = new LauncherIconBadgeUtil(context);
            }
            launcherIconBadgeUtil = a;
        }
        return launcherIconBadgeUtil;
    }

    private LauncherIconBadgeUtil(Context context) {
        this(context, 999);
    }

    private LauncherIconBadgeUtil(Context context, int i) {
        this.b = context.getApplicationContext();
        this.d = i;
        for (Badger badger : Badger.values()) {
            if (badger.a(context)) {
                this.c = badger;
                return;
            }
        }
        this.c = Badger.a;
    }

    public void a(int i) {
        this.c.a(this.b, Math.min(i, this.d));
    }
}
