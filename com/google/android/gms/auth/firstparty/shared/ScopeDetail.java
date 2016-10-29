package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class ScopeDetail implements SafeParcelable {
    public static final c CREATOR;
    final int a;
    String b;
    String c;
    String d;
    String e;
    String f;
    List<String> g;
    public FACLData h;

    static {
        CREATOR = new c();
    }

    ScopeDetail(int i, String str, String str2, String str3, String str4, String str5, List<String> list, FACLData fACLData) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = list;
        this.h = fACLData;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}
