package defpackage;

import android.content.Context;
import ark;
import aru;
import asa;
import byi;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.al;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: bmb */
public class bmb extends af<t<ckv, cd>> implements bme {
    private final byi b;
    private final String c;
    private final String g;
    private final String h;
    private String i;
    private boolean j;

    protected /* synthetic */ c f() {
        return b();
    }

    public bmb(Context context, Session session, byi byi, String str, String str2) {
        super(context, bmb.class.getName(), session);
        this.b = byi;
        this.c = str;
        this.g = str2;
        this.h = bys.a().b();
    }

    protected d a() {
        e c = K().b().a("v", 1447995056).b("X-Twitter-UTCOffset", al.a()).a("moments", "modern_guide").a(RequestMethod.b).a("include_blocking", true).a("include_capsule_contents", 0).d().c();
        if (this.c != null) {
            c.a("category_id", this.c);
        }
        if (this.g != null) {
            c.a("scroll_cursor", this.g);
        }
        if (this.h != null) {
            c.a("mode", this.h);
        }
        return c.a();
    }

    protected t<ckv, cd> b() {
        return v.a(ckv.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<ckv, cd> tVar) {
        if (httpOperation.j()) {
            ckv ckv = (ckv) tVar.b();
            if (ckv != null) {
                String str = this.c != null ? this.c : "0";
                if (h()) {
                    this.b.a(ckv, str);
                } else {
                    this.b.b(ckv, str);
                }
                if (this.i == null) {
                    this.i = ckv.e;
                } else {
                    h.a("Attempting to override an existing scroll cursor value, this means that this request has been re-used. Create a new request instead.");
                }
            }
            this.j = true;
            asa.a("moments:sectioned_guide:fetch", aru.b(), ark.m).j();
            return;
        }
        asa.a("moments:sectioned_guide:fetch", aru.b(), ark.m).k();
    }

    public Runnable c(AsyncOperation asyncOperation) {
        asa.a("moments:sectioned_guide:fetch", aru.b(), ark.m).i();
        return super.c(asyncOperation);
    }

    public String e() {
        return "app:twitter_service:moments:sectioned_guide_request";
    }

    public String g() {
        return this.i;
    }

    private boolean h() {
        return this.g == null;
    }
}
