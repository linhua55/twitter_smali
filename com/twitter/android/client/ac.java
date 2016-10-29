package com.twitter.android.client;

import android.app.NotificationManager;

/* compiled from: Twttr */
class ac implements Runnable {
    final /* synthetic */ NotificationManager a;
    final /* synthetic */ String b;
    final /* synthetic */ z c;

    ac(z zVar, NotificationManager notificationManager, String str) {
        this.c = zVar;
        this.a = notificationManager;
        this.b = str;
    }

    public void run() {
        this.a.cancel(this.b, 1004);
    }
}
