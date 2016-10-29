package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.request.ImageRequest;
import gj;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class aw extends at {
    public aw(Executor executor, ab abVar) {
        super(executor, abVar);
    }

    protected gj a(ImageRequest imageRequest) throws IOException {
        return a(imageRequest.m().toString(), (int) imageRequest.m().length());
    }

    protected String a() {
        return "LocalFileFetchProducer";
    }
}
