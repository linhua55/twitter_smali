package defpackage;

import android.content.Context;
import bbl;
import bbn;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.platform.notifications.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.d;
import com.twitter.util.aj;
import com.twitter.util.al;

/* compiled from: Twttr */
/* renamed from: bmm */
public class bmm extends bml {
    public bmm(Context context, Session session, String str, String str2) {
        super(context, "CheckPushDevice", new ab(session), str, str2);
        if (aj.a(session.e())) {
            bbn.a(new bbl().a("userId", Long.valueOf(session.g())).a(new IllegalStateException("Session account name cannot be null.")));
        }
    }

    protected d a() {
        return a(K().a("push_destinations", "device")).a();
    }

    protected boolean b(aa aaVar) {
        Object obj = N().e;
        if (!aj.b(obj)) {
            return false;
        }
        this.c = PushRegistration.a(this.p, obj);
        return true;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cnd, cnc> tVar) {
        int i = 0;
        if (aaVar.b()) {
            cnd a = a((t) tVar);
            if (a == null || !a.a) {
                bbn.a(new Exception("Push API endpoint did not return the current push settings."));
                this.g = 0;
                return;
            }
            a(a.b);
            return;
        }
        if (aaVar.d() == 304) {
            aaVar.a(true);
        } else if (aaVar.d() == 401) {
            cnc b = b(tVar);
            if (b != null) {
                i = b.b;
            }
            this.g = i;
        } else {
            this.g = 0;
        }
        a(N().e);
    }

    protected void a(int i) {
        new bmo(this.p, N(), this.a, i, this.b).P();
    }

    protected void a(String str) {
        long a = com.twitter.config.d.a("android_push_settings_check_in_failure_interval_hours", 6) * 3600000;
        w.a(this.p, str).a((al.b() - (com.twitter.config.d.a("android_push_settings_check_in_success_interval_hours", 24) * 3600000)) + a);
    }
}
