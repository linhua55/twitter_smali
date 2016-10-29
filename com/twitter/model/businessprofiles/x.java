package com.twitter.model.businessprofiles;

import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;

/* compiled from: Twttr */
public class x {
    public static final d<x, z> a;
    public final a b;
    public final PhoneNumber c;

    static {
        a = new aa();
    }

    public x(z zVar) {
        this.b = zVar.a;
        this.c = zVar.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        if (ObjectUtils.a(this.b, xVar.b) && ObjectUtils.a(this.c, xVar.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c);
    }
}
