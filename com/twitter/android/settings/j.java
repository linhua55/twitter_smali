package com.twitter.android.settings;

/* compiled from: Twttr */
class j implements Runnable {
    final /* synthetic */ MobileNotificationsActivity a;

    j(MobileNotificationsActivity mobileNotificationsActivity) {
        this.a = mobileNotificationsActivity;
    }

    public void run() {
        this.a.b(true);
    }
}
