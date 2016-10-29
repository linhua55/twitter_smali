package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import java.util.HashSet;
import java.util.Set;

public final class c {
    private Set<Scope> a;
    private boolean b;
    private boolean c;
    private boolean d;
    private String e;
    private Account f;
    private String g;

    public c() {
        this.a = new HashSet();
    }

    public c a() {
        this.a.add(GoogleSignInOptions.c);
        return this;
    }

    public c b() {
        this.a.add(GoogleSignInOptions.a);
        return this;
    }

    public GoogleSignInOptions c() {
        if (this.d && (this.f == null || !this.a.isEmpty())) {
            a();
        }
        return new GoogleSignInOptions(this.f, this.d, this.b, this.c, this.e, this.g, null);
    }
}
