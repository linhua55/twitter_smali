package com.twitter.library.network.livepipeline;

import com.twitter.model.livepipeline.PipelineEventType;

/* compiled from: Twttr */
public class z {
    public Object a;
    public PipelineEventType b;
    public CallbackContext c;

    public z a(Object obj) {
        this.a = obj;
        return this;
    }

    public z a(PipelineEventType pipelineEventType) {
        this.b = pipelineEventType;
        return this;
    }

    public z a(CallbackContext callbackContext) {
        this.c = callbackContext;
        return this;
    }

    public y a() {
        if (this.a != null && this.b != null) {
            return new y(this);
        }
        throw new RuntimeException("A subscription must contain a non-null topic and type");
    }
}
