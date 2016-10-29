package com.twitter.android.client.notifications;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.TweetActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class PollNotif extends StatusBarNotif {
    public static final Creator<PollNotif> CREATOR;

    static {
        CREATOR = new y();
    }

    public PollNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    PollNotif(Parcel parcel) {
        super(parcel);
    }

    protected int i() {
        return 2130839920;
    }

    protected String c() {
        return aj.b(super.c()) ? this.a.f : this.a.a();
    }

    protected Intent j() {
        Intent intent = new Intent(this.e, TweetActivity.class).setData(Uri.parse(this.a.m)).setPackage(this.e.getPackageName());
        intent.putExtra("reason", this.a.g).putExtra("notification_setting_key", this.a.q);
        return intent;
    }

    protected String k() {
        return "poll_announcement";
    }

    protected String o() {
        return this.e.getString(2131363430);
    }

    protected String p() {
        return "poll_announcement";
    }
}
