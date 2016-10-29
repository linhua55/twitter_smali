package com.twitter.model.media.foundmedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.serialization.n;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class FoundMediaOrigin implements Parcelable {
    public static final Creator<FoundMediaOrigin> CREATOR;
    public static final n<FoundMediaOrigin> a;
    public final String b;
    public final String c;

    static {
        a = new j();
        CREATOR = new i();
    }

    protected FoundMediaOrigin(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
    }

    public FoundMediaOrigin(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.b);
            jSONObject.put("provider", this.c);
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }
}
