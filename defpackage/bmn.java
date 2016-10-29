package defpackage;

import android.content.Context;
import android.content.Intent;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.provider.ck;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bmn */
public class bmn extends b {
    private final String a;

    public bmn(Context context, Session session, String str) {
        super(context, "DeletePushDevice", session);
        this.a = str;
        k("Push destination changes are always considered as a non-user action");
    }

    protected d a() {
        e a = K().a("push_destinations", "destroy").a(RequestMethod.b).a("udid", this.a).a("app_version", 15);
        if (AppConfig.m().b()) {
            a.a("environment", 2);
        }
        return a.a();
    }

    protected c f() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        if (aaVar.b()) {
            a(N().e);
        }
    }

    protected void a(String str) {
        w a = w.a(this.p, str);
        a.a(false);
        a.a(0);
        this.p.sendOrderedBroadcast(new Intent(PushRegistration.d).putExtra("account", str).putExtra("push_return_code", 1), ck.a);
    }
}
