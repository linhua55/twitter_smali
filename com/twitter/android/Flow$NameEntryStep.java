package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;

/* compiled from: Twttr */
class Flow$NameEntryStep extends Flow$Step {
    public static final Creator<Flow$NameEntryStep> CREATOR;

    static {
        CREATOR = new fr();
    }

    protected Flow$NameEntryStep(Parcel parcel) {
        super(parcel);
    }

    Flow$NameEntryStep() {
        this.c = "phone100_enter_full_name";
    }

    AbsFragment a(h hVar) {
        return Flow.a(new NameEntryFragment(), hVar.c());
    }

    public Flow$Step b(FlowData flowData) {
        return flowData.g() ? new Flow$EmailSignupStep() : new Flow$PhoneSignupStep();
    }

    public boolean a(FlowData flowData) {
        NameEntryFragment nameEntryFragment = (NameEntryFragment) d();
        if (nameEntryFragment != null) {
            nameEntryFragment.b();
        }
        return true;
    }

    public boolean a(gb gbVar) {
        return gbVar.a != null;
    }

    public void b(gb gbVar) {
        NameEntryFragment nameEntryFragment = (NameEntryFragment) d();
        if (nameEntryFragment != null) {
            nameEntryFragment.a(gbVar);
        }
    }
}
