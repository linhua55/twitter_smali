package com.twitter.android.moments.ui.fullscreen;

import acc;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
class ak extends acc<x<TwitterUser>> {
    final /* synthetic */ aj a;

    ak(aj ajVar) {
        this.a = ajVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((x) obj);
    }

    public void a(x<TwitterUser> xVar) {
        if (xVar.c()) {
            this.a.f.a((TwitterUser) xVar.b());
        }
    }
}
