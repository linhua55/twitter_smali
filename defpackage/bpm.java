package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.u;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bpm */
public class bpm extends b<t<List<TwitterUser>, cd>> {
    private final ArrayList<TwitterUser> a;
    private final ArrayList<Long> b;
    private final ArrayList<String> c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpm(Context context, Session session) {
        super(context, bpm.class.getName(), session);
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    protected boolean b(aa aaVar) {
        return this.b.size() + this.c.size() != 0;
    }

    protected d a() {
        e c = K().a("users", "lookup").a("include_user_entities", true).d().c();
        int size = this.b.size();
        int size2 = this.c.size();
        if (size > 0) {
            c.a("user_id", this.b);
        }
        if (size2 > 0) {
            c.a("screen_name", this.c);
        }
        return c.a();
    }

    protected t<List<TwitterUser>, cd> b() {
        return u.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<TwitterUser>, cd> tVar) {
        if (httpOperation.j()) {
            List list = (List) tVar.b();
            com.twitter.library.provider.e T = T();
            S().a(list, N().c, -1, -1, "-1", null, true, T);
            T.a();
            this.a.addAll(list);
        }
    }

    public List<TwitterUser> e() {
        return this.a;
    }

    public bpm a(Collection<Long> collection) {
        this.b.addAll(collection);
        return this;
    }

    public bpm b(Collection<String> collection) {
        this.c.addAll(collection);
        return this;
    }
}
