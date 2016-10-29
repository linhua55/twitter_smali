package com.twitter.model.search;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.av;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class TwitterUserMetadata implements Parcelable {
    public static final Creator<TwitterUserMetadata> CREATOR;
    public final TwitterSocialProof a;
    public final av b;
    public final String c;
    public final String d;
    public final boolean e;

    static {
        CREATOR = new r();
    }

    public TwitterUserMetadata(TwitterSocialProof twitterSocialProof, String str, String str2, boolean z, av avVar) {
        this.a = twitterSocialProof;
        this.b = avVar;
        this.c = str;
        this.d = str2;
        this.e = z;
    }

    public TwitterUserMetadata(Parcel parcel) {
        this.a = (TwitterSocialProof) parcel.readParcelable(getClass().getClassLoader());
        this.b = (av) ab.a(parcel, av.a);
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readInt() == 1;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        ab.a(parcel, this.b, av.a);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e ? 1 : 0);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TwitterUserMetadata twitterUserMetadata = (TwitterUserMetadata) obj;
        if (this.e != twitterUserMetadata.e) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.a(twitterUserMetadata.a)) {
                return false;
            }
        } else if (twitterUserMetadata.a != null) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(twitterUserMetadata.c)) {
                return false;
            }
        } else if (twitterUserMetadata.c != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(twitterUserMetadata.d)) {
                return false;
            }
        } else if (twitterUserMetadata.d != null) {
            return false;
        }
        return ObjectUtils.a(this.b, twitterUserMetadata.b);
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = (this.a != null ? this.a.hashCode() : 0) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.e) {
            i = 1;
        }
        return ((hashCode + i) * 31) + ObjectUtils.b(this.b);
    }
}
