package com.twitter.android.client;

import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.api.search.r;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class be extends z {
    private final WeakReference<SearchSuggestionController> a;

    be(SearchSuggestionController searchSuggestionController) {
        this.a = new WeakReference(searchSuggestionController);
    }

    public void a(x xVar) {
        r rVar = (r) xVar;
        if (((aa) xVar.l().b()).b() && rVar.e() == 0) {
            TwitterTypeAheadGroup h = rVar.h();
            SuggestionsProvider.a(rVar.g(), h);
            if (!h.a()) {
                SearchSuggestionController searchSuggestionController = (SearchSuggestionController) this.a.get();
                if (searchSuggestionController != null) {
                    searchSuggestionController.a();
                }
            }
        }
    }
}
