package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.aj;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class f extends b {
    private final long a;
    private final long b;
    private final List<Long> c;
    private final Set<Long> g;

    public f(Context context, Session session, long j, long j2, List<Long> list, Set<Long> set) {
        super(context, f.class.getName(), session);
        this.a = j;
        this.b = j2;
        this.c = list;
        this.g = set;
    }

    public long b() {
        return this.a;
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"media", "media_tags", "delete"}).a("status_id", this.a).a("media_ids", aj.a((CharSequence) ",", this.c)).a("tagged_user_ids", aj.a((CharSequence) ",", this.g)).a();
    }

    protected c f() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        if (httpOperation.j()) {
            e T = T();
            S().a(this.a, this.b, this.c, this.g, T);
            T.a();
        }
    }
}
