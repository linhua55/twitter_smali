package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public class MomentScribeDetails$Engagement implements Parcelable {
    public static final Creator<MomentScribeDetails$Engagement> CREATOR;
    public final int a;

    static {
        CREATOR = new l();
    }

    public MomentScribeDetails$Engagement(int i) {
        this.a = i;
    }

    private MomentScribeDetails$Engagement(Parcel parcel) {
        this.a = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("user_action", this.a);
        jsonGenerator.d();
    }
}
