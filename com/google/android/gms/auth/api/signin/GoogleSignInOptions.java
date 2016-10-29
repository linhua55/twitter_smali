package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

public class GoogleSignInOptions implements f, SafeParcelable {
    public static final Creator<GoogleSignInOptions> CREATOR;
    public static final Scope a;
    public static final Scope b;
    public static final Scope c;
    public static final GoogleSignInOptions d;
    private static Comparator<Scope> m;
    final int e;
    private final ArrayList<Scope> f;
    private Account g;
    private boolean h;
    private final boolean i;
    private final boolean j;
    private String k;
    private String l;

    static {
        a = new Scope("profile");
        b = new Scope("email");
        c = new Scope("openid");
        d = new c().a().b().c();
        CREATOR = new f();
        m = new b();
    }

    GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.e = i;
        this.f = arrayList;
        this.g = account;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = str;
        this.l = str2;
    }

    private GoogleSignInOptions(Set<Scope> set, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this(2, new ArrayList(set), account, z, z2, z3, str, str2);
    }

    public ArrayList<Scope> a() {
        return new ArrayList(this.f);
    }

    public Account b() {
        return this.g;
    }

    public boolean c() {
        return this.h;
    }

    public boolean d() {
        return this.i;
    }

    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.j;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f.size() != googleSignInOptions.a().size() || !this.f.containsAll(googleSignInOptions.a())) {
                return false;
            }
            if (this.g == null) {
                if (googleSignInOptions.b() != null) {
                    return false;
                }
            } else if (!this.g.equals(googleSignInOptions.b())) {
                return false;
            }
            if (TextUtils.isEmpty(this.k)) {
                if (!TextUtils.isEmpty(googleSignInOptions.f())) {
                    return false;
                }
            } else if (!this.k.equals(googleSignInOptions.f())) {
                return false;
            }
            return this.j == googleSignInOptions.e() && this.h == googleSignInOptions.c() && this.i == googleSignInOptions.d();
        } catch (ClassCastException e) {
            return false;
        }
    }

    public String f() {
        return this.k;
    }

    public String g() {
        return this.l;
    }

    public int hashCode() {
        Object arrayList = new ArrayList();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            arrayList.add(((Scope) it.next()).a());
        }
        Collections.sort(arrayList);
        return new a().a(arrayList).a(this.g).a(this.k).a(this.j).a(this.h).a(this.i).a();
    }

    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}
