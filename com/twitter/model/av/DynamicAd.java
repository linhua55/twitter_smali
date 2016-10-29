package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import cni;
import com.twitter.model.core.am;
import com.twitter.util.ab;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class DynamicAd implements Parcelable {
    public static final Creator<DynamicAd> CREATOR;
    public final String a;
    public final int b;
    public final cni c;
    private final DynamicAdMediaInfo d;

    static {
        CREATOR = new g();
    }

    public DynamicAd(String str, int i, cni cni, DynamicAdMediaInfo dynamicAdMediaInfo) {
        this.a = str;
        this.b = i;
        this.d = dynamicAdMediaInfo;
        this.c = cni;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DynamicAd dynamicAd = (DynamicAd) obj;
        if (this.b != dynamicAd.b) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(dynamicAd.a)) {
                return false;
            }
        } else if (dynamicAd.a != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(dynamicAd.d)) {
                return false;
            }
        } else if (dynamicAd.d != null) {
            return false;
        }
        if (this.c != null) {
            z = this.c.equals(dynamicAd.c);
        } else if (dynamicAd.c != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        int i2 = ((hashCode * 31) + this.b) * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + i2) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }

    public boolean a() {
        return this.d != null;
    }

    public boolean a(AVMedia aVMedia) {
        return TextUtils.equals(this.a, aVMedia.c());
    }

    public boolean b() {
        return this.b == 2;
    }

    public Video a(String str) {
        return this.d != null ? this.d.a(str) : null;
    }

    public List<am> c() {
        return this.d == null ? Collections.emptyList() : this.d.a();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        ab.a(parcel, this.c, cni.a);
        parcel.writeParcelable(this.d, i);
    }
}
