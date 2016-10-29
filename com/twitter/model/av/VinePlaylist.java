package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class VinePlaylist extends AVMediaPlaylist {
    public static final Creator<VinePlaylist> CREATOR;
    private final VineMedia d;

    static {
        CREATOR = new aa();
    }

    public VinePlaylist(String str, String str2, long j) {
        this.d = new VineMedia(str, str2, j);
    }

    private VinePlaylist(Parcel parcel) {
        super(parcel);
        this.d = (VineMedia) parcel.readParcelable(VineMedia.class.getClassLoader());
    }

    public AVMedia c() {
        return this.d;
    }

    public AVMedia k() {
        return null;
    }

    public boolean a() {
        return true;
    }

    public String b() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        VinePlaylist vinePlaylist = (VinePlaylist) obj;
        if (this.d != null) {
            if (this.d.equals(vinePlaylist.d)) {
                return true;
            }
        } else if (vinePlaylist.d == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.d != null ? this.d.hashCode() : 0) + (super.hashCode() * 31);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
        parcel.writeParcelable(this.d, i);
    }
}
