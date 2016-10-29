package com.twitter.android;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.PinEntryStep;
import com.twitter.android.Flow.PinWaitingStep;
import com.twitter.android.FlowData.SignupState;
import com.twitter.android.util.aq;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;

/* compiled from: Twttr */
class Flow$PhoneSignupStep extends Flow$Step {
    public static final Creator<Flow$PhoneSignupStep> CREATOR;

    static {
        CREATOR = new fu();
    }

    protected Flow$PhoneSignupStep(Parcel parcel) {
        super(parcel);
    }

    Flow$PhoneSignupStep() {
        this.c = "phone100_enter_phone";
    }

    AbsFragment a(h hVar) {
        hVar.a("is_phone_signup", true).a("extra_inline_validation_enabled", true);
        return Flow.a(new PhoneEntryFragment(), hVar.c());
    }

    public Flow$Step b(FlowData flowData) {
        Object obj;
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) d();
        if (phoneEntryFragment != null) {
            Context context = phoneEntryFragment.getContext();
            obj = (context == null || !aq.a(context).f()) ? null : 1;
        } else {
            obj = null;
        }
        if (flowData.j() == SignupState.SIGN_UP_COMPLETE) {
            return new Flow$PasswordEntryStep();
        }
        if (obj != null) {
            return new PinWaitingStep();
        }
        return new PinEntryStep();
    }

    public boolean a(FlowData flowData) {
        PhoneEntryFragment phoneEntryFragment = (PhoneEntryFragment) d();
        if (phoneEntryFragment != null) {
            phoneEntryFragment.b();
        }
        return true;
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
