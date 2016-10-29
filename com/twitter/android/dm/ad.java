package com.twitter.android.dm;

import com.twitter.model.dms.Participant;
import com.twitter.model.dms.ReadReceiptParticipant;
import com.twitter.model.dms.bf;
import ctc;

/* compiled from: Twttr */
class ad implements ctc<Participant, ReadReceiptParticipant> {
    final /* synthetic */ ac a;

    ad(ac acVar) {
        this.a = acVar;
    }

    public ReadReceiptParticipant a(Participant participant) {
        return (ReadReceiptParticipant) new bf(participant).a((String) this.a.c.get(Long.valueOf(participant.b))).q();
    }
}
