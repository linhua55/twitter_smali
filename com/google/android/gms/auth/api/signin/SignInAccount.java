package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class SignInAccount implements SafeParcelable {
    public static final Creator<SignInAccount> CREATOR;
    final int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private Uri f;
    private GoogleSignInAccount g;
    private String h;
    private String i;

    static {
        CREATOR = new g();
    }

    SignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, GoogleSignInAccount googleSignInAccount, String str5, String str6) {
        this.a = i;
        this.d = bm.a(str3, "Email cannot be empty.");
        this.e = str4;
        this.f = uri;
        this.b = str;
        this.c = str2;
        this.g = googleSignInAccount;
        this.h = bm.a(str5);
        this.i = str6;
    }

    public String a() {
        return this.c;
    }

    public String b() {
        return this.d;
    }

    public String c() {
        return this.e;
    }

    public Uri d() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public GoogleSignInAccount e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public String g() {
        return this.i;
    }

    String h() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}
