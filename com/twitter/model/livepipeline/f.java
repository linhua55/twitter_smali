package com.twitter.model.livepipeline;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class f<T, B extends f> extends com.twitter.util.object.f<T> {
    public PipelineEventType c;
    public String d;

    public f() {
        this.c = PipelineEventType.NO_TYPE;
    }

    public B a(PipelineEventType pipelineEventType) {
        this.c = pipelineEventType;
        return (f) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.d = str;
        return (f) ObjectUtils.a(this);
    }
}
