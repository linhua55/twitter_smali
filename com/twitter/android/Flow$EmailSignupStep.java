package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;

/* compiled from: Twttr */
class Flow$EmailSignupStep extends Flow$Step {
    public static final Creator<Flow$EmailSignupStep> CREATOR;

    static {
        CREATOR = new fp();
    }

    protected Flow$EmailSignupStep(Parcel parcel) {
        super(parcel);
    }

    Flow$EmailSignupStep() {
        this.c = "phone100_enter_email";
    }

    AbsFragment a(h hVar) {
        hVar.b("phone_100_step", "email_signup");
        return Flow.a(new EmailEntryFragment(), hVar.c());
    }

    public Flow$Step b(FlowData flowData) {
        return new Flow$PasswordEntryStep();
    }

    public boolean a(FlowData flowData) {
        EmailEntryFragment emailEntryFragment = (EmailEntryFragment) d();
        if (emailEntryFragment != null) {
            emailEntryFragment.c();
        }
        return true;
    }

    public boolean a(gb gbVar) {
        return gbVar.b != null;
    }

    public void b(gb gbVar) {
        EmailEntryFragment emailEntryFragment = (EmailEntryFragment) d();
        if (emailEntryFragment != null) {
            emailEntryFragment.a(gbVar);
        }
    }
}
