package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.AddEmailStep;
import com.twitter.android.Flow.UsernameEntryStep;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;

/* compiled from: Twttr */
class Flow$PasswordEntryStep extends Flow$Step {
    public static final Creator<Flow$PasswordEntryStep> CREATOR;

    static {
        CREATOR = new ft();
    }

    protected Flow$PasswordEntryStep(Parcel parcel) {
        super(parcel);
    }

    Flow$PasswordEntryStep() {
        this.c = "phone100_change_password";
        this.b.d = true;
    }

    AbsFragment a(h hVar) {
        return Flow.a(new PasswordEntryFragment(), hVar.c());
    }

    public boolean a(FlowData flowData) {
        PasswordEntryFragment passwordEntryFragment = (PasswordEntryFragment) d();
        if (passwordEntryFragment != null) {
            passwordEntryFragment.a(flowData.e());
        }
        return true;
    }

    public boolean a() {
        PasswordEntryFragment passwordEntryFragment = (PasswordEntryFragment) d();
        if (passwordEntryFragment != null) {
            passwordEntryFragment.b();
        }
        return true;
    }

    public Flow$Step b(FlowData flowData) {
        if (!flowData.g()) {
            return new AddEmailStep();
        }
        if (flowData.i()) {
            return new UsernameEntryStep();
        }
        return new Flow$AddPhoneStep();
    }
}
