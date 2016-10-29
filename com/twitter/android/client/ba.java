package com.twitter.android.client;

import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class ba implements Runnable {
    final /* synthetic */ SearchSuggestionController a;

    ba(SearchSuggestionController searchSuggestionController) {
        this.a = searchSuggestionController;
    }

    public void run() {
        PopupEditText a = SearchSuggestionController.a(this.a);
        a.requestFocus();
        a.a();
        r.b(SearchSuggestionController.b(this.a), a, true);
    }
}
