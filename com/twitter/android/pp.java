package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class pp implements OnCancelListener {
    final /* synthetic */ int a;
    final /* synthetic */ SecuritySettingsActivity b;

    pp(SecuritySettingsActivity securitySettingsActivity, int i) {
        this.b = securitySettingsActivity;
        this.a = i;
    }

    public void onCancel(DialogInterface dialogInterface) {
        switch (this.a) {
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(this.b.b).b("settings:login_verification:enroll:cancel:click"));
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                bbu.a(new TwitterScribeLog(this.b.b).b("settings:login_verification:unenroll:cancel:click"));
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                this.b.startActivity(new Intent(this.b, BackupCodeActivity.class).putExtra("bc_account_name", this.b.a).putExtra("show_welcome", true).putExtra("bc_account_id", this.b.b));
                break;
        }
        this.b.removeDialog(this.a);
    }
}
