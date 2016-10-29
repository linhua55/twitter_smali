package com.twitter.library.api.timeline;

import android.content.Context;
import android.database.Cursor;
import ccc;
import cdg;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.ai;
import com.twitter.library.api.as;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cm;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bw;
import com.twitter.util.object.ObjectUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class n extends b {
    private final List<Tweet> a;
    private final Tweet b;
    private final List<Long> c;

    public n(Context context, ab abVar, Tweet tweet, List<Long> list) {
        super(context, n.class.getSimpleName(), abVar);
        this.a = new ArrayList();
        this.b = tweet;
        this.c = list;
    }

    protected d a() {
        e a = K().a("conversation", "suggestions", "show").a(TtmlNode.ATTR_ID, this.b.H).a("author_id", this.b.s).a("pc", true);
        if (this.c.size() > 0) {
            a.a("last_tweets", this.c);
        }
        if (this.b.f != null) {
            a.a("impression_id", this.b.f.c);
        }
        return a.a();
    }

    protected c f() {
        return as.a(44);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        if (httpOperation.k()) {
            a((ai) ((as) cVar).b());
        }
    }

    public final List<Tweet> b() {
        return this.a;
    }

    private void a(ai aiVar) {
        if (aiVar != null && !aiVar.a.isEmpty()) {
            List<av> list = aiVar.a;
            Object arrayList = new ArrayList();
            for (av avVar : list) {
                if (avVar instanceof bw) {
                    arrayList.add(((bw) ObjectUtils.a(avVar)).a);
                }
            }
            if (!arrayList.isEmpty()) {
                di S = S();
                long j = N().c;
                S.a(arrayList, j, 10, -1, false, false, true, null, true, null, true);
                Collection arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Cursor query = this.p.getContentResolver().query(ck.a(((cm) it.next()).b, j), cdg.b, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                arrayList2.add(ccc.a.a(query));
                            }
                            query.close();
                        } catch (Throwable th) {
                            query.close();
                        }
                    }
                }
                this.a.clear();
                this.a.addAll(arrayList2);
            }
        }
    }
}
