package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.FlowData.SignupState;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.h;
import com.twitter.library.client.AbsFragment;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class Flow {

    /* compiled from: Twttr */
    class AddEmailStep extends Step {
        public static final Creator<AddEmailStep> CREATOR;

        static {
            CREATOR = new fm();
        }

        protected AddEmailStep(Parcel parcel) {
            super(parcel);
        }

        AddEmailStep() {
            this.c = "phone100_email_optional";
            this.b.b = true;
            this.b.c = 2131363169;
            this.b.d = true;
        }

        AbsFragment a(h hVar) {
            hVar.b("phone_100_step", "add_email");
            return Flow.a(new EmailEntryFragment(), hVar.c());
        }

        public boolean a(FlowData flowData) {
            EmailEntryFragment emailEntryFragment = (EmailEntryFragment) d();
            if (emailEntryFragment != null) {
                emailEntryFragment.a(flowData.e());
            }
            return true;
        }

        public boolean a() {
            EmailEntryFragment emailEntryFragment = (EmailEntryFragment) d();
            if (emailEntryFragment != null) {
                emailEntryFragment.g();
            }
            return true;
        }

        public Step b(FlowData flowData) {
            return new UsernameEntryStep();
        }

        public boolean c(FlowData flowData) {
            return aj.a(flowData.e());
        }
    }

    /* compiled from: Twttr */
    class AddPhonePinEntryStep extends Step {
        public static final Creator<AddPhonePinEntryStep> CREATOR;

        static {
            CREATOR = new fn();
        }

        protected AddPhonePinEntryStep(Parcel parcel) {
            super(parcel);
        }

        AddPhonePinEntryStep() {
            this.c = "phone100_phone_optional_verify";
            this.b.a = false;
            this.b.b = true;
            this.b.c = 2131363304;
        }

        AbsFragment a(h hVar) {
            hVar.a("should_intercept_pin", true).a("phone100_flow", true).a("phone100_add_phone_flow", true);
            return Flow.a(new ManualEntryPinFragment(), hVar.c());
        }

        public boolean a() {
            ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) d();
            if (manualEntryPinFragment != null) {
                manualEntryPinFragment.c();
            }
            return true;
        }

        public boolean a(gb gbVar) {
            return gbVar.f != null;
        }

        public void b(gb gbVar) {
            ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) d();
            if (manualEntryPinFragment != null) {
                manualEntryPinFragment.b(gbVar.f);
            }
        }

        public Step b(FlowData flowData) {
            return new UsernameEntryStep();
        }
    }

    /* compiled from: Twttr */
    class GladYouAreHereStep extends Step {
        public static final Creator<GladYouAreHereStep> CREATOR;

        static {
            CREATOR = new fq();
        }

        protected GladYouAreHereStep(Parcel parcel) {
            super(parcel);
        }

        GladYouAreHereStep() {
            this.c = "phone100_glad_you_are_here";
            this.b.e = false;
            this.b.f = false;
            this.b.d = true;
        }

        AbsFragment a(h hVar) {
            return Flow.a(new GladYouAreHereFragment(), hVar.c());
        }

        public boolean a(FlowData flowData) {
            GladYouAreHereFragment gladYouAreHereFragment = (GladYouAreHereFragment) d();
            if (gladYouAreHereFragment != null) {
                gladYouAreHereFragment.b();
            }
            return true;
        }
    }

    /* compiled from: Twttr */
    class PinEntryStep extends Step {
        public static final Creator<PinEntryStep> CREATOR;

        static {
            CREATOR = new fv();
        }

        protected PinEntryStep(Parcel parcel) {
            super(parcel);
        }

        PinEntryStep() {
            this.c = "phone100_verify_phone";
            this.b.a = true;
            this.b.b = true;
            this.b.c = 2131363304;
        }

        public boolean a(gb gbVar) {
            return gbVar.f != null;
        }

        public void b(gb gbVar) {
            ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) d();
            if (gbVar.f != null && manualEntryPinFragment != null) {
                manualEntryPinFragment.b(gbVar.f);
            }
        }

        public boolean a() {
            ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) d();
            if (manualEntryPinFragment != null) {
                manualEntryPinFragment.b();
            }
            return true;
        }

        public boolean a(FlowData flowData) {
            ManualEntryPinFragment manualEntryPinFragment = (ManualEntryPinFragment) d();
            if (manualEntryPinFragment != null) {
                manualEntryPinFragment.g();
            }
            return true;
        }

        AbsFragment a(h hVar) {
            hVar.a("should_intercept_pin", true).a("phone100_flow", true);
            return Flow.a(new ManualEntryPinFragment(), hVar.c());
        }

        public Step b(FlowData flowData) {
            return new PasswordEntryStep();
        }
    }

    /* compiled from: Twttr */
    class PinWaitingStep extends Step {
        public static final Creator<PinWaitingStep> CREATOR;

        static {
            CREATOR = new fw();
        }

        protected PinWaitingStep(Parcel parcel) {
            super(parcel);
        }

        PinWaitingStep() {
            this.c = "phone100_verify_phone_waiting";
            this.b.f = false;
            this.b.e = false;
        }

        AbsFragment a(h hVar) {
            hVar.a("should_intercept_pin", true).a("is_phone100_flow", true);
            return Flow.a(new PinWaitingFragment(), hVar.c());
        }

        public Step b(FlowData flowData) {
            return flowData.j() == SignupState.d ? new PasswordEntryStep() : new PinEntryStep();
        }
    }

    /* compiled from: Twttr */
    class UsernameEntryStep extends Step {
        public static final Creator<UsernameEntryStep> CREATOR;

        static {
            CREATOR = new fx();
        }

        protected UsernameEntryStep(Parcel parcel) {
            super(parcel);
        }

        UsernameEntryStep() {
            this.c = "phone100_enter_username";
            this.b.b = true;
            this.b.c = 2131363169;
            this.b.d = true;
        }

        AbsFragment a(h hVar) {
            return Flow.a(new UsernameEntryFragment(), hVar.c());
        }

        public boolean a(FlowData flowData) {
            UsernameEntryFragment usernameEntryFragment = (UsernameEntryFragment) d();
            if (usernameEntryFragment != null) {
                usernameEntryFragment.c();
            }
            return true;
        }

        public Step b(FlowData flowData) {
            if (flowData.m()) {
                return null;
            }
            return new GladYouAreHereStep();
        }
    }

    static AbsFragment a(AbsFragment absFragment, g gVar) {
        absFragment.setRetainInstance(true);
        absFragment.a(gVar);
        return absFragment;
    }
}
