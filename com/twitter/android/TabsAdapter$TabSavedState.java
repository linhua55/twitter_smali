package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

/* compiled from: Twttr */
public class TabsAdapter$TabSavedState implements Parcelable {
    public static final Creator<TabsAdapter$TabSavedState> CREATOR;
    public final String[] a;

    static {
        CREATOR = new rb();
    }

    public TabsAdapter$TabSavedState(ArrayList<ra> arrayList) {
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = ((ra) arrayList.get(i)).a();
        }
        this.a = strArr;
    }

    public TabsAdapter$TabSavedState(Parcel parcel) {
        this.a = parcel.createStringArray();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.a);
    }
}
