package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.android.gms.auth.api.signin.internal.a;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class EmailSignInOptions implements SafeParcelable {
    public static final Creator<EmailSignInOptions> CREATOR;
    final int a;
    private final Uri b;
    private String c;
    private Uri d;

    static {
        CREATOR = new d();
    }

    EmailSignInOptions(int i, Uri uri, String str, Uri uri2) {
        bm.a(uri, "Server widget url cannot be null in order to use email/password sign in.");
        bm.a(uri.toString(), "Server widget url cannot be null in order to use email/password sign in.");
        bm.b(Patterns.WEB_URL.matcher(uri.toString()).matches(), "Invalid server widget url");
        this.a = i;
        this.b = uri;
        this.c = str;
        this.d = uri2;
    }

    public Uri a() {
        return this.b;
    }

    public Uri b() {
        return this.d;
    }

    public String c() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            EmailSignInOptions emailSignInOptions = (EmailSignInOptions) obj;
            if (!this.b.equals(emailSignInOptions.a())) {
                return false;
            }
            if (this.d == null) {
                if (emailSignInOptions.b() != null) {
                    return false;
                }
            } else if (!this.d.equals(emailSignInOptions.b())) {
                return false;
            }
            if (TextUtils.isEmpty(this.c)) {
                if (!TextUtils.isEmpty(emailSignInOptions.c())) {
                    return false;
                }
            } else if (!this.c.equals(emailSignInOptions.c())) {
                return false;
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return new a().a(this.b).a(this.d).a(this.c).a();
    }

    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}
