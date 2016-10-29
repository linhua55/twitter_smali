package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public class MomentScribeDetails$Metadata implements Parcelable {
    public static final Creator<MomentScribeDetails$Metadata> CREATOR;
    public final int a;
    public final long b;
    public final int c;
    public final int d;

    static {
        CREATOR = new m();
    }

    private MomentScribeDetails$Metadata(int i, long j, int i2, int i3) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = i3;
    }

    private MomentScribeDetails$Metadata(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readLong();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }

    public MomentScribeDetails$Metadata(n nVar) {
        this(nVar.a, nVar.b > 0 ? nVar.b : Long.MIN_VALUE, nVar.c, nVar.d);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("content_type", this.a);
        if (this.b != Long.MIN_VALUE) {
            jsonGenerator.a("media_id", this.b);
        }
        if (this.d > 0) {
            jsonGenerator.a("page_index", this.c);
            jsonGenerator.a("total_pages", this.d);
        }
        jsonGenerator.d();
    }
}
