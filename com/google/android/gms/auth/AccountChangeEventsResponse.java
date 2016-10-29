package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class AccountChangeEventsResponse implements SafeParcelable {
    public static final Creator<AccountChangeEventsResponse> CREATOR;
    final int a;
    final List<AccountChangeEvent> b;

    static {
        CREATOR = new d();
    }

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.a = i;
        this.b = (List) bm.a(list);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}
