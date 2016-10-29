package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
public class aq extends l<ap> {
    public static final n<ap> a;

    protected aq() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new aq();
    }

    protected void a(q qVar, ap apVar) throws IOException {
        super.a(qVar, (CreditCard) apVar);
        qVar.a(apVar.a(), s.a(Type.class)).b(apVar.b());
    }

    protected ap a(p pVar, int i) throws IOException, ClassNotFoundException {
        ap apVar = new ap();
        a(pVar, apVar, i);
        return apVar;
    }

    protected void a(p pVar, ap apVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, apVar, i);
        apVar.a((Type) s.a(Type.class).c(pVar), pVar.i());
    }
}
