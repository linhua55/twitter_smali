package com.twitter.android;

import com.twitter.library.api.search.d;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class pj extends z {
    final /* synthetic */ SearchResultsFragment a;

    pj(SearchResultsFragment searchResultsFragment) {
        this.a = searchResultsFragment;
    }

    public void a(x xVar) {
        super.a(xVar);
        if (xVar instanceof d) {
            SearchResultsFragment.a(this.a, SearchResultsFragment.a(this.a, (d) xVar));
        }
    }
}
