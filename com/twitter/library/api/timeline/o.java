package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
public class o extends p {
    private final List<Tweet> a;
    private boolean b;
    private Tweet c;
    private List<Long> h;

    public o(Context context, Session session, long j) {
        this(context, new ab(session), j);
    }

    public o(Context context, ab abVar, long j) {
        super(context, abVar, j);
        this.a = new ArrayList();
        this.b = false;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<cm>, cd> tVar) {
        boolean j = httpOperation.j();
        super.a(httpOperation, aaVar, (t) tVar);
        if (j && this.b) {
            List<cm> list = (List) tVar.b();
            if (list != null && list.size() <= 10) {
                for (cm bf_ : list) {
                    this.h.add(Long.valueOf(bf_.bf_()));
                }
                n nVar = new n(this.p, N(), this.c, s());
                nVar.P();
                this.a.clear();
                this.a.addAll(nVar.b());
            }
        }
    }

    public o a(Tweet tweet, List<Long> list) {
        this.b = true;
        this.c = tweet;
        this.h = new ArrayList(list);
        return this;
    }

    public List<Tweet> e() {
        return this.a;
    }

    private List<Long> s() {
        Collection hashSet = new HashSet(this.h);
        if (this.c != null) {
            hashSet.remove(Long.valueOf(this.c.H));
        }
        List arrayList = new ArrayList(hashSet);
        Collections.sort(arrayList);
        int size = arrayList.size();
        return arrayList.subList(size - Math.min(size, 10), size);
    }
}
