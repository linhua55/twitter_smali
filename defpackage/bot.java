package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bot */
public class bot extends b<as> {
    public long a;
    public volatile int b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bot(Context context, Session session) {
        super(context, bot.class.getName(), session);
    }

    protected bot(Context context, ab abVar) {
        super(context, bot.class.getName(), abVar);
    }

    protected boolean b(aa aaVar) {
        if (N().c != 0 && this.a != 0) {
            return true;
        }
        aaVar.a(false);
        return false;
    }

    protected d a() {
        return K().a(new Object[]{"friendships", "show"}).a("source_id", N().c).a("target_id", this.a).a();
    }

    protected as b() {
        return as.a(30);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        di S = S();
        if (httpOperation.k()) {
            S.b(this.a, ((Integer) asVar.b()).intValue());
        }
        this.b = S.f(this.a);
    }
}
