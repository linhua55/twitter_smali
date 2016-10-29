package com.twitter.model.dms;

import com.twitter.model.core.MediaEntity;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class aa extends e<x, z> {
    protected aa() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected z a() {
        return new z();
    }

    protected void a(p pVar, z zVar, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (d) zVar, i);
        zVar.a((MediaEntity) pVar.a(MediaEntity.a));
    }

    public void a(q qVar, x xVar) throws IOException {
        super.a(qVar, (c) xVar);
        qVar.a(xVar.e, MediaEntity.a);
    }
}
