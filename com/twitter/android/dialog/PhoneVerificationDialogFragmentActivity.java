package com.twitter.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.client.bz;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;

/* compiled from: Twttr */
public class PhoneVerificationDialogFragmentActivity extends DialogFragmentActivity {
    public static String b;
    public static String c;
    private boolean d;
    private boolean e;

    static {
        b = "extra_is_blocking";
        c = "extra_forward_result";
    }

    protected void onCreate(Bundle bundle) {
        this.d = getIntent().getBooleanExtra(b, false);
        this.e = getIntent().getBooleanExtra(c, false);
        super.onCreate(bundle);
    }

    protected void a(Bundle bundle) {
        PromptDialogFragment promptDialogFragment;
        ec ecVar = (ec) ((ec) ((ec) ((ec) new ec(this.a).a(2131364135)).a(getString(2131363302))).d(2131361869)).e();
        if (this.d) {
            promptDialogFragment = (PromptDialogFragment) ecVar.i();
            promptDialogFragment.setCancelable(false);
        } else {
            promptDialogFragment = (PromptDialogFragment) ((ec) ecVar.f(2131361988)).i();
        }
        promptDialogFragment.a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (-1 == i2 && i == this.a) {
            Intent a = bz.a((Context) this, this.d);
            if (this.e) {
                a.setFlags(33554432);
            }
            startActivity(a);
        }
        super.a(dialogInterface, i, i2);
    }
}
