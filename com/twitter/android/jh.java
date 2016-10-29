package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.library.client.aa;

/* compiled from: Twttr */
public class jh extends aa {
    private final Context a;

    public jh(Context context) {
        this.a = context;
    }

    public boolean a(String str) {
        this.a.startActivity(new Intent(this.a, LoginVerificationActivity.class).putExtra("AbsFragmentActivity_account_name", str).setFlags(268435456));
        return true;
    }
}
