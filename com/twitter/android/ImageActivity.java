package com.twitter.android;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.widget.ProgressBar;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bbu;
import defpackage.bca;
import java.io.File;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ImageActivity extends TwitterFragmentActivity {
    private static final String[] i;
    MediaImageView a;
    ProgressBar b;
    Bitmap c;
    File d;
    Uri e;
    Uri f;
    String g;
    String h;
    private long j;

    static {
        i = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968917);
        tVar.c(false);
        tVar.a(false);
        tVar.b(6);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data == null) {
            throw new IllegalArgumentException("Must be started with a valid Uri");
        }
        this.e = data;
        if (intent.hasExtra("android.intent.extra.STREAM")) {
            this.f = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
        } else {
            this.f = this.e;
        }
        this.j = intent.getLongExtra("owner_user_id", 0);
        this.g = intent.getStringExtra("android.intent.extra.TEXT");
        this.h = intent.getStringExtra("image_url");
        int intExtra = intent.getIntExtra("action_label_resid", -1);
        Intent intent2 = (Intent) intent.getParcelableExtra("action_return_intent");
        this.b = (ProgressBar) findViewById(2131952568);
        this.a = (MediaImageView) findViewById(2131952621);
        this.a.setOnImageLoadedListener(new hj(this));
        this.a.a(a.a(data.toString()));
        if (intExtra != -1) {
            findViewById(2131952622).setVisibility(0);
            TwitterButton twitterButton = (TwitterButton) findViewById(2131952623);
            twitterButton.setText(intExtra);
            twitterButton.setVisibility(0);
            twitterButton.setOnClickListener(new hk(this, intent2));
        }
        bbu.a(new TwitterScribeLog(ab().g()).b("tweet::photo::impression"));
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Dialog progressDialog = new ProgressDialog(this);
                progressDialog.setMessage(getString(2131363531));
                progressDialog.setCancelable(false);
                return progressDialog;
            default:
                return super.onCreateDialog(i);
        }
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017171);
        return true;
    }

    public int b(w wVar) {
        boolean z;
        boolean z2 = true;
        super.b(wVar);
        Intent putExtra = new Intent("android.intent.action.SEND").setFlags(268435456).setType("text/plain").putExtra("android.intent.extra.TEXT", this.h);
        List queryIntentActivities = getPackageManager().queryIntentActivities(putExtra, AccessibilityNodeInfoCompat.ACTION_CUT);
        boolean z3 = this.c != null;
        ToolBar j = wVar.j();
        bca a = j.a(2131951913).a(putExtra);
        if (!z3 || queryIntentActivities.size() <= 0) {
            z = false;
        } else {
            z = true;
        }
        a.c(z);
        bca a2 = j.a(2131953439);
        if (!(z3 && this.d == null)) {
            z2 = false;
        }
        a2.c(z2);
        return 2;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953439) {
            if (this.c != null) {
                if (lf.a().a((Context) this, i)) {
                    new hl(this).execute(new String[0]);
                } else {
                    startActivityForResult(new b(getString(this.j == 0 ? 2131363526 : 2131363530), this, i).f("tweet::photo:").a(), 1);
                }
            }
        } else if (a != 2131953451) {
            return super.a(acVar);
        } else {
            OpenUriHelper.a((Context) this, this.f);
        }
        return true;
    }

    public boolean onSearchRequested() {
        return false;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1 && PermissionRequestActivity.a(intent)) {
            new hl(this).execute(new String[0]);
        }
    }
}
