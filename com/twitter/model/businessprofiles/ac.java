package com.twitter.model.businessprofiles;

import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class ac extends k<ab> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, ab abVar) throws IOException {
        qVar.e(abVar.d).e(abVar.e);
    }

    protected ab a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new ab(pVar.e(), pVar.e());
    }
}
