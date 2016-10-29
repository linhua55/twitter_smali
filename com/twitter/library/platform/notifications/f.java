package com.twitter.library.platform.notifications;

import android.os.Bundle;
import android.support.v4.os.EnvironmentCompat;
import com.twitter.library.platform.PushService.InvalidNotificationPayloadException;
import com.twitter.model.json.common.g;
import com.twitter.util.aj;
import defpackage.bbn;
import defpackage.cmq;
import defpackage.cmy;

/* compiled from: Twttr */
public class f {
    private final Bundle a;

    public f(Bundle bundle) {
        this.a = bundle;
    }

    public String a() {
        return this.a.getString("collapse_key", EnvironmentCompat.MEDIA_UNKNOWN);
    }

    public String b() {
        return this.a.getString("impression_id", "not_provided");
    }

    public String c() {
        return this.a.getString("message_type");
    }

    public int d() {
        CharSequence string = this.a.getString("total_deleted");
        return aj.b(string) ? Integer.parseInt(string) : 0;
    }

    public int e() {
        CharSequence string = this.a.getString("schema");
        return aj.b(string) ? Integer.parseInt(string) : 0;
    }

    public long f() {
        if (e() == 0) {
            CharSequence string = this.a.getString("user_id");
            if (aj.b(string)) {
                return Long.parseLong(string);
            }
            return 0;
        }
        cmy g = g();
        if (g != null) {
            return g.b.b;
        }
        return 0;
    }

    public cmy g() {
        String string = this.a.getString("users");
        return aj.b((CharSequence) string) ? (cmy) g.a(string, cmy.class) : null;
    }

    public cmq h() {
        String string = this.a.getString("tweet");
        return aj.b((CharSequence) string) ? (cmq) g.a(string, cmq.class) : null;
    }

    public String i() {
        CharSequence string = this.a.getString("scribe_target");
        if (aj.b(string)) {
            return string;
        }
        bbn.a(new InvalidNotificationPayloadException("Missing scribe_target."));
        return l().a;
    }

    public int j() {
        CharSequence string = this.a.getString("priority");
        return aj.b(string) ? Integer.parseInt(string) : 0;
    }

    public int k() {
        CharSequence string = this.a.getString("type");
        return aj.b(string) ? Integer.parseInt(string) : 9;
    }

    public t l() {
        int k;
        Object a;
        if (this.a.containsKey("type")) {
            k = k();
            a = NotificationConstants.a(k);
            if (a == null) {
                k = 9;
                a = EnvironmentCompat.MEDIA_UNKNOWN;
            }
        } else {
            String a2 = a();
            k = NotificationConstants.a(a2);
        }
        if (bbn.b()) {
            bbn.a().b("collapse_key", a);
        }
        return new t(a, k);
    }
}
