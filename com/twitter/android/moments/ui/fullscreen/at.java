package com.twitter.android.moments.ui.fullscreen;

import atf;
import cgu;
import com.twitter.android.moments.data.v;
import com.twitter.model.moments.ab;
import com.twitter.util.object.g;
import defpackage.aow;
import defpackage.asy;
import defpackage.asz;

/* compiled from: Twttr */
class at implements g<atf<aow, cgu<ab>>> {
    final /* synthetic */ as a;

    at(as asVar) {
        this.a = asVar;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public atf<aow, cgu<ab>> a() {
        return new asy(new v(new asz(this.a.a.getContentResolver())));
    }
}
