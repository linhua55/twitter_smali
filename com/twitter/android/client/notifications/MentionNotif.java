package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.TweetActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.ck;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class MentionNotif extends StatusBarNotif {
    public static final Creator<MentionNotif> CREATOR;

    static {
        CREATOR = new v();
    }

    public MentionNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    MentionNotif(Parcel parcel) {
        super(parcel);
    }

    public ac m() {
        if (!y()) {
            return new m(this.a, this.c, this.b);
        }
        return m.a(this.a, this.c, this.b, this, new w(this.a, this.c, this.b));
    }

    protected String c() {
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    protected String d() {
        return this.a.g;
    }

    protected String b() {
        return this.a.g;
    }

    protected int i() {
        return 2130839909;
    }

    protected Intent j() {
        return new Intent(this.e, TweetActivity.class).setData(ck.a(this.a.h, this.b)).setAction("com.twitter.android.home.mentions." + this.c);
    }

    protected String k() {
        return "mention";
    }

    protected String o() {
        return this.e.getString(2131363429);
    }

    protected String p() {
        return "mention";
    }
}
