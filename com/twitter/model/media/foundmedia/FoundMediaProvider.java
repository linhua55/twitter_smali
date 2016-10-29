package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class FoundMediaProvider implements Parcelable {
    public static final Creator<FoundMediaProvider> CREATOR;
    public static final n<FoundMediaProvider> a;
    public final String b;
    public final String c;
    public final SparseArray<FoundMediaImageVariant> d;

    static {
        a = new l(null);
        CREATOR = new k();
    }

    protected FoundMediaProvider(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = FoundMediaImageVariant.a(parcel);
    }

    public FoundMediaProvider(String str, String str2, SparseArray<FoundMediaImageVariant> sparseArray) {
        this.b = str;
        this.c = str2;
        this.d = sparseArray;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        FoundMediaImageVariant.a(parcel, i, this.d);
    }
}
