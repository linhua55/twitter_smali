package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.o;
import com.google.android.gms.internal.xe;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class w {
    private final Account a;
    private final Set<Scope> b;
    private final Set<Scope> c;
    private final Map<a<?>, x> d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final xe i;
    private Integer j;

    public w(Account account, Set<Scope> set, Map<a<?>, x> map, int i, View view, String str, String str2, xe xeVar) {
        Map map2;
        this.a = account;
        this.b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        if (map == null) {
            map2 = Collections.EMPTY_MAP;
        }
        this.d = map2;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = xeVar;
        Set hashSet = new HashSet(this.b);
        for (x xVar : this.d.values()) {
            hashSet.addAll(xVar.a);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static w a(Context context) {
        return new o(context).a();
    }

    public Account a() {
        return this.a;
    }

    public void a(Integer num) {
        this.j = num;
    }

    public Account b() {
        return this.a != null ? this.a : new Account("<<default account>>", "com.google");
    }

    public Set<Scope> c() {
        return this.b;
    }

    public Set<Scope> d() {
        return this.c;
    }

    public Map<a<?>, x> e() {
        return this.d;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.h;
    }

    public xe h() {
        return this.i;
    }

    public Integer i() {
        return this.j;
    }
}
