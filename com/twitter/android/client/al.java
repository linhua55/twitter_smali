package com.twitter.android.client;

import android.content.Context;
import android.os.Bundle;

/* compiled from: Twttr */
class al implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ Context b;
    final /* synthetic */ Bundle c;
    final /* synthetic */ String d;
    final /* synthetic */ NotificationService e;

    al(NotificationService notificationService, int i, Context context, Bundle bundle, String str) {
        this.e = notificationService;
        this.a = i;
        this.b = context;
        this.c = bundle;
        this.d = str;
    }

    public void run() {
        this.e.stopSelf(this.a);
        NotificationService.a(this.b, this.c);
        this.e.a(this.b, this.c, this.d);
    }
}
