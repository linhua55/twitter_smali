package com.twitter.app.drafts;

import chl;
import com.twitter.database.schema.b;
import com.twitter.model.core.as;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.drafts.e;
import com.twitter.model.geo.g;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
public class h extends chl<b, d> {
    public static final h a;

    static {
        a = new h();
    }

    private h() {
    }

    public d a(b bVar) {
        return (d) new e().a(bVar.a()).a(bVar.b()).a((List) m.a(bVar.f(), s.a(DraftAttachment.a))).b(bVar.c()).a((g) m.a(bVar.i(), g.a)).a(bVar.g(), bVar.h()).a(bVar.d()).a((as) m.a(bVar.e(), as.a)).b(bVar.j()).a(bVar.k()).a(bVar.l()).q();
    }
}
