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
import com.twitter.model.core.cd;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
/* renamed from: bgp */
public class bgp extends bgm {
    private chs b;
    private boolean c;
    private boolean g;

    protected /* synthetic */ c f() {
        return h();
    }

    public static bgp a(Context context, Session session, String str) {
        return new bgp(context, session, str, false);
    }

    public static bgp a(Context context, Session session, String str, boolean z) {
        return new bgp(context, session, str, z);
    }

    protected bgp(Context context, Session session, String str, boolean z) {
        super(context, bgp.class.getName(), session, str);
        this.c = true;
        this.g = z;
    }

    public bgp g() {
        this.c = false;
        return this;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"device", "register"});
        b(a);
        a.a("send_numeric_pin", true);
        a.a("notifications_disabled", this.c);
        a.a("update_phone", this.g);
        return a.a();
    }

    protected as h() {
        return as.a(51);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        String str;
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            this.b = (chs) asVar.b();
            str = "success";
        } else if (e() == cd.b) {
            str = "error";
        } else if (CollectionUtils.a(e(), 285)) {
            str = "unavailable";
        } else {
            str = "failure";
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(N().c).b("app:twitter_service:phone_number:begin_mobile_verification", str)).c(2));
    }

    public chs s() {
        return this.b;
    }
}
