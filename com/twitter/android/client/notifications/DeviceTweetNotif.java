package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.platform.notifications.ad;
import zt;

/* compiled from: Twttr */
public class DeviceTweetNotif extends TweetNotif {
    public static final Creator<DeviceTweetNotif> CREATOR;

    static {
        CREATOR = new c();
    }

    public DeviceTweetNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    DeviceTweetNotif(Parcel parcel) {
        super(parcel);
    }

    protected int a() {
        return 2131363186;
    }

    protected int l() {
        return 2131363186;
    }

    protected int n() {
        return 2131363198;
    }

    public int i() {
        return 2130839920;
    }

    protected String k() {
        return "tweet";
    }

    protected String o() {
        return this.e.getString(2131363432);
    }

    protected String p() {
        return "tweet_" + this.a.j;
    }

    protected String q() {
        return "tweet";
    }

    public ac m() {
        if (zt.b() == 3) {
            return new d(this, this.a, this.c, this.b);
        }
        return super.m();
    }
}
