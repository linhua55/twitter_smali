package com.google.android.gms.auth;

import android.content.Context;
import java.io.IOException;

public final class a extends e {
    public static final String a;
    public static final String b;

    static {
        a = e.c;
        b = e.d;
    }

    @Deprecated
    public static String a(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return e.b(context, str, str2);
    }
}
