package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.m;

/* compiled from: Twttr */
/* renamed from: bos */
public class bos extends b<t<com.twitter.model.profile.b, cd>> {
    public TwitterUser a;
    public volatile ExtendedProfile b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bos(Context context, Session session) {
        super(context, bos.class.getName(), session);
    }

    protected bos(Context context, ab abVar) {
        super(context, bos.class.getName(), abVar);
    }

    protected boolean b(aa aaVar) {
        if (N().c != 0 && this.a != null) {
            return true;
        }
        aaVar.a(false);
        return false;
    }

    protected d a() {
        boolean z = true;
        e a = K().a(new Object[]{"users", "extended_profile"}).a("id", this.a.c);
        String str = "include_birthdate";
        if (this.a.s) {
            z = false;
        }
        return a.a(str, z).a();
    }

    protected t<com.twitter.model.profile.b, cd> b() {
        return v.a(com.twitter.model.profile.b.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<com.twitter.model.profile.b, cd> tVar) {
        di S = S();
        if (httpOperation.k()) {
            com.twitter.model.profile.b bVar = (com.twitter.model.profile.b) tVar.b();
            bVar.b(m.b());
            this.b = (ExtendedProfile) bVar.q();
            com.twitter.library.provider.e T = T();
            S.a(this.a.c, this.b, T);
            T.a();
        }
    }
}
