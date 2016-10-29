package com.twitter.android.moments.data;

import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.f;
import java.util.List;

/* compiled from: Twttr */
class ak implements am {
    final /* synthetic */ List a;
    final /* synthetic */ ai b;

    ak(ai aiVar, List list) {
        this.b = aiVar;
        this.a = list;
    }

    public void a() {
        for (MomentPage momentPage : this.a) {
            if (momentPage instanceof f) {
                f fVar = (f) momentPage;
                if (!fVar.a()) {
                    fVar.a(true);
                }
            }
        }
    }
}
