package com.twitter.android.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.android.PhoneEntrySettingsActivity;
import com.twitter.android.mx;
import com.twitter.android.util.aq;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bpi;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class UpdatePhoneDialogActivity extends BaseFragmentActivity implements j, m {
    ProgressDialogFragment a;
    private long b;
    private Session c;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = getIntent().getLongExtra("user_id", 0);
        this.c = bg.a().b(this.b);
        if (bundle != null) {
            return;
        }
        if (getIntent().getBooleanExtra("delete_phone", false)) {
            e();
            return;
        }
        c();
        b("update::click");
    }

    public void a(DialogInterface dialogInterface, int i) {
        finish();
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                a(i2);
            case WireMessage.WIRE_CONTROL /*2*/:
                b(i2);
            case WireMessage.WIRE_AUTH /*3*/:
                c(i2);
            default:
                finish();
        }
    }

    private void a(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                a(true);
                b("update:confirm_dialog:update");
                finish();
            case WireMessage.WIRE_CHAT /*1*/:
                d();
                b("update:confirm_dialog:delete");
            default:
                b("update:confirm_dialog:cancel");
                finish();
        }
    }

    private void a(boolean z) {
        startActivity(new Intent(this, PhoneEntrySettingsActivity.class).putExtra("account_name", this.c.e()).putExtra("update_phone", z).putExtra("add_phone", !z).putExtra("current_phone", f()));
    }

    private void c() {
        ((ec) ((ec) ((ec) new ec(1).a(2131363751)).c(2131427367)).e()).i().a((m) this).a(getSupportFragmentManager());
    }

    private void d() {
        ((ec) ((ec) ((ec) ((ec) ((ec) new ec(2).a(2131363620)).b(2131363619)).d(2131363618)).f(2131362041)).e()).i().a((m) this).a(getSupportFragmentManager());
    }

    private void e() {
        ((ec) ((ec) ((ec) ((ec) ((ec) new ec(3).a(2131363725)).b(2131363726)).d(2131363612)).f(2131361988)).e()).i().a((m) this).a(getSupportFragmentManager());
    }

    private void b(int i) {
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
                az.a((Context) this).a(new bpi(this, this.c), new v(this));
                b("delete:confirm_dialog:ok");
                this.a = ProgressDialogFragment.a(2131363636);
                this.a.a(getSupportFragmentManager());
            default:
                finish();
                b("delete:confirm_dialog:cancel");
        }
    }

    private void c(int i) {
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
                a(false);
                b("delete:confirm_dialog:add");
                break;
            default:
                b("delete:confirm_dialog:dismiss");
                break;
        }
        finish();
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(this.b).b("settings:phone:" + str));
    }

    void a() {
        setResult(-1, new Intent().putExtra("delete_phone", true));
        finish();
    }

    private String f() {
        UserSettings j = this.c.j();
        if (j != null) {
            return aq.a(this).a(j.p);
        }
        return null;
    }
}
