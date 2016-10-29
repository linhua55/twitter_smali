package com.twitter.app.common.inject;

import android.os.Bundle;
import android.os.Parcelable;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class t {
    public static final t a;
    private final Bundle b;

    static {
        a = new t(null);
    }

    public static t a(Bundle bundle) {
        return bundle != null ? new t(bundle) : a;
    }

    private t(Bundle bundle) {
        this.b = bundle;
    }

    public <S> S a(String str) {
        return this.b != null ? ObjectUtils.a(this.b.getParcelable(b(str))) : null;
    }

    public <S extends Parcelable> void a(n<S> nVar) {
        a(nVar.aF_(), nVar.c());
    }

    public <S extends Parcelable> void a(String str, S s) {
        if (this.b != null && s != null) {
            String b = b(str);
            if (this.b.containsKey(b)) {
                throw new IllegalStateException("Duplicate saved state key found: " + b);
            }
            this.b.putParcelable(b, s);
        }
    }

    private static String b(String str) {
        return "saved_state_" + str;
    }
}
