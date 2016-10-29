package com.twitter.android.widget;

import com.twitter.model.geo.TwitterPlace.PlaceType;

/* compiled from: Twttr */
class u {
    public String a;
    public PlaceType b;
    public String c;
    public String d;
    public int e;
    public int f;

    u(String str, PlaceType placeType, String str2, String str3, int i, int i2) {
        this.a = str;
        this.b = placeType;
        this.c = str2;
        this.d = str3;
        this.e = i;
        this.f = i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null || !(obj instanceof u)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        u uVar = (u) obj;
        if (!this.a.equals(uVar.a) || this.b != uVar.b) {
            return false;
        }
        if ((this.c != null && !this.c.equals(uVar.c)) || uVar.c != null) {
            return false;
        }
        if ((this.d != null && !this.d.equals(uVar.d)) || uVar.d != null || this.e != uVar.e) {
            return false;
        }
        if (this.f != uVar.f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return ((((hashCode + i) * 31) + this.e) * 31) + this.f;
    }
}
