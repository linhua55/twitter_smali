package com.twitter.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.widget.Button;
import com.twitter.library.client.AbsFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.d;
import com.twitter.library.resilient.e;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import defpackage.bbu;
import defpackage.bei;
import defpackage.bek;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class RemoveAccountDialogActivity extends AbsFragmentActivity implements hw {
    boolean a;
    boolean b;
    private String c;
    private ng d;

    public void a(Bundle bundle, d dVar) {
        this.c = getIntent().getStringExtra("RemoveAccountDialogActivity_account_name");
        this.d = new ng(this);
    }

    protected void v_() {
        DispatchActivity.a(this, getIntent());
    }

    protected void o() {
    }

    protected void onResume() {
        super.onResume();
        showDialog(3);
        aa().a(this.d);
    }

    protected void onPause() {
        aa().b(this.d);
        super.onPause();
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1 && this.a) {
            removeDialog(2);
            this.a = false;
            if (((aa) xVar.l().b()).b()) {
                c();
            } else {
                showDialog(4);
            }
        }
    }

    protected Dialog onCreateDialog(int i) {
        OnDismissListener ncVar = new nc(this);
        Dialog progressDialog;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                progressDialog.setMessage(getText(2131362795));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            case WireMessage.WIRE_CONTROL /*2*/:
                progressDialog = new ProgressDialog(this);
                progressDialog.setProgressStyle(0);
                progressDialog.setMessage(getText(2131362806));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(false);
                return progressDialog;
            case WireMessage.WIRE_AUTH /*3*/:
                progressDialog = new Builder(this).setTitle(2131362796).setMessage(BuildConfig.VERSION_NAME).setPositiveButton(17039379, new nd(this)).setNegativeButton(17039369, null).create();
                progressDialog.setOnDismissListener(ncVar);
                progressDialog.show();
                return progressDialog;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                progressDialog = new Builder(this).setTitle(2131362566).setMessage(2131362797).setPositiveButton(2131362312, new ne(this)).setNegativeButton(17039369, null).create();
                progressDialog.setOnDismissListener(ncVar);
                progressDialog.show();
                Button button = progressDialog.getButton(-1);
                button.setEnabled(false);
                button.postDelayed(new nf(this, button), 5000);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_AUTH /*3*/:
                int i2;
                boolean a = bek.a(this, this.c);
                Object obj = e.a(getApplicationContext()).a(aa().b(this.c).g()) > 0 ? 1 : null;
                AlertDialog alertDialog = (AlertDialog) dialog;
                if (a && obj != null) {
                    i2 = 2131362800;
                } else if (a) {
                    i2 = 2131362799;
                } else if (obj != null) {
                    i2 = 2131362801;
                } else {
                    i2 = 2131362798;
                }
                alertDialog.setMessage(getString(i2));
            default:
                super.onPrepareDialog(i, dialog);
        }
    }

    void c() {
        this.b = true;
        Session b = aa().b(this.c);
        long g = b.g();
        bbu.a(new TwitterScribeLog(g).b("settings::::logout"));
        if (com.twitter.app.common.account.d.a().b() == 1) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b("settings::::logout_last")).e());
        }
        aa().a(b);
        if (bek.a(this, this.c)) {
            bei.b(this, this.c);
        }
        showDialog(1);
    }

    public boolean D() {
        return true;
    }
}
