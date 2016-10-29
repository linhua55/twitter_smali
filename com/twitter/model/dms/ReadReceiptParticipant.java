package com.twitter.model.dms;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ReadReceiptParticipant extends Participant implements Parcelable {
    public static final Creator<ReadReceiptParticipant> CREATOR;
    public final String e;

    static {
        CREATOR = new be();
    }

    public ReadReceiptParticipant(bf bfVar) {
        super((ba) bfVar);
        this.e = bfVar.a;
    }

    protected ReadReceiptParticipant(Parcel parcel) {
        super(parcel);
        this.e = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.e);
    }

    public boolean a(long j, long j2) {
        return this.d >= j && this.c <= j2;
    }
}
