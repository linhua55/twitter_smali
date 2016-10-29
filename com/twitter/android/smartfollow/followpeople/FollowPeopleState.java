package com.twitter.android.smartfollow.followpeople;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.refresh.widget.a;
import java.util.HashSet;

/* compiled from: Twttr */
public class FollowPeopleState implements Parcelable {
    public static final Creator<FollowPeopleState> CREATOR;
    public HashSet<Long> a;
    public boolean b;
    public int c;
    public int d;

    static {
        CREATOR = new c();
    }

    public FollowPeopleState(HashSet<Long> hashSet, boolean z, a aVar) {
        this.a = new HashSet();
        this.b = false;
        this.a = hashSet;
        this.b = z;
        this.c = aVar.a;
        this.d = aVar.c;
    }

    protected FollowPeopleState(Parcel parcel) {
        boolean z;
        this.a = new HashSet();
        this.b = false;
        this.a = (HashSet) parcel.readSerializable();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.b = z;
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.a);
        parcel.writeInt(this.b ? 1 : 0);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }
}
