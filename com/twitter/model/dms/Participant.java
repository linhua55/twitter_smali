package com.twitter.model.dms;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class Participant implements Parcelable {
    public static final Creator<Participant> CREATOR;
    public static final n<Participant> a;
    public final long b;
    public final long c;
    public final long d;

    static {
        CREATOR = new az();
        a = new bc();
    }

    Participant(ba baVar) {
        this.b = baVar.a;
        this.c = baVar.b;
        this.d = baVar.c;
    }

    protected Participant(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.b != ((Participant) obj).b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
    }
}
