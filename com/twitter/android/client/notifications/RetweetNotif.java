package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.TweetActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.ck;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class RetweetNotif extends StatusBarNotif {
    public static final Creator<RetweetNotif> CREATOR;

    static {
        CREATOR = new z();
    }

    public RetweetNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    RetweetNotif(Parcel parcel) {
        super(parcel);
    }

    public ac m() {
        if (!y()) {
            return new m(this.a, this.c, this.b);
        }
        return m.a(this.a, this.c, this.b, this, new aa(this.a, this.c, this.b));
    }

    protected String c() {
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    protected String d() {
        return this.e.getString(2131363188, new Object[]{this.a.g});
    }

    protected String b() {
        return this.e.getString(2131363197, new Object[]{this.a.a(), this.a.g});
    }

    protected int i() {
        return 2130839919;
    }

    protected Intent j() {
        return new Intent(this.e, TweetActivity.class).setData(ck.a(this.a.h, this.b)).setAction("com.twitter.android.home.rt." + this.c);
    }

    protected String k() {
        return "retweeted";
    }

    protected String o() {
        return this.e.getString(2131363431);
    }

    protected String p() {
        return "retweet";
    }
}
