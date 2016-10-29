package com.twitter.android.client;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class bf extends z {
    private final WeakReference<SearchSuggestionController> a;

    bf(SearchSuggestionController searchSuggestionController) {
        this.a = new WeakReference(searchSuggestionController);
    }

    public void a(x xVar) {
        if (((aa) xVar.l().b()).b()) {
            SearchSuggestionController searchSuggestionController = (SearchSuggestionController) this.a.get();
            if (searchSuggestionController != null) {
                searchSuggestionController.a();
            }
        }
    }
}
