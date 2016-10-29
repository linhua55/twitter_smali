package com.twitter.android.runtimepermissions;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.IntRange;
import android.support.annotation.StyleRes;
import android.support.annotation.VisibleForTesting;
import com.twitter.android.PermissionResult;
import com.twitter.android.dialog.r;
import com.twitter.android.lf;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.l;
import com.twitter.app.common.base.m;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class PermissionRequestActivity extends BaseFragmentActivity implements l, m {
    @VisibleForTesting
    protected State a;
    @VisibleForTesting
    PermissionResult b;
    @StyleRes
    @VisibleForTesting
    int c;
    @StyleRes
    @VisibleForTesting
    int d;
    private String[] e;
    private String f;

    @VisibleForTesting
    /* compiled from: Twttr */
    public enum State {
        SHOULD_SHOW_PRELIMINARY_DIALOG,
        SHOWING_PRELIMINARY_DIALOG,
        SHOULD_SHOW_SYSTEM_DIALOGS,
        SHOWING_SYSTEM_DIALOGS,
        SHOULD_SHOW_RETARGETING_DIALOG,
        SHOWING_RETARGETING_DIALOG
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.e = intent.getStringArrayExtra("extra_permissions");
        this.c = intent.getIntExtra("extra_prelim_dialog_theme", 0);
        this.d = intent.getIntExtra("extra_retarget_dialog_theme", 0);
        this.f = intent.getStringExtra("extra_event_prefix");
        if (!(this.f == null || aj.d(":", this.f) == 3)) {
            bbn.a(new bbl(new IllegalArgumentException(String.format("Event prefix excluding action \"%s\" should have format: <page>:<section>:<component>:<element>", new Object[]{this.f}))));
        }
        if (bundle != null) {
            this.b = (PermissionResult) bundle.getParcelable("key_perm_result");
            this.a = (State) bundle.getSerializable("key_state");
        } else if (intent.getBooleanExtra("extra_always_prelim", false) || lf.a().a((Activity) this, this.e)) {
            this.a = State.SHOULD_SHOW_PRELIMINARY_DIALOG;
        } else {
            this.a = State.SHOULD_SHOW_SYSTEM_DIALOGS;
        }
    }

    protected void onResume() {
        super.onResume();
        if (b()) {
            this.b = PermissionResult.a(this.e);
            h();
        }
    }

    protected boolean b() {
        return lf.a().a((Context) this, this.e);
    }

    protected void onResumeFragments() {
        super.onResumeFragments();
        switch (a.a[this.a.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                a();
            case WireMessage.WIRE_CONTROL /*2*/:
                c();
            case WireMessage.WIRE_AUTH /*3*/:
                d();
            default:
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("key_perm_result", this.b);
        bundle.putSerializable("key_state", this.a);
    }

    protected void a() {
        this.a = State.SHOWING_PRELIMINARY_DIALOG;
        Intent intent = getIntent();
        r rVar = (r) ((r) ((r) new r(1).a(intent.getStringExtra("extra_prelim_title"))).c(intent.getStringExtra("extra_prelim_pos_text"))).d(intent.getStringExtra("extra_prelim_neg_text"));
        CharSequence stringExtra = intent.getStringExtra("extra_prelim_msg");
        if (stringExtra != null) {
            rVar.b(stringExtra);
        }
        ((r) rVar.i(this.c)).i().a((l) this).a((m) this).a(getSupportFragmentManager());
    }

    protected void c() {
        this.a = State.SHOWING_SYSTEM_DIALOGS;
        lf.a().a(1, (Activity) this, this.e);
    }

    protected void d() {
        this.a = State.SHOWING_RETARGETING_DIALOG;
        Intent intent = getIntent();
        Iterable b = lf.a().b(this, this.b.b);
        r rVar = (r) ((r) ((r) new r(2).a(intent.getStringExtra("extra_retarget_title"))).c(2131362747)).d(2131363169);
        String stringExtra = intent.getStringExtra("extra_retarget_msg_fmt");
        if (stringExtra != null) {
            rVar.b(String.format(stringExtra, new Object[]{aj.a((CharSequence) ", ", b)}));
        }
        ((r) rVar.i(this.d)).i().a((l) this).a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    c();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    startActivity(lf.a().a(this));
                }
            default:
        }
    }

    public void a(DialogInterface dialogInterface, int i) {
        if (!isChangingConfigurations()) {
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                    if (this.a == State.SHOWING_PRELIMINARY_DIALOG) {
                        this.b = PermissionResult.a(this, this.e);
                        h();
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    h();
                default:
            }
        }
    }

    public void onRequestPermissionsResult(@IntRange(from = 0, to = 65535) int i, String[] strArr, int[] iArr) {
        if (1 == i) {
            this.b = PermissionResult.a(this, this.e);
            i();
            if (getIntent().getBooleanExtra("extra_use_snackbar", false) || this.b.a()) {
                h();
            } else {
                this.a = State.SHOULD_SHOW_RETARGETING_DIALOG;
            }
        }
    }

    private void i() {
        if (aj.b(this.f)) {
            if (this.b.a.length > 0) {
                e();
            }
            if (this.b.b.length > 0) {
                f();
            }
        }
    }

    protected void e() {
        a(this.f, "permissions_granted", this.b.a);
    }

    protected void f() {
        a(this.f, "permissions_denied", this.b.b);
    }

    private static void a(String str, String str2, String[] strArr) {
        int i = 0;
        String format = String.format("%s:%s", new Object[]{str, str2});
        bbw twitterScribeLog = new TwitterScribeLog(bg.a().c().g(), format);
        int length = strArr.length;
        while (i < length) {
            String str3 = strArr[i];
            ScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.b = str3;
            twitterScribeLog.a(twitterScribeItem);
            i++;
        }
        bbu.a(twitterScribeLog);
    }

    protected void h() {
        setResult(-1, new Intent().putExtra("extra_perm_result", this.b).putExtra("extra_permissions", this.e));
        finish();
    }

    public static boolean a(Intent intent) {
        PermissionResult permissionResult = intent != null ? (PermissionResult) intent.getParcelableExtra("extra_perm_result") : null;
        return permissionResult != null && permissionResult.a();
    }
}
