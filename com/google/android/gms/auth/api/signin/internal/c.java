package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.bm;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public class c {
    private static final Lock a;
    private static c b;
    private final Lock c;
    private final SharedPreferences d;

    static {
        a = new ReentrantLock();
    }

    c(Context context) {
        this.c = new ReentrantLock();
        this.d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static c a(Context context) {
        bm.a(context);
        a.lock();
        try {
            if (b == null) {
                b = new c(context.getApplicationContext());
            }
            c cVar = b;
            return cVar;
        } finally {
            a.unlock();
        }
    }

    private String a(String str, String str2) {
        return str + ":" + str2;
    }

    public GoogleSignInAccount a() {
        return a(b("defaultGoogleSignInAccount"));
    }

    GoogleSignInAccount a(String str) {
        GoogleSignInAccount googleSignInAccount = null;
        if (!TextUtils.isEmpty(str)) {
            String b = b(a("googleSignInAccount", str));
            if (b != null) {
                try {
                    googleSignInAccount = GoogleSignInAccount.a(b);
                } catch (JSONException e) {
                }
            }
        }
        return googleSignInAccount;
    }

    protected String b(String str) {
        this.c.lock();
        try {
            String string = this.d.getString(str, null);
            return string;
        } finally {
            this.c.unlock();
        }
    }
}
