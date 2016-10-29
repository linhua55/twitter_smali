package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import com.facebook.imagepipeline.request.ImageRequest;
import gh;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class ay implements bw<a<gh>> {
    private final Executor a;

    public ay(Executor executor) {
        this.a = executor;
    }

    public void a(o<a<gh>> oVar, bx bxVar) {
        o<a<gh>> oVar2 = oVar;
        Runnable azVar = new az(this, oVar2, bxVar.c(), "VideoThumbnailProducer", bxVar.b(), bxVar.a());
        bxVar.a(new bb(this, azVar));
        this.a.execute(azVar);
    }

    private static int b(ImageRequest imageRequest) {
        if (imageRequest.c() > 96 || imageRequest.d() > 96) {
            return 1;
        }
        return 3;
    }
}
