package defpackage;

import com.twitter.model.dms.Participant;
import com.twitter.util.object.e;
import ctc;

/* compiled from: Twttr */
/* renamed from: bja */
final class bja implements ctc<Participant, Long> {
    bja() {
    }

    public Long a(Participant participant) {
        return Long.valueOf(((Participant) e.a(participant)).b);
    }
}
