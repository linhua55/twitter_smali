package com.twitter.library.api.activity;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.scribe.ScribeItem;
import java.io.IOException;

/* compiled from: Twttr */
public class ActivityAggregationScribeItem extends ScribeItem {
    public static final Creator<ActivityAggregationScribeItem> CREATOR;
    public final int a;

    static {
        CREATOR = new a();
    }

    public ActivityAggregationScribeItem(int i) {
        this.a = i;
    }

    public ActivityAggregationScribeItem(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a("activityEventType", this.a);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
    }
}
