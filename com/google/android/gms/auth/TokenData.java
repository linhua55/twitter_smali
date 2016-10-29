package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class TokenData implements SafeParcelable {
    public static final h CREATOR;
    final int a;
    private final String b;
    private final Long c;
    private final boolean d;
    private final boolean e;
    private final List<String> f;

    static {
        CREATOR = new h();
    }

    TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.a = i;
        this.b = bm.a(str);
        this.c = l;
        this.d = z;
        this.e = z2;
        this.f = list;
    }

    @Nullable
    public static TokenData a(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public String a() {
        return this.b;
    }

    @Nullable
    public Long b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public List<String> e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.b, tokenData.b) && bj.a(this.c, tokenData.c) && this.d == tokenData.d && this.e == tokenData.e && bj.a(this.f, tokenData.f);
    }

    public int hashCode() {
        return bj.a(this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), this.f);
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}
