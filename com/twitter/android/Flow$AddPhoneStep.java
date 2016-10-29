package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.AddPhonePinEntryStep;
import com.twitter.android.Flow.UsernameEntryStep;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;
import com.twitter.util.aj;

/* compiled from: Twttr */
class Flow$AddPhoneStep extends Flow$Step {
    public static final Creator<Flow$AddPhoneStep> CREATOR;

    static {
        CREATOR = new fo();
    }

    protected Flow$AddPhoneStep(Parcel parcel) {
        super(parcel);
    }

    Flow$AddPhoneStep() {
        this.c = "phone100_phone_optional";
        this.b.b = true;
        this.b.c = 2131363169;
        this.b.d = true;
    }

    AbsFragment a(h hVar) {
        hVar.a("is_phone100_add_phone", true).a("extra_inline_validation_enabled", true);
        return Flow.a(new PhoneEntryFragment(), hVar.c());
    }

    public boolean a(FlowData flowData) {
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) d();
        if (phoneEntryFragment != null) {
            phoneEntryFragment.h();
        }
        return true;
    }

    public boolean a() {
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) d();
        if (phoneEntryFragment != null) {
            phoneEntryFragment.g();
        }
        return true;
    }

    public Flow$Step b(FlowData flowData) {
        return (flowData.i() || aj.a(flowData.b())) ? new UsernameEntryStep() : new AddPhonePinEntryStep();
    }

    public boolean c(FlowData flowData) {
        return flowData.i();
    }

    public boolean a(gb gbVar) {
        return gbVar.c != null;
    }

    public void b(gb gbVar) {
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) d();
        if (phoneEntryFragment != null) {
            phoneEntryFragment.a(gbVar);
        }
    }
}
