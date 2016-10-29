package com.twitter.library.commerce.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

/* compiled from: Twttr */
public class ServerError implements Parcelable {
    public static final Creator<ServerError> CREATOR;
    private final String a;
    private final String b;
    private final ServerErrorType c;

    static {
        CREATOR = new ar();
    }

    private ServerError(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = ServerErrorType.a(parcel.readInt());
    }

    public ServerError(String str, String str2, ServerErrorType serverErrorType) {
        this.a = str;
        this.b = str2;
        this.c = serverErrorType;
    }

    public String a() {
        return this.b;
    }

    public ServerErrorType b() {
        return this.c;
    }

    public String toString() {
        return "ServerError{mMessage='" + this.a + '\'' + ", mRefId='" + this.b + '\'' + ", mErrorcode=" + this.c + '}';
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c.a());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServerError)) {
            return false;
        }
        ServerError serverError = (ServerError) obj;
        if (this.a != null) {
            if (!this.a.equals(serverError.a)) {
                return false;
            }
        } else if (serverError.a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(serverError.b)) {
                return false;
            }
        } else if (serverError.b != null) {
            return false;
        }
        if (this.c.a() != serverError.c.a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.a();
    }
}
