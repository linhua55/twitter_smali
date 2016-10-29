package com.twitter.android;

import ccu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.util.object.g;

/* compiled from: Twttr */
class pf implements g<bu> {
    final /* synthetic */ SearchResultsFragment a;

    pf(SearchResultsFragment searchResultsFragment) {
        this.a = searchResultsFragment;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public bu a() {
        return new bu(this.a.getActivity(), ck.a(db.a, SearchResultsFragment.a(this.a)), ccu.a, "search_id=?", new String[]{String.valueOf(this.a.s)}, "type_id ASC, _id ASC");
    }
}
