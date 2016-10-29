package com.twitter.model.businessprofiles;

import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class z extends f<x> {
    a a;
    PhoneNumber b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public z a(a aVar) {
        this.a = aVar;
        return this;
    }

    public z a(PhoneNumber phoneNumber) {
        this.b = phoneNumber;
        return this;
    }

    protected x d() {
        return new x(this);
    }
}
