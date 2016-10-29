package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.u;

/* compiled from: Twttr */
public class bk extends u<bk> {
    public bk(Intent intent) {
        super(intent);
    }

    public bk a(String str) {
        this.b.putExtra("ChangePasswordActivity_account_name", str);
        return this;
    }

    public String a() {
        return this.b.getStringExtra("ChangePasswordActivity_account_name");
    }

    public Intent a(Context context) {
        return a(context, ChangePasswordActivity.class);
    }
}
