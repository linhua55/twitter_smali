package com.twitter.android.av;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.twitter.android.client.at;
import com.twitter.android.vt;
import com.twitter.android.widget.bz;
import com.twitter.android.widget.ca;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.p;
import com.twitter.config.d;
import com.twitter.library.av.playback.ai;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class s extends OnScrollListener implements ad, p {
    private final boolean a;
    private final boolean b;
    private final ca c;
    private bz d;
    private final List<a> e;
    private final List<c> f;
    private final List<a> g;
    private final List<a> h;
    private final Set<a> i;
    private int j;
    private boolean k;
    private ab l;
    private final ai m;
    private final t n;
    private ViewGroup o;

    public s(Context context) {
        this(context, false);
    }

    public s(Context context, boolean z) {
        this(ai.a(), new t(context), new ca(), ab.a(1), d.a("media_autoplay_android_prebuffer_neighbors"), z);
    }

    @VisibleForTesting
    s(ai aiVar, t tVar, ca caVar, ab abVar, boolean z, boolean z2) {
        this.e = MutableList.a();
        this.f = MutableList.a(12);
        this.g = MutableList.a(12);
        this.h = MutableList.a(12);
        this.i = MutableSet.a(12);
        this.j = 5;
        this.m = aiVar;
        this.n = tVar;
        this.a = z;
        this.c = caVar;
        this.l = abVar;
        this.b = z2;
    }

    public void a(int i) {
        this.l = ab.a(i);
    }

    public void a(k kVar) {
        a(kVar.a);
        kVar.a(this);
    }

    public void a(at atVar) {
        a(atVar.b);
        atVar.a(this);
    }

    @VisibleForTesting
    void a(ViewGroup viewGroup) {
        this.o = viewGroup;
        b();
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        return c(absListView);
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        c(recyclerView);
    }

    private boolean c(ViewGroup viewGroup) {
        if (!this.k) {
            d(viewGroup);
            this.d.a();
            if (this.d.c()) {
                a(false);
            }
        }
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        return a((ViewGroup) absListView, i == 0);
    }

    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        a((ViewGroup) recyclerView, i == 0);
    }

    private boolean a(ViewGroup viewGroup, boolean z) {
        if (!this.k) {
            d(viewGroup);
            boolean z2 = this.a && z;
            if (z) {
                this.d.b();
            } else {
                this.d.a();
            }
            if (z || this.d.c()) {
                a(z2);
            }
        }
        return false;
    }

    private void d(ViewGroup viewGroup) {
        if (this.d == null || viewGroup != this.d.d()) {
            this.d = this.c.a(viewGroup);
        }
    }

    private void f() {
        for (int i = 0; i < this.e.size(); i++) {
            ((a) this.e.get(i)).aS_();
        }
    }

    public void a() {
        b();
    }

    public void b() {
        a(false);
    }

    @VisibleForTesting
    void a(boolean z) {
        int i = 0;
        ViewGroup viewGroup = this.o;
        if (viewGroup == null) {
            return;
        }
        if (this.n.a() || this.b) {
            int size;
            a aVar;
            b(viewGroup);
            this.h.addAll(this.l.a(viewGroup, this.g));
            if (z) {
                for (size = this.g.size() - 1; size >= 0; size--) {
                    aVar = (a) this.g.get(size);
                    if (!this.h.contains(aVar)) {
                        aVar.h();
                    }
                }
            }
            for (size = 0; size < this.e.size(); size++) {
                aVar = (a) this.e.get(size);
                if (!this.h.contains(aVar)) {
                    aVar.aS_();
                    this.i.add(aVar);
                }
            }
            this.e.removeAll(this.i);
            while (i < this.h.size()) {
                aVar = (a) this.h.get(i);
                if (!this.e.contains(aVar) && aVar.c()) {
                    this.e.add(aVar);
                    aVar.aR_();
                }
                i++;
            }
            this.g.clear();
            this.h.clear();
            this.i.clear();
            return;
        }
        f();
        this.e.clear();
    }

    void b(ViewGroup viewGroup) {
        this.g.clear();
        a(viewGroup, this.j);
        for (int size = this.f.size() - 1; size >= 0; size--) {
            a autoPlayableItem = ((c) this.f.get(size)).getAutoPlayableItem();
            if (autoPlayableItem.i() != null) {
                this.g.add(autoPlayableItem);
            }
        }
        this.f.clear();
    }

    private List<c> a(ViewGroup viewGroup, int i) {
        if (i > 0 && viewGroup.getChildCount() > 0) {
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                Object tag = childAt.getTag();
                if ((tag instanceof vt) && ((vt) tag).d != null) {
                    this.f.add(((vt) tag).d);
                } else if (childAt instanceof c) {
                    this.f.add((c) childAt);
                } else if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, i - 1);
                }
            }
        }
        return this.f;
    }

    public void c() {
        this.k = true;
        f();
        this.e.clear();
    }

    public void d() {
        this.n.c();
        this.k = false;
        ViewGroup viewGroup = this.o;
        if (viewGroup != null) {
            b(viewGroup);
            for (a aS_ : this.g) {
                aS_.aS_();
            }
            this.e.clear();
            a(this.a);
        }
    }

    public void e() {
        f();
        this.n.b();
    }
}
