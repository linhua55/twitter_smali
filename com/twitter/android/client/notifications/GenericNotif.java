package com.twitter.android.client.notifications;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.app.common.account.d;
import com.twitter.app.main.MainActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.InvalidDataException;
import com.twitter.util.aj;
import defpackage.bbn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class GenericNotif extends StatusBarNotif {
    public static final Creator<GenericNotif> CREATOR;

    static {
        CREATOR = new k();
    }

    public GenericNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    GenericNotif(Parcel parcel) {
        super(parcel);
    }

    public String c() {
        if (aj.b(this.a.f)) {
            return this.a.f;
        }
        return this.e.getString(2131361897);
    }

    public String ar_() {
        return a(this.c, d.a().b());
    }

    static String a(String str, int i) {
        return i > 1 ? str : null;
    }

    public int i() {
        return 2130839920;
    }

    protected Intent j() {
        Intent intent = new Intent("android.intent.action.VIEW").setData(Uri.parse(this.a.m)).setPackage(this.e.getPackageName());
        if (intent.resolveActivity(this.e.getPackageManager()) == null) {
            bbn.a(new InvalidDataException("Invalid uri: " + this.a.m));
            intent = new Intent(this.e, MainActivity.class);
        }
        intent.putExtra("reason", this.a.g).putExtra("notification_setting_key", this.a.q);
        return intent;
    }

    protected String k() {
        return "generic";
    }

    protected List<ScribeItem> as_() {
        if (this.a.i == 0 && this.a.h == 0) {
            return Collections.EMPTY_LIST;
        }
        TwitterScribeItem twitterScribeItem;
        List<ScribeItem> arrayList = new ArrayList(3);
        if (this.a.i != 0) {
            twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.a = this.a.i;
            twitterScribeItem.b = "sender_id";
            twitterScribeItem.c = 3;
            arrayList.add(twitterScribeItem);
        }
        if (this.a.h != 0) {
            twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.a = this.a.h;
            twitterScribeItem.b = "status_id";
            twitterScribeItem.c = 0;
            arrayList.add(twitterScribeItem);
        }
        twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.b = this.a.g;
        twitterScribeItem.c = 6;
        arrayList.add(twitterScribeItem);
        return arrayList;
    }
}
