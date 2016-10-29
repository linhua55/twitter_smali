package com.google.android.gcm;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.scribe.ScribeItem;
import java.io.IOException;

/* compiled from: Twttr */
class GCMScribeReporter$GCMDeletedMessageScribeItem extends ScribeItem {
    public static final Creator<GCMScribeReporter$GCMDeletedMessageScribeItem> CREATOR;
    private final int a;

    static {
        CREATOR = new c();
    }

    GCMScribeReporter$GCMDeletedMessageScribeItem(int i) {
        this.a = i;
    }

    protected GCMScribeReporter$GCMDeletedMessageScribeItem(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a("deletedCount", this.a);
    }
}
