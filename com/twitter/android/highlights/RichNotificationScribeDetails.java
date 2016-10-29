package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public class RichNotificationScribeDetails implements Parcelable {
    public static final Creator<RichNotificationScribeDetails> CREATOR;
    public int a;
    public int b;

    static {
        CREATOR = new z();
    }

    public RichNotificationScribeDetails() {
        this.a = -1;
        this.b = -1;
    }

    public RichNotificationScribeDetails(Parcel parcel) {
        this.a = -1;
        this.b = -1;
        this.a = parcel.readInt();
        this.b = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        if (this.a != -1) {
            jsonGenerator.a("notification_frequency", this.a);
        }
        if (this.b != -1) {
            jsonGenerator.a("notification_story_count", this.b);
        }
        jsonGenerator.d();
    }
}
