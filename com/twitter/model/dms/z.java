package com.twitter.model.dms;

import com.twitter.model.core.MediaEntity;

/* compiled from: Twttr */
public class z extends d<x, z> {
    private MediaEntity b;

    protected /* synthetic */ Object c() {
        return d();
    }

    protected x d() {
        return new x(this);
    }

    public boolean bo_() {
        return this.b != null;
    }

    public z a(MediaEntity mediaEntity) {
        this.b = mediaEntity;
        return this;
    }
}
