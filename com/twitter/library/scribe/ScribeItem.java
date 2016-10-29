package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class ScribeItem implements Parcelable {
    protected abstract void a(JsonGenerator jsonGenerator) throws IOException;

    protected ScribeItem() {
    }

    protected ScribeItem(Parcel parcel) {
    }

    public void b(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        a(jsonGenerator);
        jsonGenerator.d();
    }

    public int describeContents() {
        return 0;
    }
}
