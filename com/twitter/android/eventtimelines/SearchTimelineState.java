package com.twitter.android.eventtimelines;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.ImmutableMap;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
public class SearchTimelineState implements Parcelable {
    public static final Creator<SearchTimelineState> CREATOR;
    public static SearchTimelineState a;
    public final ImmutableMap<Integer, Long> b;

    static {
        a = new SearchTimelineState(ImmutableMap.a());
        CREATOR = new x();
    }

    private SearchTimelineState(Parcel parcel) {
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        this.b = (ImmutableMap) m.a(bArr, ImmutableMap.a(s.c, s.f));
    }

    public SearchTimelineState(ImmutableMap<Integer, Long> immutableMap) {
        this.b = immutableMap;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        byte[] a = m.a(this.b, ImmutableMap.a(s.c, s.f));
        parcel.writeInt(a.length);
        parcel.writeByteArray(a);
    }
}
