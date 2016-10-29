package com.twitter.android.people.adapters;

import com.twitter.model.people.aa;
import com.twitter.model.people.am;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import ctc;

/* compiled from: Twttr */
class r implements ctc<aa, String> {
    final /* synthetic */ q a;

    r(q qVar) {
        this.a = qVar;
    }

    public String a(aa aaVar) {
        e.a(aaVar);
        am amVar = (am) CollectionUtils.b(aaVar.d);
        if (amVar != null) {
            return amVar.a.bg_();
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }
}
