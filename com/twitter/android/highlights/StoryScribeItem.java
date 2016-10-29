package com.twitter.android.highlights;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.android.client.notifications.ae;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.model.core.Tweet;
import java.io.IOException;

/* compiled from: Twttr */
public class StoryScribeItem extends ScribeItem {
    public static final Creator<StoryScribeItem> CREATOR;
    public RichNotificationScribeDetails a;
    public RichNotificationStoryScribeDetails b;
    public String c;
    public String d;
    public long e;

    static {
        CREATOR = new an();
    }

    public StoryScribeItem a(int i, int i2) {
        this.a = new RichNotificationScribeDetails();
        this.a.a = i;
        this.a.b = i2;
        return this;
    }

    public StoryScribeItem a(boolean z) {
        if (this.b == null) {
            this.b = new RichNotificationStoryScribeDetails();
        }
        this.b.c = z ? "expanded" : "collapsed";
        return this;
    }

    public StoryScribeItem a(ae aeVar, boolean z, int i) {
        a(z);
        this.c = aeVar.a;
        this.b.a = aeVar.b;
        this.b.b = i;
        this.d = aeVar.c;
        return this;
    }

    public static StoryScribeItem a(String str) {
        StoryScribeItem storyScribeItem = new StoryScribeItem();
        storyScribeItem.c = str;
        return storyScribeItem;
    }

    public static StoryScribeItem a(as asVar) {
        if (asVar instanceof bp) {
            return a(asVar, ((bp) asVar).b);
        }
        StoryScribeItem b;
        if (asVar instanceof e) {
            b = b(asVar);
            b.e = ((e) asVar).a.bf_();
            return b;
        } else if (!(asVar instanceof x)) {
            return b(asVar);
        } else {
            b = b(asVar);
            b.e = ((x) asVar).a.bf_();
            return b;
        }
    }

    public static StoryScribeItem a(as asVar, Tweet tweet) {
        StoryScribeItem b = b(asVar);
        b.e = tweet.H;
        return b;
    }

    private static StoryScribeItem b(as asVar) {
        StoryScribeItem storyScribeItem = new StoryScribeItem();
        storyScribeItem.c = asVar.e;
        storyScribeItem.b = new RichNotificationStoryScribeDetails();
        storyScribeItem.b.a = asVar.h;
        storyScribeItem.b.b = asVar.j;
        storyScribeItem.b.c = asVar.b();
        storyScribeItem.d = asVar.i;
        return storyScribeItem;
    }

    public StoryScribeItem() {
        this.e = -1;
    }

    protected StoryScribeItem(Parcel parcel) {
        super(parcel);
        this.e = -1;
        this.a = (RichNotificationScribeDetails) parcel.readParcelable(RichNotificationScribeDetails.class.getClassLoader());
        this.b = (RichNotificationStoryScribeDetails) parcel.readParcelable(RichNotificationStoryScribeDetails.class.getClassLoader());
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readLong();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeLong(this.e);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        if (this.a != null) {
            jsonGenerator.a("notification_details");
            this.a.a(jsonGenerator);
        }
        if (this.b != null) {
            jsonGenerator.a("notification_story_details");
            this.b.a(jsonGenerator);
        }
        if (this.c != null) {
            jsonGenerator.a("description", this.c);
        }
        if (this.d != null) {
            jsonGenerator.a("token", this.d);
        }
        if (this.e != -1) {
            jsonGenerator.a("id", this.e);
        }
    }
}
