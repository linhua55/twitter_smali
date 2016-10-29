package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.util.aj;
import java.io.IOException;

/* compiled from: Twttr */
public class RichNotificationStoryScribeDetails implements Parcelable {
    public static final Creator<RichNotificationStoryScribeDetails> CREATOR;
    public String a;
    public int b;
    public String c;

    static {
        CREATOR = new aa();
    }

    public RichNotificationStoryScribeDetails() {
        this.b = -1;
    }

    public RichNotificationStoryScribeDetails(Parcel parcel) {
        this.b = -1;
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        if (aj.b(this.a)) {
            jsonGenerator.a("notification_story_type", this.a);
        }
        if (this.b != -1) {
            jsonGenerator.a("notification_story_position", this.b);
        }
        if (aj.b(this.c)) {
            jsonGenerator.a("notification_story_display_mode", this.c);
        }
        jsonGenerator.d();
    }
}
