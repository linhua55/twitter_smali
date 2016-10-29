package com.twitter.library.av.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.a;
import java.util.List;

/* compiled from: Twttr */
public class PeriscopeMedia implements AVMedia {
    public static final Creator<PeriscopeMedia> CREATOR;
    private final String a;
    private final String b;
    private final String c;
    private final boolean d;

    static {
        CREATOR = new d();
    }

    public PeriscopeMedia(String str, String str2, String str3, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
    }

    public PeriscopeMedia(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.d = z;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return MimeTypes.BASE_TYPE_VIDEO;
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        return !this.d;
    }

    public boolean e() {
        return false;
    }

    public a f() {
        return new c(this.c);
    }

    public int g() {
        return 3;
    }

    public boolean h() {
        return true;
    }

    public boolean i() {
        return true;
    }

    public long j() {
        return -1;
    }

    public List<String> a(String str) {
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeInt(this.d ? 1 : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PeriscopeMedia periscopeMedia = (PeriscopeMedia) obj;
        if (this.d == periscopeMedia.d && this.a.equals(periscopeMedia.a) && this.b.equals(periscopeMedia.b)) {
            return this.c.equals(periscopeMedia.c);
        }
        return false;
    }

    public int hashCode() {
        return (this.d ? 1 : 0) + (((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31);
    }
}
