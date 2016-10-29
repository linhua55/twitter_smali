package com.twitter.android.geo;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.model.geo.g;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class GeoTagState implements Parcelable {
    public static final Creator<GeoTagState> CREATOR;
    private static final GeoTagState a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final g e;

    static {
        CREATOR = new b();
        a = new GeoTagState();
    }

    private GeoTagState() {
        this.e = null;
        this.b = false;
        this.d = false;
        this.c = false;
    }

    public static GeoTagState a() {
        return a;
    }

    public GeoTagState(g gVar, boolean z, boolean z2, boolean z3) {
        if (gVar == null) {
            throw new IllegalArgumentException("Cannot geotag state with null geo tag");
        } else if (!z2 || z) {
            this.e = gVar;
            this.b = z;
            this.d = z2;
            this.c = z3;
        } else {
            throw new IllegalArgumentException("All geotags from draft must be explicit");
        }
    }

    public GeoTagState(TwitterPlace twitterPlace, d dVar, String str, boolean z, boolean z2, boolean z3) {
        this(new g(twitterPlace, dVar, str), z, z2, z3);
    }

    public GeoTagState b() {
        if (this.e != null) {
            return this.b ? this : new GeoTagState(this.e.a(), this.e.b(), this.e.c(), true, this.d, this.c);
        } else {
            throw new IllegalStateException("Cannot make a null geotag explicit");
        }
    }

    public GeoTagState a(boolean z) {
        if (this.e != null) {
            return this.c == z ? this : new GeoTagState(this.e.a(), this.e.b(), this.e.c(), this.b, this.d, z);
        } else {
            throw new IllegalStateException("Cannot change a null geotag's precision");
        }
    }

    public boolean c() {
        return this.e != null;
    }

    public boolean d() {
        return c() && this.b;
    }

    public TwitterPlace e() {
        if (this.e != null) {
            return this.e.a();
        }
        throw new IllegalStateException("Cannot getPlace when there is no geotag");
    }

    public g f() {
        if (this.e == null || this.d) {
            return null;
        }
        if (this.c) {
            return new g(this.e.a(), this.e.b(), this.e.c());
        }
        return new g(this.e.a(), null, this.e.c());
    }

    public int describeContents() {
        return 0;
    }

    private GeoTagState(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.e = (g) ab.a(parcel, g.a);
        if (parcel.readByte() == (byte) 1) {
            z = true;
        } else {
            z = false;
        }
        this.b = z;
        if (parcel.readByte() == (byte) 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readByte() != (byte) 1) {
            z2 = false;
        }
        this.c = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        ab.a(parcel, this.e, g.a);
        if (this.b) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (!this.c) {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
    }
}
