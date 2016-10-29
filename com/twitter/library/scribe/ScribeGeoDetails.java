package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class ScribeGeoDetails implements Parcelable {
    public static final Creator<ScribeGeoDetails> CREATOR;
    public int a;
    public int b;
    public List<ScribeGeoPlace> c;

    /* compiled from: Twttr */
    public class ScribeGeoPlace implements Parcelable {
        public static final Creator<ScribeGeoPlace> CREATOR;
        public String a;
        public String b;
        public double c;
        public double d;
        public String e;
        public int f;
        public int g;
        public int h;
        public String i;
        public String j;
        public long k;

        static {
            CREATOR = new v();
        }

        public ScribeGeoPlace() {
            this.c = Double.NaN;
            this.d = Double.NaN;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.k = -1;
        }

        public ScribeGeoPlace(Parcel parcel) {
            this.c = Double.NaN;
            this.d = Double.NaN;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.k = -1;
            this.a = parcel.readString();
            this.b = parcel.readString();
            this.c = parcel.readDouble();
            this.d = parcel.readDouble();
            this.e = parcel.readString();
            this.f = parcel.readInt();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readString();
            this.j = parcel.readString();
            this.k = parcel.readLong();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            parcel.writeDouble(this.c);
            parcel.writeDouble(this.d);
            parcel.writeString(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeString(this.i);
            parcel.writeString(this.j);
            parcel.writeLong(this.k);
        }

        public void a(JsonGenerator jsonGenerator) throws IOException {
            jsonGenerator.c();
            if (this.a != null) {
                jsonGenerator.a("place_id", this.a);
            }
            if (this.b != null) {
                jsonGenerator.a("place_type", this.b);
            }
            if (!Double.isNaN(this.c)) {
                jsonGenerator.a("place_lat", this.c);
            }
            if (!Double.isNaN(this.d)) {
                jsonGenerator.a("place_lon", this.d);
            }
            if (this.e != null) {
                jsonGenerator.a("source", this.e);
            }
            if (this.f != -1) {
                jsonGenerator.a("is_autotag", this.f > 0);
            }
            if (this.g != -1) {
                jsonGenerator.a("offset", this.g);
            }
            if (this.h != -1) {
                jsonGenerator.a("rank", this.h);
            }
            if (this.i != null) {
                jsonGenerator.a("query", this.i);
            }
            if (this.j != null) {
                jsonGenerator.a("state", this.j);
            }
            if (this.k != -1) {
                jsonGenerator.a("last_interaction_time", this.k);
            }
            jsonGenerator.d();
        }
    }

    static {
        CREATOR = new u();
    }

    public ScribeGeoDetails() {
        this.a = -1;
        this.b = -1;
        this.c = new ArrayList();
    }

    public ScribeGeoDetails(Parcel parcel) {
        this.a = -1;
        this.b = -1;
        this.c = new ArrayList();
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readArrayList(ScribeGeoPlace.class.getClassLoader());
    }

    public ScribeGeoPlace a(String str, PlaceType placeType, double d, double d2, String str2, int i, int i2, int i3, String str3, String str4, long j) {
        ScribeGeoPlace scribeGeoPlace = new ScribeGeoPlace();
        scribeGeoPlace.a = str;
        scribeGeoPlace.b = placeType.toString();
        scribeGeoPlace.c = d;
        scribeGeoPlace.d = d2;
        scribeGeoPlace.e = str2;
        scribeGeoPlace.f = i;
        scribeGeoPlace.g = i2;
        scribeGeoPlace.h = i3;
        scribeGeoPlace.i = str3;
        scribeGeoPlace.j = str4;
        scribeGeoPlace.k = j;
        this.c.add(scribeGeoPlace);
        return scribeGeoPlace;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeList(this.c);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        boolean z = true;
        jsonGenerator.c();
        if (this.a != -1) {
            jsonGenerator.a("interacted_poi_list", this.a > 0);
        }
        if (this.b != -1) {
            String str = "interacted_server_search";
            if (this.b <= 0) {
                z = false;
            }
            jsonGenerator.a(str, z);
        }
        if (!this.c.isEmpty()) {
            jsonGenerator.d("geo_place_details");
            for (ScribeGeoPlace a : this.c) {
                a.a(jsonGenerator);
            }
            jsonGenerator.b();
        }
        jsonGenerator.d();
    }
}
