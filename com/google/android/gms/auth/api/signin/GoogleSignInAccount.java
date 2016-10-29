package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.vl;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount implements SafeParcelable {
    public static final Creator<GoogleSignInAccount> CREATOR;
    public static vj a;
    private static Comparator<Scope> l;
    final int b;
    List<Scope> c;
    private String d;
    private String e;
    private String f;
    private String g;
    private Uri h;
    private String i;
    private long j;
    private String k;

    static {
        CREATOR = new e();
        a = vl.d();
        l = new a();
    }

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list) {
        this.b = i;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = uri;
        this.i = str5;
        this.j = j;
        this.k = str6;
        this.c = list;
    }

    @Nullable
    public static GoogleSignInAccount a(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        Object optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        Set hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return a(jSONObject.optString(TtmlNode.ATTR_ID), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).b(jSONObject.optString("serverAuthCode", null));
    }

    public static GoogleSignInAccount a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Uri uri, @Nullable Long l, @NonNull String str5, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(a.a() / 1000);
        }
        return new GoogleSignInAccount(2, str, str2, str3, str4, uri, null, l.longValue(), bm.a(str5), new ArrayList((Collection) bm.a(set)));
    }

    private JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (a() != null) {
                jSONObject.put(TtmlNode.ATTR_ID, a());
            }
            if (b() != null) {
                jSONObject.put("tokenId", b());
            }
            if (c() != null) {
                jSONObject.put("email", c());
            }
            if (d() != null) {
                jSONObject.put("displayName", d());
            }
            if (e() != null) {
                jSONObject.put("photoUrl", e().toString());
            }
            if (f() != null) {
                jSONObject.put("serverAuthCode", f());
            }
            jSONObject.put("expirationTime", this.j);
            jSONObject.put("obfuscatedIdentifier", h());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.c, l);
            for (Scope a : this.c) {
                jSONArray.put(a.a());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public String a() {
        return this.d;
    }

    public GoogleSignInAccount b(String str) {
        this.i = str;
        return this;
    }

    @Nullable
    public String b() {
        return this.e;
    }

    @Nullable
    public String c() {
        return this.f;
    }

    @Nullable
    public String d() {
        return this.g;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public Uri e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        return !(obj instanceof GoogleSignInAccount) ? false : ((GoogleSignInAccount) obj).i().equals(i());
    }

    @Nullable
    public String f() {
        return this.i;
    }

    public long g() {
        return this.j;
    }

    @NonNull
    public String h() {
        return this.k;
    }

    public String i() {
        return j().toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
