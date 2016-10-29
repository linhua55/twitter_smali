package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import com.twitter.android.TweetActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.ck;
import com.twitter.util.aj;

/* compiled from: Twttr */
public abstract class TweetNotif extends StatusBarNotif {
    protected abstract int a();

    protected abstract int l();

    protected abstract int n();

    public TweetNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    protected TweetNotif(Parcel parcel) {
        super(parcel);
    }

    public String c() {
        if (this.a.c > 1) {
            return this.e.getString(a());
        }
        return aj.b(this.a.f) ? this.a.f : this.a.a();
    }

    public String b() {
        if (this.a.c > 1) {
            return this.e.getString(l());
        }
        return this.e.getString(n(), new Object[]{this.a.a(), this.a.g});
    }

    public String d() {
        if (this.a.c > 1) {
            return "@" + this.c;
        }
        return this.a.g;
    }

    protected Intent j() {
        if (this.a.c > 1) {
            return new Intent(this.e, MainActivity.class).putExtra("page", MainActivity.c).setAction("com.twitter.android.home." + this.c);
        }
        return new Intent(this.e, TweetActivity.class).setData(ck.a(this.a.h, this.b)).setAction("com.twitter.android.home.tw." + this.c);
    }
}
