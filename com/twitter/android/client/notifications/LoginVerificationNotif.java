package com.twitter.android.client.notifications;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import bek;
import com.twitter.android.LoginVerificationActivity;
import com.twitter.android.SecuritySettingsActivity;
import com.twitter.library.platform.notifications.ad;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class LoginVerificationNotif extends StatusBarNotif {
    public static final Creator<LoginVerificationNotif> CREATOR;

    static {
        CREATOR = new p();
    }

    public LoginVerificationNotif(ad adVar, long j, String str) {
        super(adVar, j, str);
    }

    LoginVerificationNotif(Parcel parcel) {
        super(parcel);
    }

    public String b() {
        return B();
    }

    public String c() {
        return aj.b(this.a.f) ? this.a.f : this.e.getString(2131363182);
    }

    public String d() {
        return aj.b(this.a.g) ? this.a.g : "@" + this.c;
    }

    public int i() {
        return 2130839920;
    }

    protected Intent j() {
        if (bek.e(this.e, this.c)) {
            Intent intent = new Intent(this.e, LoginVerificationActivity.class);
            intent.putExtra("lv_account_name", this.c);
            return intent;
        }
        intent = new Intent(this.e, SecuritySettingsActivity.class);
        intent.putExtra("SecuritySettingsActivity_account_name", this.c);
        return intent;
    }

    protected String k() {
        return null;
    }
}
