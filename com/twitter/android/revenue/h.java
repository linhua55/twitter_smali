package com.twitter.android.revenue;

import android.support.annotation.VisibleForTesting;
import com.twitter.util.collection.MutableSet;
import cuj;
import java.util.Set;

@VisibleForTesting
/* compiled from: Twttr */
class h implements cuj<a> {
    private final a a;

    h(a aVar) {
        this.a = aVar;
    }

    public boolean a(a aVar) {
        Set a = MutableSet.a(this.a.e());
        a.retainAll(aVar.e());
        return !a.isEmpty();
    }
}
