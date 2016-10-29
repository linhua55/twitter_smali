package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cg;

/* compiled from: Twttr */
/* renamed from: blv */
public class blv extends b<v<cg, cd>> {
    public cg a;
    private final long b;
    private final String c;
    private final String g;

    protected /* synthetic */ c f() {
        return b();
    }

    public blv(Context context, Session session, long j, String str, String str2) {
        super(context, blv.class.getName(), session);
        this.b = j;
        this.c = str;
        this.g = str2;
    }

    protected d a() {
        e a = K().b(new Object[]{"lists"}).a(new Object[]{"show"});
        if (this.b > 0) {
            a.a("list_id", this.b);
        } else {
            a.a("slug", this.g);
            a.a("owner_screen_name", this.c);
        }
        return a.a();
    }

    protected v<cg, cd> b() {
        return v.a(cg.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, v<cg, cd> vVar) {
        if (aaVar.b()) {
            this.a = (cg) vVar.b();
        }
    }
}
