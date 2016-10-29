package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

final class b implements Comparator<Scope> {
    b() {
    }

    public int a(Scope scope, Scope scope2) {
        return scope.a().compareTo(scope2.a());
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Scope) obj, (Scope) obj2);
    }
}
