package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public class MomentScribeDetails$Transition implements Parcelable {
    public static final Creator<MomentScribeDetails$Transition> CREATOR;
    public final long a;
    public final long b;
    public final long c;
    public final boolean d;
    public final boolean e;

    static {
        CREATOR = new o();
    }

    private MomentScribeDetails$Transition(p pVar) {
        this.a = pVar.a;
        this.b = pVar.b;
        this.c = pVar.c;
        this.d = pVar.d;
        this.e = pVar.e;
    }

    private MomentScribeDetails$Transition(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        if (parcel.readInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
        if (parcel.readInt() != 1) {
            z2 = false;
        }
        this.e = z2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        if (this.d) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.e) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        if (MomentScribeDetails.a(this.b)) {
            jsonGenerator.a("curr_tweet_id", this.b);
        }
        if (MomentScribeDetails.a(this.c)) {
            jsonGenerator.a("previous_moment_id", this.c);
        }
        if (MomentScribeDetails.a(this.a)) {
            jsonGenerator.a("prev_tweet_id", this.a);
        }
        jsonGenerator.a("reached_capsule_end", this.e);
        jsonGenerator.a("reached_capsule_start", this.d);
        jsonGenerator.d();
    }
}
