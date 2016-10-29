package com.twitter.library.scribe;

import android.content.ComponentName;
import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ScribeItemShared extends MapScribeItem {
    public static final Creator<ScribeItemShared> CREATOR;

    static {
        CREATOR = new z();
    }

    public ScribeItemShared(ComponentName componentName) {
        super(1);
        a(0, componentName.flattenToShortString());
    }

    ScribeItemShared(Parcel parcel) {
        super(parcel);
    }

    protected String a(int i) {
        return "target";
    }
}
