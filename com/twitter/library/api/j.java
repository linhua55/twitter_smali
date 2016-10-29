package com.twitter.library.api;

import android.content.Context;
import android.net.Uri;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.search.TwitterSearchQuery;
import com.twitter.library.client.Session;
import com.twitter.library.provider.cp;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class j extends l {
    private final long a;

    protected /* synthetic */ c f() {
        return e();
    }

    public j(Context context, Session session, long j) {
        super(context, session, j.class.getName());
        this.a = j;
    }

    protected e b() {
        e b = super.b();
        b.a("show_members", true).a("max_members", 6);
        return b;
    }

    protected as e() {
        return as.a(5);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            a(asVar);
        }
    }

    private void a(as asVar) {
        List<TwitterSearchQuery> list = (List) asVar.b();
        di S = S();
        com.twitter.library.provider.e T = T();
        S.a(list, 7, T);
        Collection arrayList = new ArrayList();
        for (TwitterSearchQuery twitterSearchQuery : list) {
            if (twitterSearchQuery.i != null) {
                arrayList.addAll(twitterSearchQuery.i);
            }
        }
        long j = this.a > 0 ? this.a : 0;
        S.a(arrayList, j, -1, -1, null, null, true, T);
        for (int i = 0; i < list.size(); i++) {
            TwitterSearchQuery twitterSearchQuery2 = (TwitterSearchQuery) list.get(i);
            if (twitterSearchQuery2.i != null) {
                S.a(twitterSearchQuery2.i, j, 6, i, (long) twitterSearchQuery2.b.hashCode(), null, T);
            }
        }
        T.a(new Uri[]{cp.a});
        T.a();
    }
}
