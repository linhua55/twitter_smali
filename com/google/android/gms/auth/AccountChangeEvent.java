package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class AccountChangeEvent implements SafeParcelable {
    public static final Creator<AccountChangeEvent> CREATOR;
    final int a;
    final long b;
    final String c;
    final int d;
    final int e;
    final String f;

    static {
        CREATOR = new b();
    }

    AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.a = i;
        this.b = j;
        this.c = (String) bm.a(str);
        this.d = i2;
        this.e = i3;
        this.f = str2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        return this.a == accountChangeEvent.a && this.b == accountChangeEvent.b && bj.a(this.c, accountChangeEvent.c) && this.d == accountChangeEvent.d && this.e == accountChangeEvent.e && bj.a(this.f, accountChangeEvent.f);
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.a), Long.valueOf(this.b), this.c, Integer.valueOf(this.d), Integer.valueOf(this.e), this.f);
    }

    public String toString() {
        String str = "UNKNOWN";
        switch (this.d) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                str = "ADDED";
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                str = "REMOVED";
                break;
            case Util.TYPE_OTHER /*3*/:
                str = "RENAMED_FROM";
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                str = "RENAMED_TO";
                break;
        }
        return "AccountChangeEvent {accountName = " + this.c + ", changeType = " + str + ", changeData = " + this.f + ", eventIndex = " + this.e + "}";
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
