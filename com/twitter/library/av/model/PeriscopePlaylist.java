package com.twitter.library.av.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;

/* compiled from: Twttr */
public class PeriscopePlaylist extends AVMediaPlaylist {
    public static final Creator<PeriscopePlaylist> CREATOR;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final boolean h;

    static {
        CREATOR = new e();
    }

    public PeriscopePlaylist(String str, String str2, String str3, String str4, boolean z) {
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = z;
    }

    public PeriscopePlaylist(Parcel parcel) {
        boolean z = true;
        super(parcel);
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.h = z;
    }

    public boolean a() {
        return true;
    }

    public String b() {
        return this.g;
    }

    public AVMedia c() {
        return new PeriscopeMedia(this.d, this.e, this.f, this.h);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        PeriscopePlaylist periscopePlaylist = (PeriscopePlaylist) obj;
        if (this.h == periscopePlaylist.h && this.d.equals(periscopePlaylist.d) && this.e.equals(periscopePlaylist.e) && this.g.equals(periscopePlaylist.g)) {
            return this.f.equals(periscopePlaylist.f);
        }
        return false;
    }

    public int hashCode() {
        return (this.h ? 1 : 0) + (((((((((super.hashCode() * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h ? 1 : 0);
    }
}
