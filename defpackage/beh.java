package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: beh */
public class beh extends bds {
    public final String a;
    public final String b;

    public beh(Context context, Session session, String str, String str2) {
        super(context, beh.class.getName(), session);
        this.a = str;
        this.b = str2;
    }

    protected d a() {
        return b().a("x_auth_password", this.b).a("x_auth_username", this.a).a();
    }
}
