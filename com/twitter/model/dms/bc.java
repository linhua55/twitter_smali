package com.twitter.model.dms;

import com.twitter.util.serialization.OptionalFieldException;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class bc extends k<Participant> {
    private bc() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Participant participant) throws IOException {
        qVar.b(participant.b).b(participant.c).b(participant.d);
    }

    protected Participant a(p pVar, int i) throws IOException, ClassNotFoundException {
        long f;
        long f2 = pVar.f();
        long j = 0;
        try {
            f = pVar.f();
        } catch (OptionalFieldException e) {
            f = j;
        }
        return (Participant) ((bb) ((bb) ((bb) new bb().a(f2)).b(pVar.f())).c(f)).q();
    }
}
