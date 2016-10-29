package com.twitter.android.moments.ui.fullscreen;

import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import com.twitter.util.collection.r;
import cyy;
import java.util.Map;

/* compiled from: Twttr */
final class fi implements cyy<Map<Long, a>> {
    fi() {
    }

    public /* synthetic */ Object b(Object[] objArr) {
        return a(objArr);
    }

    public Map<Long, a> a(Object... objArr) {
        r d = r.d();
        for (Object obj : objArr) {
            ao aoVar = (ao) obj;
            if (aoVar.c()) {
                a aVar = ((d) aoVar.a()).a;
                d.b(Long.valueOf(aVar.a().b), aVar);
            }
        }
        return (Map) d.q();
    }
}
