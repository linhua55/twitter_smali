package com.twitter.model.people;

import com.twitter.model.people.ModuleTitle.Icon;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class af extends d<ModuleTitle, ae> {
    private af() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, ModuleTitle moduleTitle) throws IOException {
        qVar.b(moduleTitle.c);
        qVar.a(moduleTitle.d, s.a(Icon.class));
    }

    protected ae a() {
        return new ae();
    }

    protected void a(p pVar, ae aeVar, int i) throws IOException, ClassNotFoundException {
        aeVar.a(pVar.i());
        aeVar.a((Icon) e.b(pVar.a(s.a(Icon.class)), Icon.NONE));
    }
}
