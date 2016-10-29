package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.am;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class DynamicAdMediaInfo implements Parcelable {
    public static final Creator<DynamicAdMediaInfo> CREATOR;
    private final String a;
    private final long b;
    private final List<am> c;
    private final VideoCta d;

    static {
        CREATOR = new j();
    }

    DynamicAdMediaInfo(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readLong();
        this.c = parcel.readArrayList(am.class.getClassLoader());
        this.d = (VideoCta) parcel.readParcelable(VideoCta.class.getClassLoader());
    }

    public DynamicAdMediaInfo(String str, long j, List<am> list, VideoCta videoCta) {
        this.a = str;
        this.b = j;
        this.c = n.a(list);
        this.d = videoCta;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DynamicAdMediaInfo dynamicAdMediaInfo = (DynamicAdMediaInfo) obj;
        if (this.a != null) {
            if (!this.a.equals(dynamicAdMediaInfo.a)) {
                return false;
            }
        } else if (dynamicAdMediaInfo.a != null) {
            return false;
        }
        if (this.b != dynamicAdMediaInfo.b) {
            return false;
        }
        if (this.d != null) {
            if (this.d.equals(dynamicAdMediaInfo.d)) {
                return false;
            }
        } else if (dynamicAdMediaInfo.d != null) {
            return false;
        }
        if (this.c != null) {
            if (this.c.equals(dynamicAdMediaInfo.c)) {
                z = false;
            }
        } else if (dynamicAdMediaInfo.c != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        int hashCode2 = ((hashCode * 31) + Long.valueOf(this.b).hashCode()) * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }

    public Video a(String str) {
        return (Video) new u().a(this.a).b("ad").a(this.b).c(str).a(this.d).q();
    }

    List<am> a() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeLong(this.b);
        parcel.writeList(this.c);
        parcel.writeParcelable(this.d, i);
    }
}
