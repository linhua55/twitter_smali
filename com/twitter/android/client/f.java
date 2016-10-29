package com.twitter.android.client;

import android.app.SearchManager.OnDismissListener;
import com.twitter.android.provider.SuggestionsProvider;

/* compiled from: Twttr */
class f implements OnDismissListener {
    final /* synthetic */ c a;

    f(c cVar) {
        this.a = cVar;
    }

    public void onDismiss() {
        SuggestionsProvider.a();
    }
}
