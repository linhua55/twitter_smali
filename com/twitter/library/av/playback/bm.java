package com.twitter.library.av.playback;

import bhc;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class bm extends f<DMAVDataSource> {
    bhc a;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bm a(bhc bhc) {
        this.a = bhc;
        return this;
    }

    public boolean bo_() {
        return this.a != null && this.a.y();
    }

    protected DMAVDataSource d() {
        return new DMAVDataSource(this);
    }
}
