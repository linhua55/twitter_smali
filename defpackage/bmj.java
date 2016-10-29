package defpackage;

import android.content.Context;
import cbk;
import com.twitter.android.mx;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bmj */
public class bmj extends b<as> {
    private String a;
    private String b;
    private String c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bmj(Context context, Session session) {
        super(context, bmj.class.getName(), session);
    }

    public bmj a(String str) {
        this.a = str;
        return this;
    }

    public bmj b(String str) {
        this.b = str;
        return this;
    }

    public bmj c(String str) {
        this.c = str;
        return this;
    }

    protected d a() {
        e a = K().a(new Object[]{"news", "details"});
        a.a("country_code", this.a);
        a.a("lang", this.b);
        a.a("id", this.c);
        return a.a();
    }

    protected as b() {
        return as.a((int) mx.AppCompatTheme_buttonStyleSmall);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            cbk cbk = (cbk) asVar.b();
            com.twitter.library.provider.e T = T();
            S().a(N().c, cbk, T, true);
            T.a();
        }
    }
}
