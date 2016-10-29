package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class FoundMediaImageVariant implements Parcelable {
    public static final Creator<FoundMediaImageVariant> CREATOR;
    public static final n<FoundMediaImageVariant> a;
    public final String b;
    public final Size c;
    public final int d;
    public final String e;

    static {
        a = new e();
        CREATOR = new d();
    }

    protected FoundMediaImageVariant(Parcel parcel) {
        this.b = parcel.readString();
        this.c = (Size) parcel.readParcelable(Size.class.getClassLoader());
        this.d = parcel.readInt();
        this.e = parcel.readString();
    }

    public FoundMediaImageVariant(String str, Size size, int i, String str2) {
        this.b = str;
        this.c = size;
        this.d = i;
        this.e = str2;
    }

    public static SparseArray<FoundMediaImageVariant> a(List<FoundMediaImageVariant> list) {
        SparseArray<FoundMediaImageVariant> sparseArray = new SparseArray(list.size());
        for (FoundMediaImageVariant foundMediaImageVariant : list) {
            sparseArray.put(foundMediaImageVariant.c.a(), foundMediaImageVariant);
        }
        return sparseArray;
    }

    public static void a(Parcel parcel, int i, SparseArray<FoundMediaImageVariant> sparseArray) {
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable((Parcelable) sparseArray.valueAt(i2), i);
        }
    }

    public static SparseArray<FoundMediaImageVariant> a(Parcel parcel) {
        int readInt = parcel.readInt();
        ClassLoader classLoader = FoundMediaImageVariant.class.getClassLoader();
        SparseArray<FoundMediaImageVariant> sparseArray = new SparseArray(readInt);
        for (int i = 0; i < readInt; i++) {
            FoundMediaImageVariant foundMediaImageVariant = (FoundMediaImageVariant) parcel.readParcelable(classLoader);
            sparseArray.put(foundMediaImageVariant.c.a(), foundMediaImageVariant);
        }
        return sparseArray;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
    }
}
