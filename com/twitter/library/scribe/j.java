package com.twitter.library.scribe;

import com.twitter.model.moments.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class j extends f<MomentScribeDetails> {
    long a;
    long b;
    String c;
    Boolean d;
    MomentScribeDetails$Transition e;
    MomentScribeDetails$Metadata f;
    MomentScribeDetails$Engagement g;
    MomentScribeDetails$Dismiss h;
    long i;
    aj j;

    public j() {
        this.a = Long.MIN_VALUE;
        this.b = Long.MIN_VALUE;
        this.i = Long.MIN_VALUE;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public j a(long j) {
        this.a = j;
        return this;
    }

    public j b(long j) {
        this.b = j;
        return this;
    }

    public j a(String str) {
        this.c = str;
        return this;
    }

    public j a(Boolean bool) {
        this.d = bool;
        return this;
    }

    public j a(MomentScribeDetails$Transition momentScribeDetails$Transition) {
        this.e = momentScribeDetails$Transition;
        return this;
    }

    public j a(MomentScribeDetails$Metadata momentScribeDetails$Metadata) {
        this.f = momentScribeDetails$Metadata;
        return this;
    }

    public j a(MomentScribeDetails$Engagement momentScribeDetails$Engagement) {
        this.g = momentScribeDetails$Engagement;
        return this;
    }

    public j a(MomentScribeDetails$Dismiss momentScribeDetails$Dismiss) {
        this.h = momentScribeDetails$Dismiss;
        return this;
    }

    public j c(long j) {
        this.i = j;
        return this;
    }

    public j a(aj ajVar) {
        this.j = ajVar;
        return this;
    }

    protected MomentScribeDetails d() {
        return new MomentScribeDetails(this, null);
    }
}
