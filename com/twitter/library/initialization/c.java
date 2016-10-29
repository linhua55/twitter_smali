package com.twitter.library.initialization;

import android.content.Context;
import bvh;
import bvj;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class c extends ad {
    final /* synthetic */ Context a;
    final /* synthetic */ FeatureSwitchesInitializer b;

    c(FeatureSwitchesInitializer featureSwitchesInitializer, Context context) {
        this.b = featureSwitchesInitializer;
        this.a = context;
    }

    public void b(Session session, boolean z) {
        super.b(session, z);
        if (z) {
            bvj.a(session.g());
        }
    }

    public void a(Session session, boolean z) {
        super.a(session, z);
        a(this.a, session.g(), z);
    }

    public void c(Session session, boolean z) {
        super.c(session, z);
        a(this.a, session.g(), z);
    }

    public void a(Session session) {
        super.a(session);
        bvj.a(session.g());
    }

    private void a(Context context, long j, boolean z) {
        bvj.a(context, j);
        if (z) {
            bvj.b();
            bvh.a();
        }
    }
}
