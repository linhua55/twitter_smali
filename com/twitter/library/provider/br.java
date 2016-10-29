package com.twitter.library.provider;

import com.twitter.library.provider.LocalContactInfo.Type;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class br extends f<LocalContactInfo> {
    private int a;
    private String b;
    private boolean c;
    private String d;
    private Type e;

    protected /* synthetic */ Object c() {
        return d();
    }

    public br a(int i) {
        this.a = i;
        return this;
    }

    public br a(boolean z) {
        this.c = z;
        return this;
    }

    public br a(String str) {
        this.b = str;
        return this;
    }

    public br b(String str) {
        this.d = str;
        return this;
    }

    public br a(Type type) {
        this.e = type;
        return this;
    }

    public boolean bo_() {
        return (this.b == null || this.d == null || this.e == null) ? false : true;
    }

    protected LocalContactInfo d() {
        return new LocalContactInfo();
    }
}
