package com.twitter.model.core;

import cjs;
import com.twitter.model.av.VideoCta;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.util.math.Size;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
public class y extends ct<MediaEntity, x> {
    protected y() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, MediaEntity mediaEntity) throws IOException {
        super.a(qVar, (cr) mediaEntity);
        qVar.b(mediaEntity.c).b(mediaEntity.l).e(mediaEntity.m.typeId).a(mediaEntity.n, Size.a).b(mediaEntity.i).b(mediaEntity.j);
        s.a(qVar, mediaEntity.q, bm.a);
        s.a(qVar, mediaEntity.p, ag.a);
        qVar.a(mediaEntity.o, aj.a).a(mediaEntity.s, VideoCta.a).b(mediaEntity.t).b(mediaEntity.u).b(mediaEntity.v).a(mediaEntity.k, TwitterUser.a).b(mediaEntity.w);
        s.a(qVar, mediaEntity.r, cjs.a);
        qVar.b(mediaEntity.x);
        qVar.a(mediaEntity.y, ad.a);
    }

    protected x a() {
        return new x();
    }

    protected void a(p pVar, x xVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (cs) xVar, i);
        xVar.a(pVar.f()).a(pVar.p()).a(Type.a(pVar.e())).a((Size) pVar.b(Size.a)).b(pVar.f()).c(pVar.f()).a(s.a(pVar, bm.a)).b(s.a(pVar, ag.a)).a((aj) aj.a.a(pVar)).a((VideoCta) VideoCta.a.a(pVar)).b(pVar.i()).a(pVar.d()).c(pVar.i()).a((TwitterUser) TwitterUser.a.a(pVar)).b(pVar.d()).c(s.a(pVar, cjs.a)).d(pVar.i()).a((ad) ad.a.a(pVar));
    }
}
