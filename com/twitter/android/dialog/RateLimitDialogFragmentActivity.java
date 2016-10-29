package com.twitter.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.PhoneOwnershipActivity;
import com.twitter.android.widget.ec;

/* compiled from: Twttr */
public class RateLimitDialogFragmentActivity extends DialogFragmentActivity {
    public static void a(Context context) {
        context.startActivity(new Intent(context, RateLimitDialogFragmentActivity.class).setFlags(268435456));
    }

    protected void a(Bundle bundle) {
        ((ec) ((ec) ((ec) ((ec) ((ec) new ec(this.a).a(2131363439)).b(2131363440)).d(2131361869)).f(2131361988)).e()).i().a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (-1 == i2 && i == this.a) {
            startActivity(new Intent(this, PhoneOwnershipActivity.class));
        }
        super.a(dialogInterface, i, i2);
    }
}
