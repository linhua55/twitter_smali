package com.twitter.android;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
public class PermissionResult implements Parcelable {
    public static final Creator<PermissionResult> CREATOR;
    public final String[] a;
    public final String[] b;

    static {
        CREATOR = new le();
    }

    public static PermissionResult a(String[] strArr) {
        return new PermissionResult(strArr, CollectionUtils.a);
    }

    public static PermissionResult a(Context context, String[] strArr) {
        String[][] c = lf.a().c(context, strArr);
        return new PermissionResult(c[0], c[1]);
    }

    public boolean a() {
        return this.b.length == 0;
    }

    public PermissionResult(String[] strArr, String[] strArr2) {
        this.a = strArr;
        this.b = strArr2;
    }

    protected PermissionResult(Parcel parcel) {
        this.a = parcel.createStringArray();
        this.b = parcel.createStringArray();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.a);
        parcel.writeStringArray(this.b);
    }

    public int describeContents() {
        return 0;
    }
}
