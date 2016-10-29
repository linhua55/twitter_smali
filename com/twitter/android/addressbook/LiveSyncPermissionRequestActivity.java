package com.twitter.android.addressbook;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.dialog.b;
import com.twitter.android.dialog.r;
import com.twitter.android.lf;
import com.twitter.android.people.bb;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.PermissionRequestActivity.State;
import com.twitter.app.common.base.l;
import com.twitter.app.common.base.m;
import com.twitter.library.client.bg;
import defpackage.bbu;
import defpackage.buc;

/* compiled from: Twttr */
public class LiveSyncPermissionRequestActivity extends PermissionRequestActivity {
    private bb e;
    private String f;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f = bg.a().c().e();
        this.e = bb.a(bg.a().c().g());
    }

    protected void a() {
        bbu.a(this.e.a("contacts_sync_prompt", BuildConfig.VERSION_NAME, "impression"));
        this.a = State.SHOWING_PRELIMINARY_DIALOG;
        Intent intent = getIntent();
        b bVar = new b(1);
        ((r) ((r) bVar.a(intent.getStringExtra("extra_prelim_title"))).c(intent.getStringExtra("extra_prelim_pos_text"))).d(intent.getStringExtra("extra_prelim_neg_text"));
        CharSequence stringExtra = intent.getStringExtra("extra_prelim_msg");
        if (stringExtra != null) {
            bVar.b(stringExtra);
        }
        ((r) bVar.i(2131558779)).i().a((l) this).a((m) this).a(getSupportFragmentManager());
    }

    protected boolean b() {
        return buc.a((Context) this, this.f);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1 && this.f != null) {
            String str;
            if (i2 == -1) {
                buc.a(this, this.f, 2);
                str = "accept";
            } else if (i2 == -2) {
                str = "deny";
            } else {
                str = null;
            }
            if (str != null) {
                bbu.a(this.e.a("contacts_sync_prompt", BuildConfig.VERSION_NAME, str));
            }
        }
        super.a(dialogInterface, i, i2);
    }

    protected void c() {
        if (lf.a().b()) {
            bbu.a(this.e.a("contacts_prompt", BuildConfig.VERSION_NAME, "impression"));
        }
        super.c();
    }

    protected void d() {
        if (lf.a().b()) {
            bbu.a(this.e.a("contacts_denied_prompt", BuildConfig.VERSION_NAME, "impression"));
        }
        super.d();
    }

    protected void e() {
        super.e();
        bbu.a(this.e.a("contacts_prompt", BuildConfig.VERSION_NAME, "accept"));
    }

    protected void f() {
        super.f();
        bbu.a(this.e.a("contacts_prompt", BuildConfig.VERSION_NAME, "deny"));
    }

    protected void h() {
        if (b()) {
            setResult(-1);
        } else {
            setResult(0);
        }
        finish();
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public static Intent a(Context context, String str) {
        return new Intent(context, LiveSyncPermissionRequestActivity.class).putExtra("extra_prelim_title", context.getString(2131361877)).putExtra("extra_prelim_msg", context.getString(2131361875)).putExtra("extra_prelim_pos_text", context.getString(2131363927)).putExtra("extra_prelim_neg_text", context.getString(2131363169)).putExtra("extra_permissions", new String[]{"android.permission.READ_CONTACTS"}).putExtra("extra_event_prefix", str).putExtra("extra_retarget_msg_fmt", context.getString(2131363255)).putExtra("extra_retarget_title", context.getString(2131363256)).putExtra("extra_always_prelim", true).putExtra("extra_retarget_dialog_theme", 2131558781);
    }
}
