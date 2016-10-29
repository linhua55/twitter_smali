package com.twitter.util.serialization;

import java.io.IOException;
import java.util.Date;

/* compiled from: Twttr */
final class aa extends ap<Date> {
    aa() {
    }

    protected /* synthetic */ Object a_(p pVar) throws IOException, ClassNotFoundException {
        return b(pVar);
    }

    protected void a(q qVar, Date date) throws IOException {
        qVar.b(date.getTime());
    }

    protected Date b(p pVar) throws IOException, ClassNotFoundException {
        return new Date(pVar.f());
    }
}
