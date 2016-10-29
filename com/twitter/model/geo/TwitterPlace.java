package com.twitter.model.geo;

import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class TwitterPlace {
    public static final d<TwitterPlace, k> a;
    public final String b;
    public final PlaceType c;
    public final String d;
    public final VendorInfo e;
    public final String f;
    public final a g;
    public final d h;
    public final String i;
    public final String j;
    public final TwitterPlace k;
    public final String l;
    public final String m;

    /* compiled from: Twttr */
    public enum PlaceType {
        POI("poi"),
        NEIGHBORHOOD("neighborhood"),
        CITY("city"),
        ADMIN("admin"),
        COUNTRY("country"),
        UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN);
        
        private final String mName;

        private PlaceType(String str) {
            this.mName = str;
        }

        public String toString() {
            return this.mName;
        }
    }

    static {
        a = new l(null);
    }

    private TwitterPlace(k kVar) {
        this.b = kVar.a;
        this.c = kVar.b;
        this.d = kVar.c;
        this.e = kVar.d;
        this.f = kVar.e;
        this.g = kVar.f;
        this.h = kVar.g;
        this.i = kVar.h;
        this.j = kVar.i;
        this.k = kVar.j;
        this.l = kVar.k;
        this.m = kVar.l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TwitterPlace)) {
            return false;
        }
        return TextUtils.equals(this.b, ((TwitterPlace) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return "TwitterPlace { id: " + this.b + ", fullname: " + this.d + " }";
    }

    public static byte[] a(TwitterPlace twitterPlace) {
        return m.a((Object) twitterPlace, a);
    }

    public static TwitterPlace a(byte[] bArr) {
        return (TwitterPlace) m.a(bArr, a);
    }
}
