package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import defpackage.op;

/* compiled from: Twttr */
public class PsProfileImageUrl implements Parcelable {
    public static final Creator CREATOR;
    public int height;
    @op(a = "ssl_url")
    public String url;
    public int width;

    public PsProfileImageUrl(String str) {
        this.url = str;
    }

    public PsProfileImageUrl(Parcel parcel) {
        this.url = parcel.readString();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }

    static {
        CREATOR = new 1();
    }
}
