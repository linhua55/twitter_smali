package com.twitter.android.news;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.scribe.ScribeItem;
import java.io.IOException;

/* compiled from: Twttr */
class NewsDetailScribeItem extends ScribeItem {
    public static final Creator<NewsDetailScribeItem> CREATOR;
    public String a;

    static {
        CREATOR = new m();
    }

    protected NewsDetailScribeItem(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
    }

    NewsDetailScribeItem(String str) {
        this.a = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
    }

    protected void a(JsonGenerator jsonGenerator) throws IOException {
        if (this.a != null) {
            jsonGenerator.a("url", this.a);
        }
    }
}
