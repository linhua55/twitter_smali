package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.EmailSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class SignInConfiguration implements SafeParcelable {
    public static final Creator<SignInConfiguration> CREATOR;
    final int a;
    private final String b;
    private String c;
    private EmailSignInOptions d;
    private GoogleSignInOptions e;
    private String f;

    static {
        CREATOR = new b();
    }

    SignInConfiguration(int i, String str, String str2, EmailSignInOptions emailSignInOptions, GoogleSignInOptions googleSignInOptions, String str3) {
        this.a = i;
        this.b = bm.a(str);
        this.c = str2;
        this.d = emailSignInOptions;
        this.e = googleSignInOptions;
        this.f = str3;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public EmailSignInOptions c() {
        return this.d;
    }

    public GoogleSignInOptions d() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    public String e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (!this.b.equals(signInConfiguration.a())) {
                return false;
            }
            if (TextUtils.isEmpty(this.c)) {
                if (!TextUtils.isEmpty(signInConfiguration.b())) {
                    return false;
                }
            } else if (!this.c.equals(signInConfiguration.b())) {
                return false;
            }
            if (TextUtils.isEmpty(this.f)) {
                if (!TextUtils.isEmpty(signInConfiguration.e())) {
                    return false;
                }
            } else if (!this.f.equals(signInConfiguration.e())) {
                return false;
            }
            if (this.d == null) {
                if (signInConfiguration.c() != null) {
                    return false;
                }
            } else if (!this.d.equals(signInConfiguration.c())) {
                return false;
            }
            if (this.e == null) {
                if (signInConfiguration.d() != null) {
                    return false;
                }
            } else if (!this.e.equals(signInConfiguration.d())) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return new a().a(this.b).a(this.c).a(this.f).a(this.d).a(this.e).a();
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}
