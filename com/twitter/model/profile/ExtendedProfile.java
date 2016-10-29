package com.twitter.model.profile;

import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class ExtendedProfile {
    public static final d<ExtendedProfile, b> a;
    public final long b;
    public final int c;
    public final int d;
    public final int e;
    public final Visibility f;
    public final Visibility g;
    public final long h;
    public final d i;

    /* compiled from: Twttr */
    public enum Visibility {
        PUBLIC,
        FOLLOWERS,
        FOLLOWING,
        MUTUALFOLLOW,
        SELF;

        public String toString() {
            return name().toLowerCase();
        }
    }

    static {
        a = new c();
    }

    public ExtendedProfile(b bVar) {
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        this.e = bVar.d;
        this.f = bVar.e;
        this.g = bVar.f;
        this.i = bVar.g;
        this.h = bVar.h;
    }

    public boolean a(ExtendedProfile extendedProfile) {
        return this.b == extendedProfile.b && this.c == extendedProfile.c && this.d == extendedProfile.d && this.e == extendedProfile.e && ObjectUtils.a(this.f, extendedProfile.f) && ObjectUtils.a(this.g, extendedProfile.g) && this.h == extendedProfile.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ExtendedProfile extendedProfile = (ExtendedProfile) obj;
        if (a(extendedProfile) && ObjectUtils.a(this.i, extendedProfile.i)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.i != null ? this.i.hashCode() : 0) + (((((((((((((int) (this.b ^ (this.b >>> 32))) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31);
    }

    public boolean a() {
        return (this.e == 0 || this.d == 0 || this.c == 0) ? false : true;
    }

    public boolean b() {
        return this.i != null && aj.b(this.i.c) && aj.b(this.i.b);
    }

    public boolean c() {
        return ((this.c == 0 || this.d == 0) && this.e == 0) ? false : true;
    }
}
