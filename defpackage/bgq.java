package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bgq */
public class bgq extends bgm {
    private final String b;
    private final boolean c;
    private boolean g;
    private boolean h;

    protected /* synthetic */ c f() {
        return h();
    }

    public static bgq a(Context context, Session session, String str, String str2, boolean z) {
        return new bgq(context, session, str, str2, z, false);
    }

    public static bgq a(Context context, Session session, String str, String str2, boolean z, boolean z2) {
        return new bgq(context, session, str, str2, z, z2);
    }

    protected bgq(Context context, Session session, String str, String str2, boolean z, boolean z2) {
        super(context, bgp.class.getName(), session, str);
        this.g = true;
        this.b = str2;
        this.c = z;
        this.h = z2;
    }

    public bgq g() {
        this.g = false;
        return this;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"device", "register_complete"});
        a(a);
        a.a("numeric_pin", this.b);
        a.a("is_verizon", this.c);
        a.a("notifications_disabled", this.g);
        a.a("update_phone", this.h);
        return a.a();
    }

    protected as h() {
        return null;
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        String str;
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            str = "success";
        } else if (httpOperation.l().a == 0) {
            str = "error";
        } else {
            str = "failure";
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(N().c).b("app:twitter_service:phone_number:complete_mobile_verification", str)).c(2));
    }
}
