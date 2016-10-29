package com.twitter.library.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.client.UrlConfiguration;

/* compiled from: Twttr */
public class ClientConfiguration implements Parcelable {
    public static final Creator<ClientConfiguration> CREATOR;
    public final UrlConfiguration a;
    public final al b;

    static {
        CREATOR = new p();
    }

    public ClientConfiguration(UrlConfiguration urlConfiguration, al alVar) {
        this.a = urlConfiguration;
        this.b = alVar;
    }

    public ClientConfiguration(Parcel parcel) {
        this.a = new UrlConfiguration(parcel);
        this.b = new al(parcel.readString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.a.writeToParcel(parcel, i);
        parcel.writeString(this.b.toString());
    }
}
