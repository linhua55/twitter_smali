package com.twitter.android.profilecompletionmodule;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaFile;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.util.ab;
import defpackage.bbu;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class ProfileCompletionModulePendingChanges implements Parcelable {
    public static final Creator<ProfileCompletionModulePendingChanges> CREATOR;
    private MediaFile a;
    private MediaFile b;
    private String c;
    private ExtendedProfile d;
    private String e;
    private TwitterPlace f;

    static {
        CREATOR = new z();
    }

    public ProfileCompletionModulePendingChanges(Parcel parcel) {
        this.a = (MediaFile) parcel.readParcelable(MediaFile.class.getClassLoader());
        this.b = (MediaFile) parcel.readParcelable(MediaFile.class.getClassLoader());
        this.c = parcel.readString();
        this.d = (ExtendedProfile) ab.a(parcel, ExtendedProfile.a);
        this.e = parcel.readString();
        this.f = (TwitterPlace) ab.a(parcel, TwitterPlace.a);
    }

    public MediaFile a() {
        return this.a;
    }

    public void a(MediaFile mediaFile) {
        this.a = mediaFile;
    }

    public MediaFile b() {
        return this.b;
    }

    public void b(MediaFile mediaFile) {
        this.b = mediaFile;
    }

    public String c() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public ExtendedProfile d() {
        return this.d;
    }

    public void a(ExtendedProfile extendedProfile) {
        this.d = extendedProfile;
    }

    public String e() {
        return this.e;
    }

    public void b(String str) {
        this.e = str;
    }

    public TwitterPlace f() {
        return this.f;
    }

    public void a(TwitterPlace twitterPlace) {
        this.f = twitterPlace;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeString(this.c);
        ab.a(parcel, this.d, ExtendedProfile.a);
        parcel.writeString(this.e);
        ab.a(parcel, this.f, TwitterPlace.a);
    }

    public boolean g() {
        return (this.a == null && this.b == null && this.c == null && this.d == null && this.e == null && this.f == null) ? false : true;
    }

    public void a(long j, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            arrayList.add("avatar");
        }
        if (this.b != null) {
            arrayList.add("header");
        }
        if (this.c != null) {
            arrayList.add("bio");
        }
        if (this.d != null) {
            arrayList.add("birthday");
        }
        if (this.e != null) {
            arrayList.add("location");
        }
        if (this.f != null) {
            arrayList.add("structured_location");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            bbu.a(new TwitterScribeLog(j).b(str, str2, null, str3, "change"));
        }
    }
}
