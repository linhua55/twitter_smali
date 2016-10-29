package com.twitter.library.network.livepipeline;

import com.twitter.model.livepipeline.PipelineEventType;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class y {
    public final String a;
    public final PipelineEventType b;
    public final CallbackContext c;

    protected y(z zVar) {
        this.b = zVar.b;
        this.a = this.b.a(zVar.a.toString());
        this.c = (CallbackContext) e.b(zVar.c, CallbackContext.CURRENT_THREAD);
    }
}
