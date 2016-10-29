package com.twitter.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.android.widget.ec;

/* compiled from: Twttr */
public class FollowingExceededDialogFragmentActivity extends DialogFragmentActivity {
    public static void a(Context context) {
        context.startActivity(new Intent(context, FollowingExceededDialogFragmentActivity.class).setFlags(268435456));
    }

    protected void a(Bundle bundle) {
        ((ec) ((ec) ((ec) ((ec) ((ec) new ec(this.a).a(2131362892)).b(2131363032)).d(2131362857)).f(2131361988)).e()).i().a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (-1 == i2 && i == this.a) {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://support.twitter.com/articles/66885-i-can-t-follow-people-follow-limits")));
        }
        super.a(dialogInterface, i, i2);
    }
}
