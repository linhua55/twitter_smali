package com.twitter.android.moments.viewmodels;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.moments.MomentGuideSectionType;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class MomentGuideSection implements Parcelable, Iterable<MomentModule> {
    public static final Creator<MomentGuideSection> CREATOR;
    private final String a;
    private final MomentGuideSectionType b;
    private final List<MomentModule> c;
    private final String d;
    private final String e;
    private final String f;

    static {
        CREATOR = new r();
    }

    public MomentGuideSection(s sVar) {
        this.a = sVar.a;
        this.b = sVar.b;
        this.c = sVar.c;
        this.d = sVar.d;
        this.e = sVar.e;
        this.f = sVar.f;
    }

    public MomentGuideSection(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (MomentGuideSectionType) parcel.readSerializable();
        this.c = Arrays.asList((MomentModule[]) parcel.readParcelableArray(MomentModule.class.getClassLoader()));
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeSerializable(this.b);
        parcel.writeParcelableArray((Parcelable[]) this.c.toArray(new Parcelable[this.c.size()]), i);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }

    public List<MomentModule> a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public Iterator<MomentModule> iterator() {
        return this.c.iterator();
    }
}
