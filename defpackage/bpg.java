package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bpg */
public class bpg extends b<t<TwitterUser, cd>> {
    protected final long a;
    private TwitterUser b;

    protected /* synthetic */ c f() {
        return e();
    }

    public bpg(Context context, Session session, long j) {
        super(context, bpg.class.getName(), session);
        this.a = j;
    }

    public TwitterUser b() {
        return this.b;
    }

    protected d a() {
        e a = K().a("users", "show").a("include_media_features", true).a("include_user_entities", true).a("send_error_codes", true);
        if (this.a == 0) {
            a.a("screen_name", TtmlNode.ANONYMOUS_REGION_ID);
        } else {
            a.a("user_id", this.a);
        }
        return a.a();
    }

    protected t<TwitterUser, cd> e() {
        return v.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TwitterUser, cd> tVar) {
        if (httpOperation.j()) {
            this.b = (TwitterUser) tVar.b();
        }
    }
}
