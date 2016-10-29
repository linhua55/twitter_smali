package com.twitter.android;

import android.widget.AbsListView;
import com.twitter.library.api.timeline.o;
import com.twitter.library.widget.PageableListView;
import com.twitter.library.widget.x;
import com.twitter.model.core.Tweet;
import com.twitter.util.al;

/* compiled from: Twttr */
class uh implements x {
    final /* synthetic */ PageableListView a;
    final /* synthetic */ TweetFragment b;

    uh(TweetFragment tweetFragment, PageableListView pageableListView) {
        this.b = tweetFragment;
        this.a = pageableListView;
    }

    public void a(AbsListView absListView) {
        if (TweetFragment.d(this.b) != null) {
            Tweet a = TweetFragment.e(this.b).a(0);
            long j = a.t;
            bq f = TweetFragment.f(this.b);
            long b = al.b();
            if (!a.equals(TweetFragment.d(this.b)) && a.o() && b >= f.c + 300000 && TweetFragment.a(this.b, 1)) {
                f.c = b;
                TweetFragment.b(this.b, new o(this.b.getActivity(), TweetFragment.c(this.b), TweetFragment.d(this.b).t).b(j), 1, 1);
                this.a.a(true);
            }
        }
    }

    public void b(AbsListView absListView) {
        if (TweetFragment.d(this.b) != null) {
            Tweet b = TweetFragment.e(this.b).b();
            if (!b.equals(TweetFragment.d(this.b))) {
                bq f = TweetFragment.f(this.b);
                long b2 = al.b();
                if (b2 >= f.b + 300000 && TweetFragment.b(this.b, 2)) {
                    f.b = b2;
                    o oVar = new o(this.b.getActivity(), TweetFragment.c(this.b), TweetFragment.d(this.b).t);
                    oVar.c(b.t);
                    TweetFragment.a(this.b, oVar);
                    TweetFragment.c(this.b, oVar, 1, 2);
                    this.a.b(true);
                }
            } else if (!TweetFragment.g(this.b)) {
                this.a.b(false);
            }
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (TweetFragment.h(this.b) != null) {
            TweetFragment.i(this.b).a(absListView, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (TweetFragment.j(this.b) != null && TweetFragment.j(this.b).a().getVisibility() == 0) {
            TweetFragment.j(this.b).a(TweetFragment.k(this.b));
        }
        if (TweetFragment.l(this.b) != null) {
            TweetFragment.m(this.b).a(this.a, i, i2, i3, false);
        }
    }
}
