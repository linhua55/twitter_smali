package com.twitter.android.moments.data;

import com.twitter.library.util.FriendshipCache;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.util.z;

/* compiled from: Twttr */
public class MomentsFriendshipCache extends FriendshipCache implements z<f> {
    public MomentsFriendshipCache(a aVar) {
        for (MomentPage momentPage : aVar.d()) {
            if (momentPage instanceof o) {
                o oVar = (o) momentPage;
                if (oVar.a()) {
                    a(oVar.n());
                } else {
                    oVar.a(this);
                }
            }
        }
    }

    public void a(f fVar) {
        if (!fVar.b()) {
            a(((o) fVar).n());
        }
        fVar.b(this);
    }
}
