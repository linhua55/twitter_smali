package com.twitter.android.util;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract.Profile;
import android.support.v4.content.Loader;
import com.twitter.android.FlowData;
import com.twitter.android.bu;
import com.twitter.app.common.account.a;
import com.twitter.config.d;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.util.aj;
import com.twitter.library.util.b;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
public class bj implements bh {
    private final Context a;

    bj(Context context) {
        this.a = context.getApplicationContext();
    }

    public boolean a() {
        return d.a("seamful_login_enabled");
    }

    public boolean b() {
        return d.a("mandatory_phone_signup_inline_validation_enabled", true);
    }

    public boolean c() {
        if ((d.a("mandatory_phone_signup_check_phone_verified_enabled", true) && e()) || a("phone_signup_countries_graylist") || a("phone_signup_countries_blacklist")) {
            return true;
        }
        return false;
    }

    public boolean a(String str) {
        List c = d.c(str);
        if (c != null) {
            String a = aj.a(this.a);
            if (a != null) {
                return c.contains(a.toUpperCase());
            }
        }
        return false;
    }

    public boolean e() {
        bg a = bg.a();
        for (a c : com.twitter.app.common.account.d.a().c()) {
            TwitterUser c2 = b.c(c);
            if (c2 != null) {
                Session b = a.b(c2.bf_());
                if (b != null) {
                    UserSettings j = b.j();
                    if (j != null && com.twitter.util.aj.b(j.p)) {
                        return true;
                    }
                }
                continue;
            }
        }
        return false;
    }

    public Loader<Cursor> d() {
        return new bu(this.a, Profile.CONTENT_URI, new String[]{"display_name"}, null, null, null);
    }

    public FlowData a(boolean z, boolean z2, boolean z3) {
        FlowData flowData = new FlowData();
        flowData.c(z);
        flowData.g(z2);
        flowData.a(z3);
        flowData.b(c());
        return flowData;
    }
}
