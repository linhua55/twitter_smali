package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

public class AutocompletePredictionEntity implements SafeParcelable {
    public static final Creator<AutocompletePredictionEntity> CREATOR;
    private static final List<SubstringEntity> k;
    final int a;
    final String b;
    final String c;
    final List<Integer> d;
    final List<SubstringEntity> e;
    final int f;
    final String g;
    final List<SubstringEntity> h;
    final String i;
    final List<SubstringEntity> j;

    public class SubstringEntity implements SafeParcelable {
        public static final Creator<SubstringEntity> CREATOR;
        final int a;
        final int b;
        final int c;

        static {
            CREATOR = new h();
        }

        public SubstringEntity(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubstringEntity)) {
                return false;
            }
            SubstringEntity substringEntity = (SubstringEntity) obj;
            return bj.a(Integer.valueOf(this.b), Integer.valueOf(substringEntity.b)) && bj.a(Integer.valueOf(this.c), Integer.valueOf(substringEntity.c));
        }

        public int hashCode() {
            return bj.a(Integer.valueOf(this.b), Integer.valueOf(this.c));
        }

        public String toString() {
            return bj.a((Object) this).a("offset", Integer.valueOf(this.b)).a("length", Integer.valueOf(this.c)).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            h.a(this, parcel, i);
        }
    }

    static {
        CREATOR = new a();
        k = Collections.emptyList();
    }

    AutocompletePredictionEntity(int i, String str, List<Integer> list, int i2, String str2, List<SubstringEntity> list2, String str3, List<SubstringEntity> list3, String str4, List<SubstringEntity> list4) {
        this.a = i;
        this.c = str;
        this.d = list;
        this.f = i2;
        this.b = str2;
        this.e = list2;
        this.g = str3;
        this.h = list3;
        this.i = str4;
        this.j = list4;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompletePredictionEntity)) {
            return false;
        }
        AutocompletePredictionEntity autocompletePredictionEntity = (AutocompletePredictionEntity) obj;
        return bj.a(this.c, autocompletePredictionEntity.c) && bj.a(this.d, autocompletePredictionEntity.d) && bj.a(Integer.valueOf(this.f), Integer.valueOf(autocompletePredictionEntity.f)) && bj.a(this.b, autocompletePredictionEntity.b) && bj.a(this.e, autocompletePredictionEntity.e) && bj.a(this.g, autocompletePredictionEntity.g) && bj.a(this.h, autocompletePredictionEntity.h) && bj.a(this.i, autocompletePredictionEntity.i) && bj.a(this.j, autocompletePredictionEntity.j);
    }

    public int hashCode() {
        return bj.a(this.c, this.d, Integer.valueOf(this.f), this.b, this.e, this.g, this.h, this.i, this.j);
    }

    public String toString() {
        return bj.a((Object) this).a("placeId", this.c).a("placeTypes", this.d).a("fullText", this.b).a("fullTextMatchedSubstrings", this.e).a("primaryText", this.g).a("primaryTextMatchedSubstrings", this.h).a("secondaryText", this.i).a("secondaryTextMatchedSubstrings", this.j).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
