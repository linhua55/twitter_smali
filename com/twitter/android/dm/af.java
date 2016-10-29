package com.twitter.android.dm;

import bgv;
import com.twitter.model.dms.Participant;
import com.twitter.util.object.e;
import cuj;

/* compiled from: Twttr */
class af implements cuj<Participant> {
    final /* synthetic */ bgv a;
    final /* synthetic */ ac b;

    af(ac acVar, bgv bgv) {
        this.b = acVar;
        this.a = bgv;
    }

    public boolean a(Participant participant) {
        return this.a.bf_() > ((Participant) e.a(participant)).d;
    }
}
