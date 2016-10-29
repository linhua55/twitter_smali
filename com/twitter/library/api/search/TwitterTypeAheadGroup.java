package com.twitter.library.api.search;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
public class TwitterTypeAheadGroup implements Parcelable {
    public static final Creator<TwitterTypeAheadGroup> CREATOR;
    public final List<TwitterTypeAhead> a;
    public final List<TwitterTypeAhead> b;
    public final List<TwitterTypeAhead> c;

    static {
        CREATOR = new p();
    }

    public TwitterTypeAheadGroup(List<TwitterTypeAhead> list, List<TwitterTypeAhead> list2, List<TwitterTypeAhead> list3) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.a = list;
        if (list2 == null) {
            list2 = Collections.emptyList();
        }
        this.b = list2;
        if (list3 == null) {
            list3 = Collections.emptyList();
        }
        this.c = list3;
    }

    public TwitterTypeAheadGroup(Parcel parcel) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.a = new ArrayList();
        parcel.readList(this.a, classLoader);
        this.b = new ArrayList();
        parcel.readList(this.b, classLoader);
        this.c = new ArrayList();
        parcel.readList(this.c, classLoader);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.a);
        parcel.writeList(this.b);
        parcel.writeList(this.c);
    }

    public boolean a() {
        return this.a.isEmpty() && this.b.isEmpty() && this.c.isEmpty();
    }
}
