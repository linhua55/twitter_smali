package com.twitter.android.util;

import com.twitter.config.d;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.model.timeline.s;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Twttr */
public class ax implements ay {
    final /* synthetic */ av a;

    public ax(av avVar) {
        this.a = avVar;
    }

    public void a(s sVar) {
        if (!sVar.h() || d.a("app_graph_enabled")) {
            e eVar = new e(this.a.a.getContentResolver());
            Collection singletonList = Collections.singletonList(sVar);
            di a = di.a(this.a.a, this.a.f);
            if (!"profile_other".equals(sVar.d)) {
                a.a(singletonList, this.a.f, eVar);
            } else if (this.a.l != 0) {
                a.a(singletonList, this.a.l, eVar);
            }
            eVar.a();
        }
    }
}
