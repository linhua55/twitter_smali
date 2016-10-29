package com.twitter.android.dm;

import bgv;
import com.twitter.model.dms.Participant;
import com.twitter.util.object.e;
import cuj;

/* compiled from: Twttr */
class ae implements cuj<Participant> {
    final /* synthetic */ bgv a;
    final /* synthetic */ ac b;

    ae(ac acVar, bgv bgv) {
        this.b = acVar;
        this.a = bgv;
    }

    public boolean a(Participant participant) {
        return ((Participant) e.a(participant)).c <= this.a.i;
    }
}
