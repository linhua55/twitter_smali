package com.twitter.android;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.android.Flow.EmailSignupStep;

/* compiled from: Twttr */
final class fp implements Creator<EmailSignupStep> {
    fp() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public EmailSignupStep a(Parcel parcel) {
        return new EmailSignupStep(parcel);
    }

    public EmailSignupStep[] a(int i) {
        return new EmailSignupStep[i];
    }
}
