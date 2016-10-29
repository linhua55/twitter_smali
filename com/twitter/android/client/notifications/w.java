package com.twitter.android.client.notifications;

import com.twitter.library.platform.notifications.ad;

/* compiled from: Twttr */
class w extends n {
    w(ad adVar, String str, long j) {
        super(adVar, str, j);
        this.a = 2131363183;
    }

    public int f() {
        return 2130839909;
    }

    public String d() {
        return this.f.getString(this.a, new Object[]{Integer.valueOf(b().size())});
    }

    public String h() {
        return "mention";
    }
}
