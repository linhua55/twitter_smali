package com.twitter.android.moments.ui.guide;

import android.view.View.OnClickListener;
import android.widget.AbsListView.OnScrollListener;
import com.twitter.android.moments.viewmodels.MomentGuideListItem;
import com.twitter.app.common.list.k;

/* compiled from: Twttr */
class x {
    private final k<MomentGuideListItem, ab> a;

    x(k<MomentGuideListItem, ab> kVar) {
        this.a = kVar;
    }

    public void a(ab abVar) {
        this.a.j();
        this.a.a(abVar, abVar);
    }

    public void a(OnScrollListener onScrollListener) {
        this.a.a(new y(this, onScrollListener));
    }

    public void a() {
        this.a.m();
    }

    public void b() {
        this.a.l();
    }

    public void c() {
        this.a.m();
    }

    public boolean d() {
        return this.a.i();
    }

    public void a(OnClickListener onClickListener) {
        if (this.a.b != null) {
            this.a.b.setOnClickListener(onClickListener);
        }
    }

    public void e() {
        this.a.s();
    }

    public void f() {
        this.a.t();
    }
}
