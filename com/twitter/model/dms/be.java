package com.twitter.model.dms;

import android.os.Parcel;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
final class be implements Creator<ReadReceiptParticipant> {
    be() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public ReadReceiptParticipant a(Parcel parcel) {
        return new ReadReceiptParticipant(parcel);
    }

    public ReadReceiptParticipant[] a(int i) {
        return new ReadReceiptParticipant[i];
    }
}
