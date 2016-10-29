package defpackage;

import android.content.Context;
import android.net.Uri;
import cfb;
import cgl;
import com.twitter.config.d;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.q;

/* compiled from: Twttr */
/* renamed from: bzt */
public class bzt extends b<as> {
    public static final RequestMethod a;
    private final String b;
    private cgl c;
    private boolean g;

    protected /* synthetic */ c f() {
        return g();
    }

    static {
        a = RequestMethod.b;
    }

    public bzt(Context context, Session session, String str) {
        super(context, bzt.class.getName(), session);
        int a = d.a("card_compose_preview_retry_max", 2);
        long a2 = d.a("card_compose_preview_retry_timeout_ms", 30000);
        k kVar = new k();
        kVar.a(new l(context, a));
        kVar.a(new q(1));
        kVar.a(new bzu(a, a2));
        a(kVar);
        this.b = str;
    }

    public void b() {
        this.g = true;
    }

    public boolean e() {
        return this.g;
    }

    protected com.twitter.library.service.d a() {
        return K().a(a).a(null).b(Uri.parse(d.b("card_compose_preview_url", "https://caps-staging.twitter.com/v2/cards/preview.json")).getAuthority()).b(r0.getPath()).b().a("status", this.b).a();
    }

    protected as g() {
        return as.a(bdd.AppCompatTheme_checkboxStyle);
    }

    protected boolean b(aa aaVar) {
        if (this.g) {
            aaVar.a(0, "Canceled");
            return false;
        }
        cfb.b("CardPreview", "Trying");
        return true;
    }

    public void b(ab<aa> abVar) {
        cfb.b("CardPreview", "Retry scheduled");
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.c = (cgl) asVar.b();
        }
    }

    public cgl h() {
        return this.c;
    }
}
