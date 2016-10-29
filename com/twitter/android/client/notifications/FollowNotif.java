package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.ProfileActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class FollowNotif extends StatusBarNotif {
    public static final Creator<FollowNotif> CREATOR;

    static {
        CREATOR = new h();
    }

    public FollowNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    FollowNotif(Parcel parcel) {
        super(parcel);
    }

    private boolean n() {
        return (this.a.x == null || this.a.x.c == null || !this.a.x.c.i) ? false : true;
    }

    public ac m() {
        if (!y()) {
            return new m(this.a, this.c, this.b);
        }
        return m.a(this.a, this.c, this.b, this, new i(this.a, this.c, this.b));
    }

    protected String c() {
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    protected String d() {
        return this.e.getString(n() ? 2131363172 : 2131363173);
    }

    protected String b() {
        return this.e.getString(n() ? 2131363191 : 2131363192, new Object[]{this.a.a()});
    }

    protected int i() {
        return 2130839920;
    }

    protected Intent j() {
        return new Intent(this.e, ProfileActivity.class).putExtra("screen_name", this.a.j).setAction("com.twitter.android.home.fol." + this.c);
    }

    public String ar_() {
        return "@" + this.c;
    }

    protected String k() {
        return n() ? "followed_back" : "followed";
    }

    protected String o() {
        return this.e.getString(2131363427);
    }

    protected String p() {
        return "follow";
    }
}
