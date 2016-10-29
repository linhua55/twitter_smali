package com.twitter.android.loggedoutpush;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.c;
import com.twitter.library.client.bg;
import defpackage.bbl;
import defpackage.bbn;
import java.io.IOException;

/* compiled from: Twttr */
public class b implements a {
    private final Context a;

    public b(Context context) {
        this.a = context;
    }

    public boolean a() {
        try {
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.a) == 0) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            bbn.a(e);
            return false;
        }
    }

    public String b() {
        String str = null;
        try {
            str = c.a(this.a).a("49625052041");
        } catch (IOException e) {
        } catch (Throwable e2) {
            bbn.a(new bbl().a("user_id", Long.valueOf(bg.a().c().g())).a(e2));
        }
        return str;
    }
}
