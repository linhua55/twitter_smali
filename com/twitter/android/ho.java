package com.twitter.android;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import atg;
import com.twitter.android.timeline.aw;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.timeline.g;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.t;
import com.twitter.library.widget.InlineDismissView;
import com.twitter.library.widget.r;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.i;
import com.twitter.model.timeline.l;
import com.twitter.util.ab;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.n;
import com.twitter.util.concurrent.FutureMap;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.j;
import com.twitter.util.serialization.s;
import cto;
import cuj;
import defpackage.cds;
import defpackage.cdw;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* compiled from: Twttr */
class ho implements hn {
    private final Map<Long, l> a;
    private final Set<Long> b;
    private final Set<InlineDismissView> c;
    private final int d;
    private final Context e;
    private final bg f;
    private final az g;
    private final cds h;
    private final Executor i;
    private final r j;
    private final FutureMap<Long, Cursor> k;
    private final cuj<View> l;
    private final Map<Long, i> m;

    ho(int i, Context context, bg bgVar, az azVar, cds cds, Executor executor, r rVar, Bundle bundle) {
        this.a = MutableMap.a();
        this.b = MutableSet.a();
        this.c = MutableSet.a();
        this.k = new FutureMap();
        this.l = new hp(this);
        this.m = MutableMap.a();
        this.d = i;
        this.e = context;
        this.f = bgVar;
        this.g = azVar;
        this.h = cds;
        this.i = executor;
        this.j = new ht(this, rVar);
        if (bundle != null) {
            b(bundle);
        }
    }

    public l a(long j, l lVar) {
        return (l) this.a.put(Long.valueOf(j), lVar);
    }

    public l b(long j) {
        return (l) this.a.remove(Long.valueOf(j));
    }

    public l c(long j) {
        return (l) this.a.get(Long.valueOf(j));
    }

    public boolean a(long j) {
        return this.b.add(Long.valueOf(j));
    }

    public boolean d(long j) {
        return this.b.remove(Long.valueOf(j));
    }

    public boolean e(long j) {
        return this.b.contains(Long.valueOf(j));
    }

    public void a(InlineDismissView inlineDismissView, aw awVar) {
        inlineDismissView.setTag(2131951712, awVar);
        inlineDismissView.setDismissListener(this.j);
        a(inlineDismissView);
        long j = awVar.n;
        l c = c(j);
        inlineDismissView.setDismissInfo(c);
        if (c == null) {
            c(inlineDismissView, awVar);
            return;
        }
        i g = g(j);
        if (g != null) {
            inlineDismissView.setCurrentFeedbackAction(g);
        } else if (!e(j)) {
            a(j);
            a(awVar, c);
            a(awVar, c.b, "click");
        }
    }

    public void b(InlineDismissView inlineDismissView, aw awVar) {
        if (b(inlineDismissView)) {
            this.g.a(a(this.e, this.f.c(), awVar.d(), false));
        }
    }

    public void b() {
        this.k.clear();
        this.m.clear();
        this.b.clear();
    }

    public void a() {
        if (!this.c.isEmpty()) {
            for (InlineDismissView inlineDismissView : n.a(cto.a(this.c, this.l))) {
                d(inlineDismissView, (aw) inlineDismissView.getTag(2131951712));
            }
        }
    }

    public void a(Bundle bundle) {
        ab.a(bundle, "fetched_dismiss_infos", this.a, s.a(s.f, l.a));
        ab.a(bundle, "saved_feedback_actions", this.m, s.a(s.f, i.a));
        ab.a(bundle, "dismissed_ids", this.b, s.b(s.f));
    }

    @VisibleForTesting
    boolean a(InlineDismissView inlineDismissView) {
        return this.c.add(inlineDismissView);
    }

    @VisibleForTesting
    boolean b(InlineDismissView inlineDismissView) {
        return this.c.remove(inlineDismissView);
    }

    @VisibleForTesting
    i a(long j, i iVar) {
        return (i) this.m.put(Long.valueOf(j), iVar);
    }

    @VisibleForTesting
    i f(long j) {
        return (i) this.m.remove(Long.valueOf(j));
    }

    @VisibleForTesting
    i g(long j) {
        return (i) this.m.get(Long.valueOf(j));
    }

    @VisibleForTesting
    void c(InlineDismissView inlineDismissView, aw awVar) {
        long j = awVar.n;
        Future a = a(awVar);
        a(j, a);
        a.b(new f().a(this.i).a(new ar(this, inlineDismissView, awVar))).b(new f().a(this.i).a(new hr(this, j, awVar))).a(new f().a(this.i).a(new hq(this, j)));
    }

    @VisibleForTesting
    void d(InlineDismissView inlineDismissView, aw awVar) {
        if (b(inlineDismissView)) {
            long j = awVar.n;
            h(j);
            this.g.a(new g(this.e, this.f.c(), awVar.d()), new hs(this, j, awVar));
        }
    }

    @VisibleForTesting
    AsyncOperation<?, ?> a(Context context, Session session, long j, boolean z) {
        return cdw.a(context, session, j, this.d, z);
    }

    @VisibleForTesting
    j<Cursor> a(aw awVar) {
        return atg.a(this.e.getContentResolver(), a(awVar, this.f.c().g()), com.twitter.library.provider.s.a);
    }

    @VisibleForTesting
    void a(long j, Future<Cursor> future) {
        this.k.a(Long.valueOf(j), future);
    }

    @VisibleForTesting
    void h(long j) {
        this.k.a(Long.valueOf(j));
    }

    @VisibleForTesting
    void b(Bundle bundle) {
        Map map = (Map) ab.a(bundle, "fetched_dismiss_infos", s.a(s.f, l.a));
        Map map2 = (Map) ab.a(bundle, "saved_feedback_actions", s.a(s.f, i.a));
        Set set = (Set) ab.a(bundle, "dismissed_ids", s.b(s.f));
        if (map != null && map2 != null && set != null) {
            this.a.putAll(map);
            this.m.putAll(map2);
            this.b.addAll(set);
        }
    }

    @VisibleForTesting
    void a(aw awVar, l lVar) {
        this.g.a(a(this.e, this.f.c(), lVar.b, awVar.o, false, awVar));
    }

    @VisibleForTesting
    com.twitter.library.api.timeline.j a(Context context, Session session, i iVar, aj ajVar, boolean z, aw awVar) {
        List a = MutableList.a();
        List a2 = MutableList.a();
        List a3 = MutableList.a();
        awVar.a(a, a2, a3);
        return new com.twitter.library.api.timeline.j(context, new com.twitter.library.service.ab(session), iVar, ajVar, z, a, a2, a3);
    }

    private Uri a(aw awVar, long j) {
        return ck.a(ContentUris.withAppendedId(t.a, awVar.n), j);
    }

    private void a(aw awVar, i iVar, String str) {
        this.h.a(awVar.o, iVar, str);
    }
}
