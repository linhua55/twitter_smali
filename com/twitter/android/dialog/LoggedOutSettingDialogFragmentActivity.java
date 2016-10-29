package com.twitter.android.dialog;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.widget.ec;

/* compiled from: Twttr */
public class LoggedOutSettingDialogFragmentActivity extends DialogFragmentActivity {
    protected void a(Bundle bundle) {
        int i = bundle.getInt("title");
        ((ec) ((ec) ((ec) ((ec) ((ec) new ec(this.a).a(i)).b(bundle.getInt("message"))).d(2131363218)).f(2131362041)).e()).i().a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == this.a) {
            Intent intent = new Intent();
            intent.putExtra("user_choice", -1 == i2);
            intent.putExtra("extra_dialog_id", i);
            setResult(-1, intent);
        }
        super.a(dialogInterface, i, i2);
    }
}
