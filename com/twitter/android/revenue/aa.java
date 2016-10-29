package com.twitter.android.revenue;

import com.twitter.model.timeline.av;
import cuj;

/* compiled from: Twttr */
class aa implements cuj<av> {
    final /* synthetic */ z a;
    private boolean b;

    aa(z zVar) {
        this.a = zVar;
    }

    public boolean a(av avVar) {
        boolean z = false;
        if (this.b) {
            return false;
        }
        if (avVar.c == 6) {
            z = true;
        }
        this.b = z;
        return this.b;
    }
}
