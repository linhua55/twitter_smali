package com.twitter.model.dms;

/* compiled from: Twttr */
public class bf extends ba<ReadReceiptParticipant, bf> {
    private String a;

    public /* bridge */ /* synthetic */ boolean bo_() {
        return super.bo_();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public bf(Participant participant) {
        ((bf) ((bf) a(participant.b)).b(participant.c)).c(participant.d);
    }

    public bf a(String str) {
        this.a = str;
        return this;
    }

    protected ReadReceiptParticipant d() {
        return new ReadReceiptParticipant(this);
    }
}
