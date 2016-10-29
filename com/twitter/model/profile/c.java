package com.twitter.model.profile;

import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class c extends d<ExtendedProfile, b> {
    private static final n<Visibility> a;

    private c() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    static {
        a = s.a(Visibility.class);
    }

    protected void a(q qVar, ExtendedProfile extendedProfile) throws IOException {
        qVar.b(extendedProfile.b).e(extendedProfile.c).e(extendedProfile.d).e(extendedProfile.e).b(extendedProfile.h);
        a.b(qVar, extendedProfile.f);
        a.b(qVar, extendedProfile.g);
        d.a.b(qVar, (Object) extendedProfile.i);
    }

    protected b a() {
        return new b();
    }

    protected void a(p pVar, b bVar, int i) throws IOException, ClassNotFoundException {
        bVar.a(pVar.f()).a(pVar.e()).b(pVar.e()).c(pVar.e()).b(pVar.f()).a((Visibility) a.c(pVar)).b((Visibility) a.c(pVar)).a((d) d.a.a(pVar));
    }
}
