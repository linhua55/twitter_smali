package com.twitter.android.client.notifications;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.library.platform.notifications.ad;

/* compiled from: Twttr */
public class LifelineTweetNotif extends TweetNotif {
    public static final Creator<LifelineTweetNotif> CREATOR;

    static {
        CREATOR = new o();
    }

    public LifelineTweetNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    LifelineTweetNotif(Parcel parcel) {
        super(parcel);
    }

    protected int a() {
        return 2131363180;
    }

    protected int l() {
        return 2131363180;
    }

    protected int n() {
        return 2131363194;
    }

    public int i() {
        return 2130839904;
    }

    protected String k() {
        return "lifeline_alert";
    }
}
