package com.twitter.android;

import android.widget.AbsListView;
import biw;
import com.twitter.library.widget.PageableListView;
import com.twitter.library.widget.x;

/* compiled from: Twttr */
class cg implements x {
    final /* synthetic */ PageableListView a;
    final /* synthetic */ DMConversationFragment b;

    cg(DMConversationFragment dMConversationFragment, PageableListView pageableListView) {
        this.b = dMConversationFragment;
        this.a = pageableListView;
    }

    public void a(AbsListView absListView) {
    }

    public void b(AbsListView absListView) {
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        DMConversationFragment.a(this.b, i != 0);
        if (!DMConversationFragment.d(this.b) && DMConversationFragment.e(this.b)) {
            DMConversationFragment.b(this.b, true);
        }
        if (DMConversationFragment.f(this.b) != null) {
            DMConversationFragment.g(this.b).a(DMConversationFragment.b(this.b, 0) ? 4 : 3);
            DMConversationFragment.h(this.b).a(absListView, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (!DMConversationFragment.i(this.b) && ((!DMConversationFragment.j(this.b) || i2 == i3 || DMConversationFragment.e(this.b)) && i < 10 && !biw.a(DMConversationFragment.k(this.b)) && !DMConversationFragment.l(this.b))) {
            DMConversationFragment.m(this.b);
        }
        if (DMConversationFragment.n(this.b) && i > 0 && (i3 - i) - i2 == 0) {
            DMConversationFragment.c(this.b, true);
        }
        if (DMConversationFragment.o(this.b) && DMConversationFragment.e(this.b) && DMConversationFragment.p(this.b)) {
            DMConversationFragment.q(this.b).b();
        }
        if (DMConversationFragment.r(this.b) != null) {
            DMConversationFragment.s(this.b).a(DMConversationFragment.b(this.b, 0) ? 4 : 3);
            DMConversationFragment.t(this.b).a(this.a, i, i2, i3, false);
        }
    }
}
