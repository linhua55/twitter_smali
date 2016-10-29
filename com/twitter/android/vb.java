package com.twitter.android;

import android.widget.AbsListView;
import com.twitter.library.widget.PageableListView;
import com.twitter.library.widget.x;

/* compiled from: Twttr */
class vb implements x {
    final /* synthetic */ PageableListView a;
    final /* synthetic */ TweetFragment2 b;

    vb(TweetFragment2 tweetFragment2, PageableListView pageableListView) {
        this.b = tweetFragment2;
        this.a = pageableListView;
    }

    public void a(AbsListView absListView) {
        if (TweetFragment2.d(this.b) != null) {
            this.a.a(false);
        }
    }

    public void b(AbsListView absListView) {
        if (TweetFragment2.d(this.b) != null) {
            this.a.b(false);
        }
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (TweetFragment2.e(this.b) != null) {
            TweetFragment2.f(this.b).a(absListView, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (TweetFragment2.g(this.b) != null && TweetFragment2.g(this.b).a().getVisibility() == 0) {
            TweetFragment2.g(this.b).a(TweetFragment2.h(this.b));
        }
        if (TweetFragment2.i(this.b) != null) {
            TweetFragment2.j(this.b).a(this.a, i, i2, i3, false);
        }
    }
}
