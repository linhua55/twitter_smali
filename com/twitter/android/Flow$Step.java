package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentManager;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
abstract class Flow$Step implements Parcelable {
    protected WeakReference<AbsFragment> a;
    protected final Flow$Options b;
    protected String c;
    private final String d;
    private ValidationState e;

    public void a(ValidationState validationState) {
        this.e = validationState;
    }

    public ValidationState b() {
        return this.e;
    }

    AbsFragment a(h hVar) {
        throw new RuntimeException("You must override createView in subclass.");
    }

    protected Flow$Step() {
        this.c = "error";
        this.e = new ValidationState();
        this.d = getClass().getCanonicalName();
        this.b = new Flow$Options();
    }

    protected Flow$Step(Parcel parcel) {
        this.c = "error";
        this.e = new ValidationState();
        this.d = parcel.readString();
        this.e = new ValidationState(parcel);
        this.c = parcel.readString();
        this.b = new Flow$Options(parcel);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.d);
        this.e.writeToParcel(parcel, i);
        parcel.writeString(this.c);
        this.b.writeToParcel(parcel, i);
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass());
    }

    public int hashCode() {
        return getClass().hashCode();
    }

    public String c() {
        return this.d;
    }

    public boolean c(FlowData flowData) {
        return false;
    }

    public AbsFragment a(FragmentManager fragmentManager) {
        AbsFragment d = d();
        if (d == null) {
            d = (AbsFragment) fragmentManager.findFragmentByTag(this.d);
            if (d != null) {
                a(d);
            }
        }
        return d;
    }

    public boolean b(FragmentManager fragmentManager) {
        AbsFragment a = a(fragmentManager);
        return a != null && a.ad();
    }

    public AbsFragment d() {
        return this.a != null ? (AbsFragment) this.a.get() : null;
    }

    public void a(AbsFragment absFragment) {
        this.a = new WeakReference(absFragment);
    }

    public Flow$Step b(FlowData flowData) {
        return null;
    }

    public boolean a(FlowData flowData) {
        return false;
    }

    public boolean a() {
        return false;
    }

    public final boolean e() {
        return this.b.d;
    }

    public boolean a(gb gbVar) {
        return false;
    }

    public void b(gb gbVar) {
    }

    public Flow$Options f() {
        return this.b;
    }
}
