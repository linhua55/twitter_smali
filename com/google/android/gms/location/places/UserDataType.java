package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.vk;
import java.util.Set;

public final class UserDataType implements SafeParcelable {
    public static final n CREATOR;
    public static final UserDataType a;
    public static final UserDataType b;
    public static final UserDataType c;
    public static final Set<UserDataType> d;
    final int e;
    final String f;
    final int g;

    static {
        a = a("test_type", 1);
        b = a("labeled_place", 6);
        c = a("here_content", 7);
        d = vk.a(a, b, c);
        CREATOR = new n();
    }

    UserDataType(int i, String str, int i2) {
        bm.a(str);
        this.e = i;
        this.f = str;
        this.g = i2;
    }

    private static UserDataType a(String str, int i) {
        return new UserDataType(0, str, i);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserDataType)) {
            return false;
        }
        UserDataType userDataType = (UserDataType) obj;
        return this.f.equals(userDataType.f) && this.g == userDataType.g;
    }

    public int hashCode() {
        return this.f.hashCode();
    }

    public String toString() {
        return this.f;
    }

    public void writeToParcel(Parcel parcel, int i) {
        n.a(this, parcel, i);
    }
}
