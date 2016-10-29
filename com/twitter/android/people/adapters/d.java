package com.twitter.android.people.adapters;

import android.content.Context;
import com.twitter.library.api.timeline.i;

/* compiled from: Twttr */
class d extends i {
    final /* synthetic */ FavoriteQuotedView a;

    d(FavoriteQuotedView favoriteQuotedView, Context context) {
        this.a = favoriteQuotedView;
        super(context);
    }

    protected void a(long j, boolean z, int i) {
        this.a.b(z);
    }
}
