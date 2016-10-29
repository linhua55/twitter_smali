package com.twitter.android.moments.ui.guide;

import adn;
import aho;
import ahz;
import android.content.Context;
import android.view.LayoutInflater;
import android.widget.ListView;
import ape;
import com.twitter.android.av.t;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.m;
import com.twitter.android.moments.data.q;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.viewmodels.MomentGuideSection;
import com.twitter.android.moments.viewmodels.b;
import com.twitter.android.moments.viewmodels.k;
import com.twitter.app.common.inject.o;
import com.twitter.util.collection.n;
import com.twitter.util.z;
import defpackage.chd;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class j {
    private final LayoutInflater a;
    private final ListView b;
    private final x c;
    private final adn d;
    private final e e;
    private final p f;
    private final s g;
    private final s h;
    private final ag i;
    private final d j;
    private final ab k;
    private final ahz l;
    private final Context m;
    private final b n;
    private final m o;
    private final Set<Long> p;
    private final z<k> q;
    private final q r;
    private final bn s;
    private final ape<z> t;

    public j(Context context, LayoutInflater layoutInflater, m mVar, x xVar, ListView listView, adn adn, e eVar, p pVar, s sVar, s sVar2, ag agVar, bn bnVar, boolean z, d dVar, ahz ahz, t tVar, q qVar, b bVar, aho aho, ape ape, o oVar) {
        this.q = new k(this);
        this.r = qVar;
        this.m = context;
        this.n = bVar;
        this.a = layoutInflater;
        this.b = listView;
        this.c = xVar;
        this.d = adn;
        this.e = eVar;
        this.f = pVar;
        this.g = sVar;
        this.h = sVar2;
        this.i = agVar;
        this.s = bnVar;
        this.j = dVar;
        this.o = mVar;
        this.t = ape;
        this.p = new HashSet();
        this.l = ahz;
        if (z && this.b.getFooterViewsCount() == 0) {
            this.b.addFooterView(this.l.a());
        }
        this.b.setOnItemClickListener(new l(this, adn));
        this.f.a(false);
        xVar.a(new m(this));
        xVar.a(new n(this));
        this.k = new ab(this.m, this.f, this.a, this.d, tVar, this.g, this.h, this.i, this.s, this.j, this.p, this.e, aho, oVar);
        this.c.a(this.k);
        mVar.a(this.q);
    }

    public void a() {
        this.e.a();
    }

    public void b() {
    }

    public void c() {
        this.f.a(false);
    }

    public void d() {
        this.f.a(true);
        this.f.b();
        this.d.a();
        g();
    }

    public void a(boolean z) {
        this.b.removeFooterView(this.l.a());
        this.o.a(this.q, !z);
    }

    private void g() {
        int childCount = this.b.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Object tag = this.b.getChildAt(i).getTag();
            if (tag instanceof w) {
                ((w) tag).c();
            }
        }
    }

    private void a(List<MomentGuideSection> list) {
        n d = n.d();
        for (int i = 0; i < list.size(); i++) {
            d.c(this.n.a((MomentGuideSection) list.get(i), i, list.size()));
        }
        this.k.a(new chd((Iterable) d.q()));
    }

    public void e() {
        if (!this.o.f()) {
            if (this.c.d()) {
                this.c.b();
            }
            this.o.c();
        }
    }

    public void f() {
        if (!this.o.f()) {
            this.c.e();
            this.o.d();
        }
    }
}
