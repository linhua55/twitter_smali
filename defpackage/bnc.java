package defpackage;

import android.content.Context;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bnc */
public abstract class bnc extends af<t<TwitterUser, cd>> {
    private long b;
    private String c;

    protected /* synthetic */ c f() {
        return b();
    }

    protected bnc(Context context, String str, Session session) {
        super(context, str, session);
    }

    public bnc a(long j) {
        this.b = j;
        return this;
    }

    protected final t<TwitterUser, cd> b() {
        return v.a(TwitterUser.class);
    }

    protected final void a(e eVar) {
        if (this.b != 0) {
            eVar.a("user_id", String.valueOf(this.b));
        } else if (this.c != null) {
            eVar.a("screen_name", this.c);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public long g() {
        return this.b;
    }
}
