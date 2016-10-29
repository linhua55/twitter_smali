package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.TweetActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.ck;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class MediaTagNotif extends StatusBarNotif {
    public static final Creator<MediaTagNotif> CREATOR;

    static {
        CREATOR = new u();
    }

    public MediaTagNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    MediaTagNotif(Parcel parcel) {
        super(parcel);
    }

    public ac m() {
        if (y()) {
            return m.a(this.a, this.c, this.b, this, null);
        }
        return new m(this.a, this.c, this.b);
    }

    protected String c() {
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    protected String d() {
        return this.e.getString(2131363176);
    }

    protected String b() {
        return this.e.getString(2131363196, new Object[]{this.a.a()});
    }

    protected int i() {
        return 2130839920;
    }

    protected Intent j() {
        return new Intent(this.e, TweetActivity.class).setData(ck.a(this.a.h, this.b)).setAction("com.twitter.android.home.mediatags." + this.c);
    }

    protected String k() {
        return "media_tagged";
    }
}
