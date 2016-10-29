package com.twitter.model.businessprofiles;

import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class aa extends d<x, z> {
    private aa() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, x xVar) throws IOException {
        qVar.a(xVar.b, a.a).a(xVar.c, aj.a);
    }

    protected z a() {
        return new z();
    }

    protected void a(p pVar, z zVar, int i) throws IOException, ClassNotFoundException {
        zVar.a((a) pVar.a(a.a)).a((PhoneNumber) pVar.a(aj.a));
    }
}
