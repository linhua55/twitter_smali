package defpackage;

import android.content.Context;
import bds;
import com.twitter.library.client.Session;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bdu */
public class bdu extends bds {
    private final String a;
    private final long b;
    private String c;

    public bdu(Context context, Session session, long j, String str) {
        super(context, bdu.class.getName(), session);
        this.b = j;
        this.a = str;
    }

    protected d a() {
        e a = b().a("login_verification_user_id", String.valueOf(this.b)).a("login_verification_request_id", this.a);
        if (this.c != null) {
            a.a("login_verification_challenge_response", this.c);
        }
        return a.a();
    }

    public bdu a(String str) {
        this.c = str;
        return this;
    }

    public boolean t() {
        return aj.b(this.c);
    }
}
