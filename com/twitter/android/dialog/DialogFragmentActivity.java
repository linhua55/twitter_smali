package com.twitter.android.dialog;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;

/* compiled from: Twttr */
public abstract class DialogFragmentActivity extends BaseFragmentActivity implements j, m {
    protected int a;

    protected abstract void a(Bundle bundle);

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.a = intent.getIntExtra("extra_dialog_id", 0);
        if (bundle == null) {
            a(intent.getExtras());
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        finish();
    }

    public void a(DialogInterface dialogInterface, int i) {
        finish();
    }
}
