package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.u;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bpb */
public class bpb extends b<t<List<TwitterUser>, cd>> {
    public final bpc a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpb(Context context, ab abVar) {
        super(context, bpb.class.getName(), abVar);
        this.a = new bpc();
    }

    protected d a() {
        e a = K().a("users", "lookup");
        if (this.a.a != null && this.a.a.length > 0) {
            a.a("user_id", this.a.a);
        }
        if (this.a.b != null && this.a.b.length > 0) {
            a.a("email", this.a.b);
        }
        if (this.a.c != null && this.a.c.length > 0) {
            a.a("phone", this.a.c);
        }
        return a.a();
    }

    protected t<List<TwitterUser>, cd> b() {
        return u.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<TwitterUser>, cd> tVar) {
        if (httpOperation.j()) {
            a(b((List) tVar.b()));
        }
    }

    public bpb a(long[] jArr, boolean z) {
        this.a.h = z;
        this.a.a = jArr;
        return this;
    }

    protected void a(List<TwitterUser> list) {
        long j = N().c;
        this.a.j = list;
        this.a.i = S().a(list, j, this.a.d, this.a.e, this.a.f, this.a.g, true, null);
    }

    private List<TwitterUser> b(List<TwitterUser> list) {
        if (this.a.a == null || this.a.a.length <= 0 || !this.a.h) {
            return list;
        }
        int size = list.size();
        Map hashMap = new HashMap(size);
        List<TwitterUser> arrayList = new ArrayList(size);
        for (TwitterUser twitterUser : list) {
            TwitterUser twitterUser2;
            hashMap.put(Long.valueOf(twitterUser2.c), twitterUser2);
        }
        for (long valueOf : this.a.a) {
            twitterUser2 = (TwitterUser) hashMap.get(Long.valueOf(valueOf));
            if (twitterUser2 != null) {
                arrayList.add(twitterUser2);
            }
        }
        return arrayList;
    }
}
