package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.bo;
import gj;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public abstract class at implements bw<gj> {
    private final Executor a;
    private final ab b;

    protected abstract gj a(ImageRequest imageRequest) throws IOException;

    protected abstract String a();

    protected at(Executor executor, ab abVar) {
        this.a = executor;
        this.b = abVar;
    }

    public void a(o<gj> oVar, bx bxVar) {
        o<gj> oVar2 = oVar;
        Runnable auVar = new au(this, oVar2, bxVar.c(), a(), bxVar.b(), bxVar.a());
        bxVar.a(new av(this, auVar));
        this.a.execute(auVar);
    }

    protected gj a(InputStream inputStream, int i) throws IOException {
        a aVar = null;
        if (i < 0) {
            try {
                aVar = a.a(this.b.b(inputStream));
            } catch (Throwable th) {
                bo.a(inputStream);
                a.c(aVar);
            }
        } else {
            aVar = a.a(this.b.b(inputStream, i));
        }
        gj gjVar = new gj(aVar);
        bo.a(inputStream);
        a.c(aVar);
        return gjVar;
    }

    protected gj a(String str, int i) throws IOException {
        return a(new FileInputStream(str), i);
    }
}
