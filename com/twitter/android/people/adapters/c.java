package com.twitter.android.people.adapters;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class c implements OnClickListener {
    final /* synthetic */ FavoriteQuotedView a;

    c(FavoriteQuotedView favoriteQuotedView) {
        this.a = favoriteQuotedView;
    }

    public void onClick(View view) {
        this.a.a();
    }
}
