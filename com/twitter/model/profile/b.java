package com.twitter.model.profile;

import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class b extends f<ExtendedProfile> {
    long a;
    int b;
    int c;
    int d;
    Visibility e;
    Visibility f;
    d g;
    long h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public b() {
        this.e = Visibility.SELF;
        this.f = Visibility.SELF;
    }

    public b(ExtendedProfile extendedProfile) {
        this.e = Visibility.SELF;
        this.f = Visibility.SELF;
        a(extendedProfile.b);
        a(extendedProfile.c);
        b(extendedProfile.d);
        c(extendedProfile.e);
        a(extendedProfile.f);
        b(extendedProfile.g);
        b(extendedProfile.h);
        if (extendedProfile.i != null) {
            a(new f(extendedProfile.i).d());
        }
    }

    public b a(long j) {
        this.a = j;
        return this;
    }

    public b a(int i) {
        this.b = i;
        return this;
    }

    public b b(int i) {
        this.c = i;
        return this;
    }

    public b c(int i) {
        this.d = i;
        return this;
    }

    public b a(Visibility visibility) {
        this.e = visibility;
        return this;
    }

    public b b(Visibility visibility) {
        this.f = visibility;
        return this;
    }

    public b a(d dVar) {
        this.g = dVar;
        return this;
    }

    public b b(long j) {
        this.h = j;
        return this;
    }

    protected ExtendedProfile d() {
        return new ExtendedProfile(this);
    }
}
