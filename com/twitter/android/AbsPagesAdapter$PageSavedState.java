package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class AbsPagesAdapter$PageSavedState implements Parcelable {
    public static final Creator<AbsPagesAdapter$PageSavedState> CREATOR;
    public final String[] a;

    static {
        CREATOR = new c();
    }

    public AbsPagesAdapter$PageSavedState(List<at> list) {
        int size = list.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = ((at) list.get(i)).b();
        }
        this.a = strArr;
    }

    public AbsPagesAdapter$PageSavedState(Parcel parcel) {
        this.a = parcel.createStringArray();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.a);
    }
}
