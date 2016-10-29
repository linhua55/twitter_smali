package com.twitter.app.common.list;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewStub;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.twitter.android.util.ad;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.k$com.twitter.app.common.list.o;
import com.twitter.config.d;
import com.twitter.library.util.ao;
import com.twitter.refresh.widget.RefreshableListView;
import com.twitter.refresh.widget.a;
import com.twitter.refresh.widget.h;
import com.twitter.refresh.widget.i;
import com.twitter.util.object.ObjectUtils;
import defpackage.bdl;
import defpackage.cgu;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
public class k<T, A extends bdl<T>> extends v {
    static final /* synthetic */ boolean e;
    public final ListView a;
    public final View b;
    public final View c;
    public final boolean d;
    private final Set<p> f;
    private final Set<r> g;
    private final Set<OnTouchListener> h;
    private final Set<q> i;
    private final Context j;
    private final View k;
    private final o l;
    private A m;
    private h n;
    private s o;
    private ad p;

    static {
        e = !k.class.desiredAssertionStatus();
    }

    public static <T, A extends bdl<T>> k<T, A> b(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        return new k(layoutInflater, tVar, bundle);
    }

    protected k(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        this.f = new LinkedHashSet();
        this.g = new LinkedHashSet();
        this.h = new LinkedHashSet();
        this.i = new LinkedHashSet();
        Context context = layoutInflater.getContext();
        this.j = context.getApplicationContext();
        View inflate = layoutInflater.inflate(tVar.e(), null, false);
        a(inflate);
        ViewStub viewStub = (ViewStub) inflate.findViewById(2131952647);
        int g = tVar.g() == -1 ? 16908298 : tVar.g();
        if (viewStub != null) {
            viewStub.setLayoutResource(tVar.f());
            viewStub.setInflatedId(g);
            viewStub.inflate();
        }
        ListView listView = (ListView) inflate.findViewById(g);
        this.a = listView;
        ViewStub viewStub2 = (ViewStub) inflate.findViewById(2131952620);
        if (viewStub2 != null) {
            viewStub2.setLayoutResource(tVar.h());
            viewStub2.setInflatedId(16908292);
            viewStub2.inflate();
        }
        View findViewById = inflate.findViewById(16908292);
        if (findViewById != null) {
            listView.setEmptyView(findViewById);
            View findViewById2 = findViewById.findViewById(2131951676);
            if (findViewById2 != null) {
                TextView textView;
                if (tVar.b() != 0) {
                    textView = (TextView) findViewById2.findViewById(2131951653);
                    if (textView != null) {
                        textView.setText(tVar.b());
                    }
                }
                if (tVar.c() > 0) {
                    textView = (TextView) findViewById2.findViewById(2131951652);
                    if (textView != null) {
                        textView.setText(tVar.c());
                    }
                }
            }
            this.k = findViewById2;
        } else {
            this.k = null;
        }
        this.b = findViewById;
        this.c = inflate.findViewById(2131951677);
        if (!tVar.i()) {
            listView.setPadding(0, listView.getPaddingTop(), 0, listView.getPaddingBottom());
            listView.setBackgroundColor(context.getResources().getColor(2131886083));
        }
        listView.setScrollbarFadingEnabled(true);
        listView.setOnScrollListener(new w(this, null));
        listView.setChoiceMode(tVar.j());
        listView.setOnTouchListener(new l(this));
        listView.post(new m(this, listView));
        if (listView instanceof RefreshableListView) {
            RefreshableListView refreshableListView = (RefreshableListView) listView;
            this.d = tVar.m();
            if (this.d) {
                refreshableListView.setRefreshListener(new u(this, null));
                refreshableListView.setVisibilityListener(new v(this, null));
                refreshableListView.setOverScrollMode(2);
            } else {
                listView.setFooterDividersEnabled(true);
            }
            a(tVar.k());
        } else {
            this.d = false;
        }
        if (d.a("home_timeline_scroll_framerate_enabled")) {
            this.l = new o(this, tVar.a());
            a(this.l);
        } else {
            this.l = null;
        }
        if (tVar.l() != 0) {
            listView.setClipToPadding(false);
            listView.setPadding(listView.getPaddingLeft(), listView.getPaddingTop(), listView.getPaddingRight(), listView.getPaddingBottom() + tVar.l());
        }
        l();
    }

    public void ao_() {
        if (this.l != null) {
            this.l.a();
        }
        super.ao_();
    }

