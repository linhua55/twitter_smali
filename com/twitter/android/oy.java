package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import cni;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.util.collection.MutableSet;
import java.util.Set;

/* compiled from: Twttr */
class oy implements kr<View, Object> {
    final /* synthetic */ SearchPhotosFragment a;
    private final Set<String> b;

    private oy(SearchPhotosFragment searchPhotosFragment) {
        this.a = searchPhotosFragment;
        this.b = MutableSet.a();
    }

    public void a(View view, Object obj, Bundle bundle) {
        jx jxVar = ((jy) view.getTag()).a;
        if (SearchPhotosFragment.b(this.a).add(Long.valueOf(jxVar.c()))) {
            cni cni = jxVar.d().f;
            if (cni != null && this.b.add(cni.c)) {
                SearchPhotosFragment.c(this.a).a(PromotedEvent.a, cni);
            }
            SearchPhotosFragment.e(this.a).add(TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), jxVar.d(), SearchPhotosFragment.d(this.a), null));
        }
    }
}
