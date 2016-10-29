package com.twitter.model.drafts;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class c extends k<DraftAttachment> {
    static final c a;

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new c();
    }

    protected c() {
        super(1);
    }

    protected void a(q qVar, DraftAttachment draftAttachment) throws IOException {
        draftAttachment.a(qVar);
    }

    protected DraftAttachment a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new DraftAttachment(pVar, i);
    }
}
