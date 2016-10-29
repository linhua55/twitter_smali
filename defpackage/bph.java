package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bph */
public class bph extends beb<as> {
    private List<TwitterUser> a;
    private final String[] b;
    private final String[] c;

    protected /* synthetic */ c f() {
        return e();
    }

    public bph(Context context, Session session, String[] strArr, String[] strArr2) {
        super(context, bph.class.getName(), session);
        this.a = n.g();
        this.c = strArr;
        this.b = strArr2;
    }

    protected e b() {
        e a = K().a("users", "recommendations").a("display_location", "welcome-flow-smart-follow");
        if (this.c != null && this.c.length > 0) {
            a.a("itsInterests", this.c);
        }
        if (this.b != null && this.b.length > 0) {
            a.a("customInterests", this.b);
        }
        return a;
    }

    protected as e() {
        return as.a(7);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.a = (List) asVar.b();
        }
    }

    public List<TwitterUser> g() {
        return this.a;
    }
}
