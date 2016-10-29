package com.twitter.android.client.notifications;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.app.users.q;
import com.twitter.library.platform.notifications.ad;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class FollowRequestNotif extends StatusBarNotif {
    public static final Creator<FollowRequestNotif> CREATOR;

    static {
        CREATOR = new j();
    }

    public FollowRequestNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    FollowRequestNotif(Parcel parcel) {
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
        return this.e.getString(2131363174);
    }

    protected String b() {
        return this.e.getString(2131363193, new Object[]{this.a.a()});
    }

    protected int i() {
        return 2130839920;
    }

    protected String k() {
        return "followed_request";
    }

    protected Intent j() {
        return a(this.e, this.a.j, this.c);
    }

    private static Intent a(Context context, String str, String str2) {
        return new q().a(18).c(true).e(str).a(context).setAction("com.twitter.android.home.folreq." + str2);
    }

    public String ar_() {
        return '@' + this.c;
    }
}
