package com.twitter.android;

import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;

/* compiled from: Twttr */
class j implements e<UserView> {
    final /* synthetic */ ActivityDetailFragment a;

    j(ActivityDetailFragment activityDetailFragment) {
        this.a = activityDetailFragment;
    }

    public void a(UserView userView, long j, int i, int i2) {
        ActivityDetailFragment.a(this.a, userView, j);
    }
}
