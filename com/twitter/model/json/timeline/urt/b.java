package com.twitter.model.json.timeline.urt;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.core.cn;
import ctc;

/* compiled from: Twttr */
class b implements ctc<cn, cm> {
    final /* synthetic */ JsonGlobalObjects a;

    b(JsonGlobalObjects jsonGlobalObjects) {
        this.a = jsonGlobalObjects;
    }

    public cm a(cn cnVar) {
        if (cnVar != null) {
            return (cm) cnVar.b((TwitterUser) this.a.b.get(cnVar.d())).r();
        }
        return null;
    }
}
