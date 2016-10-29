package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import cni;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.media.ui.image.h;
import com.twitter.util.collection.MutableSet;
import java.util.Set;

/* compiled from: Twttr */
public class jw implements kr<View, Object> {
    final /* synthetic */ MediaListFragment a;
    private final Set<String> b;

    protected jw(MediaListFragment mediaListFragment) {
        this.a = mediaListFragment;
        this.b = MutableSet.a();
    }

    public void a(View view, Object obj, Bundle bundle) {
        jx jxVar = ((jy) view.getTag()).a;
        if (MediaListFragment.a(this.a).add(Long.valueOf(jxVar.c()))) {
            cni cni = jxVar.d().f;
            if (cni != null && this.b.add(cni.c)) {
                MediaListFragment.b(this.a).a(PromotedEvent.a, cni);
            }
            MediaListFragment.d(this.a).add(TwitterScribeItem.a(this.a.getActivity().getApplicationContext(), jxVar.d(), MediaListFragment.c(this.a), null));
        }
        if (view instanceof h) {
            MediaListFragment.e(this.a).a((h) view, true);
        }
    }
}
