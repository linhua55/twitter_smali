package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.metrics.LaunchTracker;
import com.twitter.android.metrics.a;
import com.twitter.android.metrics.e;
import com.twitter.android.util.AppEventTrack;
import com.twitter.android.util.AppEventTrack.EventType;
import com.twitter.android.util.aq;
import com.twitter.android.util.bi;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.aru;
import defpackage.bbu;
import defpackage.bgn;

/* compiled from: Twttr */
public class DispatchActivity extends BaseFragmentActivity implements OnClickListener {
    private bg a;

    public static void a(Activity activity) {
        activity.startActivity(new Intent(activity, DispatchActivity.class).setFlags(67108864));
        activity.finish();
    }

    public static void a(Activity activity, Intent intent) {
        activity.startActivity(new Intent(activity, DispatchActivity.class).setFlags(67108864).putExtra("android.intent.extra.INTENT", intent));
        activity.finish();
    }

    public static void b(Activity activity, Intent intent) {
        Intent flags = new Intent(activity, DispatchActivity.class).setFlags(268468224);
        if (intent != null) {
            flags.putExtra("android.intent.extra.INTENT", intent);
        }
        activity.startActivity(flags);
        activity.finish();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks()) > 102400) {
            this.a = bg.a();
            Intent intent = getIntent();
            if (intent.hasExtra("scribe_event") && intent.hasExtra("scribe_context")) {
                String stringExtra = intent.getStringExtra("scribe_event");
                String stringExtra2 = intent.getStringExtra("scribe_context");
                bbu.a(new TwitterScribeLog(this.a.c().g()).b(stringExtra, stringExtra2));
                intent.removeExtra("scribe_event");
                intent.removeExtra("scribe_context");
            }
            try {
                int i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
                SharedPreferences preferences = getPreferences(0);
                int i2 = preferences.getInt("version_code_for_app_update", -1);
                if (i2 == -1) {
                    az.a(getApplicationContext()).a(new bgn(getApplicationContext(), this.a.c(), "android:" + VERSION.RELEASE), new eh(getApplicationContext()));
                }
                if (i != i2) {
                    AppEventTrack.a(getApplicationContext(), EventType.Update, new String[0]);
                    Editor edit = preferences.edit();
                    edit.putInt("version_code_for_app_update", i);
                    edit.apply();
                }
            } catch (NameNotFoundException e) {
            }
            aq.a(this).j();
            Session c = bg.a().c();
            if (c.d()) {
                LaunchTracker.a().a(intent);
                aru b = aru.b();
                long g = c.g();
                a.a(b, g).i();
                e.a(b, g).i();
                if (qh.a((Context) this)) {
                    startActivity(new Intent(this, FlowActivity.class).putExtra("phone100_signup_first_step_password", true).putExtra("flow_data", FlowData.d((Context) this)));
                    finish();
                    return;
                } else if (!FollowFlowController.c((Context) this)) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
                    String string = defaultSharedPreferences.getString("pref_category", null);
                    if (string != null) {
                        startActivity(new Intent(this, EmailExploreFetchCategoryUsersActivity.class).putExtra("explore_email_category", string).putExtra("explore_email_country", defaultSharedPreferences.getString("pref_country", null)).addFlags(1073741824));
                        finish();
                        return;
                    } else if (((Intent) getIntent().getParcelableExtra("android.intent.extra.INTENT")) == null) {
                        c();
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (bundle == null) {
                io.b(this, "welcome");
            }
            a(2130969541);
            qh.a((Activity) this);
            return;
        }
        startActivity(new Intent(this, DiskCleanupPromptActivity.class));
        finish();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getWindow().setFormat(1);
    }

    protected void onStart() {
        super.onStart();
        this.a.c().g();
        if (!bg.a().c().d()) {
            bbu.a(new TwitterScribeLog(this.a.c().g()).b("front::::impression"));
        } else if (FollowFlowController.c((Context) this)) {
            FollowFlowController.d((Activity) this);
        } else if (((Intent) getIntent().getParcelableExtra("android.intent.extra.INTENT")) != null) {
            a(new eg(this));
        } else {
            c();
        }
    }

    private void c() {
        MainActivity.a((Activity) this, null);
    }

    protected static void a(eg egVar) {
        try {
            if (!egVar.a()) {
                egVar.b();
            }
        } catch (SecurityException e) {
            egVar.b();
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953402) {
            bbu.a(new TwitterScribeLog(this.a.c().g()).b("signup:form:sign_in:button:click"));
            startActivity(new Intent(this, LoginActivity.class).putExtra("android.intent.extra.INTENT", getIntent().getParcelableExtra("android.intent.extra.INTENT")));
        } else if (id == 2131953401) {
            bbu.a(new TwitterScribeLog(this.a.c().g()).b("signup:form:sign_up:button:click"));
            Intent intent = getIntent();
            Intent putExtra = new Intent(this, FlowActivity.class).putExtra("flow_data", bi.a(this).a(false, false, true));
            if (intent.hasExtra("android.intent.extra.INTENT")) {
                putExtra.putExtra("android.intent.extra.INTENT", intent.getParcelableExtra("android.intent.extra.INTENT"));
            }
            startActivity(putExtra);
        }
    }

    private void a(int i) {
        bbu.a(new TwitterScribeLog(this.a.c().g()).b("front:welcome:::impression"));
        setContentView(i);
        findViewById(2131953401).setOnClickListener(this);
        findViewById(2131953402).setOnClickListener(this);
    }
}