    public void ap_() {
        if (this.p != null) {
            this.p.a();
        }
        super.ap_();
    }

    protected final boolean f() {
        return this.m != null;
    }

    public final A g() {
        if (!f()) {
            throw new IllegalStateException("The list adapter has not been set.");
        } else if (e || this.m != null) {
            return this.m;
        } else {
            throw new AssertionError();
        }
    }

    public int h() {
        return f() ? g().getCount() : 0;
    }

    public final void a(A a) {
        a((bdl) a, (ListAdapter) a);
    }

    public final void a(A a, ListAdapter listAdapter) {
        if (f()) {
            throw new IllegalStateException("The adapter has already been set.");
        }
        this.a.setAdapter(listAdapter);
        this.m = a;
    }

    public <T> void a(cgu<T> cgu_T) {
        ((bdl) ObjectUtils.a(g())).a((cgu) cgu_T);
        if (cgu_T == null) {
            l();
        } else {
            m();
        }
    }

    public boolean i() {
        return this.a.getCount() == this.a.getHeaderViewsCount() + this.a.getFooterViewsCount();
    }

    public void j() {
        this.m = null;
        this.a.setAdapter(null);
    }

    public final int k() {
        return (int) this.a.getTranslationY();
    }

    public final void a(int i) {
        this.a.setTranslationY((float) i);
        View view = this.b;
        if (view != null) {
            view.setTranslationY((float) i);
        }
    }

    public final void l() {
        if (this.c != null) {
            this.a.setVisibility(8);
            if (this.b != null) {
                this.b.setVisibility(0);
                if (this.k != null) {
                    this.k.setVisibility(8);
                }
            }
            this.c.setVisibility(0);
        }
    }

    public final void m() {
        if (this.c != null) {
            this.c.setVisibility(8);
            boolean i = i();
            if (!i) {
                this.a.setVisibility(0);
            }
            if (this.b == null) {
                return;
            }
            if (!i) {
                this.b.setVisibility(8);
            } else if (this.k != null) {
                this.k.setVisibility(0);
            }
        }
    }

    public final int b(int i) {
        if (r() || !ao.b) {
            return 0;
        }
        if (this.p == null) {
            this.p = ad.a(this.j);
        }
        return this.p.a(i);
    }

    final void n() {
        if (this.d) {
            RefreshableListView refreshableListView = (RefreshableListView) ObjectUtils.a(this.a);
            if (!refreshableListView.b()) {
                refreshableListView.a();
                b(1);
            }
        }
    }

    public final boolean a(boolean z) {
        if (this.d) {
            RefreshableListView refreshableListView = (RefreshableListView) ObjectUtils.a(this.a);
            if (refreshableListView.b()) {
                b(2);
                return refreshableListView.a(z);
            }
        }
        return false;
    }

    public final void s() {
        if (this.d) {
            ((RefreshableListView) this.a).d();
        }
    }

    public final void t() {
        if (this.d) {
            ((RefreshableListView) this.a).e();
        }
    }

    public final void a(q qVar) {
        this.i.add(qVar);
    }

    public void a(h hVar) {
        this.n = hVar;
    }

    public final void u() {
        if (!((i) this.a).g()) {
            v();
        }
    }

    public final void a(p pVar) {
        this.f.add(pVar);
    }

    public final void a(r rVar) {
        this.g.add(rVar);
    }

    public final void v() {
        for (r a : this.g) {
            a.a(this);
        }
    }

    public void a(s sVar) {
        this.o = sVar;
    }

    public void a(int i, int i2) {
        this.a.setSelectionFromTop(i, i2);
        if (this.o != null) {
            this.o.a(i, i2);
        }
    }

    public a d() {
        View childAt;
        int firstVisiblePosition = this.a.getFirstVisiblePosition();
        int headerViewsCount = this.a.getHeaderViewsCount();
        if (firstVisiblePosition < headerViewsCount) {
            childAt = this.a.getChildAt(headerViewsCount - firstVisiblePosition);
        } else {
            int i = firstVisiblePosition;
            childAt = this.a.getChildAt(0);
            headerViewsCount = i;
        }
        long itemIdAtPosition = this.a.getItemIdAtPosition(headerViewsCount);
        if (childAt != null) {
            firstVisiblePosition = childAt.getTop();
        } else {
            firstVisiblePosition = 0;
        }
        return new a(headerViewsCount, itemIdAtPosition, firstVisiblePosition);
    }

    public final void a(OnTouchListener onTouchListener) {
        this.h.add(onTouchListener);
    }
}
