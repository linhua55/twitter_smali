package com.twitter.android.settings.developer;

import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Base64;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import bbn;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.twitter.android.AddUpdateEmailActivity;
import com.twitter.android.BouncerWebViewActivity;
import com.twitter.android.FlowActivity;
import com.twitter.android.FollowFlowController;
import com.twitter.android.GeoDebugActivity;
import com.twitter.android.HashflagsViewerActivity;
import com.twitter.android.LogViewerActivity;
import com.twitter.android.PhoneOwnershipActivity;
import com.twitter.android.PtrDebugSettingsActivity;
import com.twitter.android.PushDebugSettingsActivity;
import com.twitter.android.alerts.landing.AlertLandingActivity;
import com.twitter.android.bp;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.bz;
import com.twitter.android.dialog.PhoneVerificationDialogFragmentActivity;
import com.twitter.android.highlights.HighlightsStoriesActivity;
import com.twitter.android.livevideo.landing.LiveVideoLandingActivity;
import com.twitter.android.livevideo.landing.a;
import com.twitter.android.loggedoutpush.e;
import com.twitter.android.moments.ui.guide.ai;
import com.twitter.android.profilecompletionmodule.ProfileCompletionFlowActivity;
import com.twitter.android.settings.w;
import com.twitter.android.smartfollow.g;
import com.twitter.android.util.an;
import com.twitter.android.util.t;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.platform.c;
import com.twitter.library.provider.di;
import com.twitter.library.util.aq;
import com.twitter.library.util.b;
import com.twitter.util.aj;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;
import com.twitter.util.h;
import com.twitter.util.serialization.s;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public final class DebugSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener, an {

    /* compiled from: Twttr */
    class CrashlyticsTestException extends RuntimeException {
        CrashlyticsTestException(String str) {
            super(str);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (AppConfig.m().p()) {
            c();
            if (getIntent().hasExtra("is_from_debug_deeplink") && getIntent().getExtras().getBoolean("is_from_debug_deeplink")) {
                a(getIntent().getExtras().getString("concon_id"), true);
                return;
            }
            return;
        }
        finish();
    }

    private void c() {
        addPreferencesFromResource(2131230731);
        findPreference("check_phone").setOnPreferenceClickListener(this);
        findPreference("logcat_viewer").setOnPreferenceClickListener(this);
        findPreference("thread_dump").setOnPreferenceClickListener(this);
        findPreference("feature_switches_export").setOnPreferenceClickListener(this);
        findPreference("logged_in_mt").setOnPreferenceClickListener(this);
        findPreference("phone_ownership").setOnPreferenceClickListener(this);
        findPreference("bouncer").setOnPreferenceClickListener(this);
        findPreference("start_nux_all_screens").setOnPreferenceClickListener(this);
        findPreference("start_nux_seamful").setOnPreferenceClickListener(this);
        findPreference("start_edit_profile_nux").setOnPreferenceClickListener(this);
        findPreference("start_smart_follow_nux").setOnPreferenceClickListener(this);
        findPreference("start_smart_rux").setOnPreferenceClickListener(this);
        findPreference("start_highlights").setOnPreferenceClickListener(this);
        findPreference("start_highlights_nux").setOnPreferenceClickListener(this);
        findPreference("start_highlights_empty").setOnPreferenceClickListener(this);
        findPreference("start_highlights_sample").setOnPreferenceClickListener(this);
        findPreference("pref_signup_phone100").setOnPreferenceClickListener(this);
        findPreference("start_alert_landing_screen").setOnPreferenceClickListener(this);
        findPreference("start_live_video_landing_screen").setOnPreferenceClickListener(this);
        PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("pref_debug_push");
        preferenceScreen.findPreference("simulate_logged_in_push").setOnPreferenceClickListener(this);
        preferenceScreen.findPreference("simulate_logged_out_push").setOnPreferenceClickListener(this);
        Preference findPreference = preferenceScreen.findPreference("reset_logged_out_reg");
        findPreference.setSummary("Last used bytes : " + PreferenceManager.getDefaultSharedPreferences(this).getLong("last_update_traffic_data ", 0));
        findPreference.setOnPreferenceClickListener(this);
        if (c.b(this)) {
            findPreference("geo_debug").setOnPreferenceClickListener(this);
        } else {
            ((PreferenceCategory) findPreference("pref_debug_main")).removePreference(findPreference("geo_debug"));
        }
        findPreference("launch_moments").setOnPreferenceClickListener(this);
        findPreference("inject_suggested_moments_carousel").setOnPreferenceClickListener(this);
        findPreference("reset_moments_tutorial").setOnPreferenceClickListener(this);
        findPreference("reset_sticker_tooltips").setOnPreferenceClickListener(this);
        findPreference("debug_delete_cached_tweets").setOnPreferenceClickListener(this);
        findPreference("extra_dtab").setOnPreferenceChangeListener(this);
        if (d.a("concon_enabled")) {
            findPreference("extra_concon_id").setOnPreferenceChangeListener(this);
        } else {
            b("extra_concon_id");
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        Preference findPreference2 = findPreference("debug_card_commerce_host_v2");
        findPreference2.setSummary(defaultSharedPreferences.getString("debug_card_commerce_host_v2", null));
        findPreference2.setOnPreferenceChangeListener(this);
        findPreference2 = findPreference("debug_card_tpay_host_v2");
        findPreference2.setSummary(defaultSharedPreferences.getString("debug_card_tpay_host_v2", null));
        findPreference2.setOnPreferenceChangeListener(this);
        findPreference("debug_start_product_previewer").setOnPreferenceClickListener(this);
        findPreference("debug_show_hashflags").setOnPreferenceClickListener(this);
        findPreference("debug_crash_fatal").setOnPreferenceClickListener(this);
        findPreference("debug_crash_nonfatal").setOnPreferenceClickListener(this);
        findPreference("debug_home_timeline_sync").setOnPreferenceClickListener(this);
        findPreference = findPreference("debug_cleanup");
        findPreference.setOnPreferenceClickListener(this);
        a(findPreference);
        findPreference("show_dock").setOnPreferenceClickListener(this);
        findPreference("dock_show_touch_targets").setOnPreferenceChangeListener(this);
        findPreference("set_test_data_to_latest_news_ids").setOnPreferenceClickListener(this);
        findPreference("pref_signup_phone100_password").setOnPreferenceClickListener(this);
        findPreference("pref_signup_phone100_SSPC").setOnPreferenceClickListener(this);
        findPreference("pref_signup_phone100_add_phone").setOnPreferenceClickListener(this);
        findPreference("pref_dev_key_hash").setOnPreferenceClickListener(this);
        findPreference("ptr_debug").setOnPreferenceClickListener(this);
        findPreference("add_email").setOnPreferenceClickListener(this);
        findPreference("update_email").setOnPreferenceClickListener(this);
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (preference instanceof ListPreference) {
            aq.a((ListPreference) preference, (String) obj);
        } else if ("extra_concon_id".equals(preference.getKey())) {
            a((String) obj, false);
        }
        return true;
    }

    public void a(String str, boolean z) {
        if (z) {
            c(str);
        } else {
            a(str);
        }
    }

    private void c(String str) {
        new Builder(this).setMessage("Are you sure you want to set concon bundle with ID: " + str).setPositiveButton("Yes", new c(this, str)).setNegativeButton("No", null).show();
    }

    public void a(String str) {
        new a(this, str).execute(new Void[0]);
    }

    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        if ("check_phone".equals(key)) {
            com.twitter.android.util.aq.a(this).a(this);
        } else if ("logcat_viewer".equals(key)) {
            startActivity(new Intent(this, LogViewerActivity.class));
        } else if ("thread_dump".equals(key)) {
            new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new f(this)).a().b(new f().a(i.b).a(new e(this))).c(new f().a(i.b).a(new d(this)));
        } else if ("feature_switches_export".equals(key)) {
            new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new h(this)).a().b(new f().a(i.b).a(new g(this)));
        } else if ("logged_in_mt".equals(key)) {
            startActivity(bz.a(this, false));
        } else if ("phone_ownership".equals(key)) {
            startActivity(new Intent(this, PhoneOwnershipActivity.class));
        } else if ("bouncer".equals(key)) {
            BouncerWebViewActivity.a(this, null, true);
        } else if ("start_nux_all_screens".equals(key)) {
            new FollowFlowController("debug").a(true).f(true).b(false).c(this);
        } else if ("start_nux_seamful".equals(key)) {
            new FollowFlowController("debug").a(true).f(true).b(false).d(true).c(this);
        } else if ("start_edit_profile_nux".equals(key)) {
            a((Context) this);
            return true;
        } else if ("start_smart_follow_nux".equals(key)) {
            c((Context) this);
            return true;
        } else if ("start_smart_rux".equals(key)) {
            b((Context) this);
        } else if ("start_highlights".equals(key)) {
            startActivity(new Intent(this, HighlightsStoriesActivity.class));
            return true;
        } else if ("start_highlights_nux".equals(key)) {
            HighlightsStoriesActivity.a(this, 2);
            return true;
        } else if ("start_highlights_empty".equals(key)) {
            HighlightsStoriesActivity.a(this, 3);
            return true;
        } else if ("start_highlights_sample".equals(key)) {
            HighlightsStoriesActivity.a(this);
            return true;
        } else if ("start_alert_landing_screen".equals(key)) {
            startActivity(AlertLandingActivity.a(this, 1));
            return true;
        } else if ("start_live_video_landing_screen".equals(key)) {
            startActivity(LiveVideoLandingActivity.a(this, new a("1")));
            return true;
        } else if ("geo_debug".equals(key)) {
            startActivity(new Intent(this, GeoDebugActivity.class));
            return true;
        } else if ("launch_moments".equals(key)) {
            ai.a(this);
            return true;
        } else if ("inject_suggested_moments_carousel".equals(key)) {
            w.a(this);
        } else if ("reset_moments_tutorial".equals(key)) {
            f();
            return true;
        } else if ("debug_delete_cached_tweets".equals(preference.getKey())) {
            e();
            return true;
        } else if ("debug_show_hashflags".equals(key)) {
            startActivity(new Intent(this, HashflagsViewerActivity.class));
        } else if ("debug_crash_fatal".equals(key)) {
            b(true);
            return true;
        } else if ("debug_crash_nonfatal".equals(key)) {
            b(false);
            return true;
        } else if ("simulate_logged_in_push".equals(key)) {
            startActivity(new Intent(getApplicationContext(), PushDebugSettingsActivity.class));
            return true;
        } else if ("simulate_logged_out_push".equals(key)) {
            PushDebugSettingsActivity.a(this);
            return true;
        } else if ("reset_logged_out_reg".equals(key)) {
            new e(PreferenceManager.getDefaultSharedPreferences(this)).f();
            return true;
        } else if ("set_test_data_to_latest_news_ids".equals(key)) {
            l lVar = new l(this, l().e(), "news");
            List list = (List) lVar.a("latestTopNewsIds", s.a(s.j));
            for (int i = 0; i < 5; i++) {
                list.add(i, "Old-News-XXX");
            }
            lVar.a().a("latestTopNewsIds", list, s.a(s.j)).apply();
        } else if ("debug_home_timeline_sync".equals(key)) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("home", true);
            com.twitter.app.common.account.a b = b.b(l().e());
            if (b == null) {
                return true;
            }
            startService(new Intent(this, TwitterDataSyncService.class).setAction("sync_account").putExtra("account", b.a()).putExtra("_data", bundle));
            return true;
        } else if ("pref_signup_phone100".equals(key)) {
            startActivity(new Intent(this, FlowActivity.class));
        } else if ("pref_signup_phone100_password".equals(key) && l().d()) {
            Builder builder = new Builder(this);
            builder.setTitle("Enter your password");
            View editText = new EditText(this);
            editText.setInputType(129);
            builder.setView(editText);
            builder.setPositiveButton(2131363218, new i(this, editText));
            builder.show();
            return true;
        } else if ("pref_signup_phone100_SSPC".equals(key) && l().d()) {
            b();
        } else if ("pref_signup_phone100_add_phone".equals(key) && l().d()) {
            startActivity(new Intent(this, FlowActivity.class).putExtra("phone100_signup_first_step_add_phone", true));
        } else if ("pref_dev_key_hash".equals(key)) {
            d();
        } else if ("ptr_debug".equals(key)) {
            startActivity(new Intent(getApplicationContext(), PtrDebugSettingsActivity.class));
        } else if ("debug_cleanup".equals(key)) {
            h.a(new j(this));
            a(preference);
        } else if ("add_email".equals(key)) {
            startActivity(new Intent(this, AddUpdateEmailActivity.class).putExtra("umf_update_email", false));
        } else if ("update_email".equals(key)) {
            startActivity(new Intent(this, AddUpdateEmailActivity.class).putExtra("umf_update_email", true));
        } else if ("reset_sticker_tooltips".equals(key)) {
            g();
        }
        return false;
    }

    public static void a(Context context) {
        context.startActivity(ProfileCompletionFlowActivity.a(context, "debug"));
    }

    public static void b(Context context) {
        context.startActivity(new g().a("debug").a(1).a(true).b("resurrection").a(context));
    }

    public static void c(Context context) {
        context.startActivity(new g().a("debug").a(0).a(false).a(context));
    }

    private void d() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo("com.twitter.android", 64);
            if (packageInfo.signatures.length == 0) {
                Toast.makeText(this, "No package info for com.twitter.android found.", 0).show();
                return;
            }
            Signature signature = packageInfo.signatures[0];
            MessageDigest instance = MessageDigest.getInstance("SHA");
            instance.update(signature.toByteArray());
            String encodeToString = Base64.encodeToString(instance.digest(), 0);
            if (aj.a(encodeToString)) {
                Toast.makeText(this, "Could not generate KeyHash.", 0).show();
                return;
            }
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setAction("android.intent.action.SEND");
            intent.setType("message/rfc822");
            String str = "Android Developer Hash: " + DateFormat.getInstance().format(new Date());
            intent.putExtra("android.intent.extra.EMAIL", new String[]{TtmlNode.ANONYMOUS_REGION_ID});
            intent.putExtra("android.intent.extra.SUBJECT", str);
            intent.putExtra("android.intent.extra.TEXT", "Key Hash = " + encodeToString);
            intent.setFlags(268435456);
            try {
                startActivity(intent);
            } catch (ActivityNotFoundException e) {
                Toast.makeText(this, "No email client found, please install one. KeyHash = " + encodeToString, 1).show();
            }
        } catch (NameNotFoundException e2) {
            Toast.makeText(this, "KeyHash generation caused exception.", 0).show();
        } catch (NoSuchAlgorithmException e3) {
            Toast.makeText(this, "KeyHash generation caused exception.", 0).show();
        }
    }

    public void b() {
        Intent intent = new Intent(this, PhoneVerificationDialogFragmentActivity.class);
        intent.putExtra(PhoneVerificationDialogFragmentActivity.b, false);
        intent.putExtra(PhoneVerificationDialogFragmentActivity.c, true);
        startActivity(intent);
    }

    public void c_(boolean z) {
        Toast.makeText(this, z ? "current user has a verified phone" : "current user does not have a phone", 0).show();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == Factory.DEFAULT_MIN_REBUFFER_MS) {
            new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new k(this)).a();
        }
    }

    private void a(Preference preference) {
        preference.setSummary("Last cleanup: " + new SimpleDateFormat("yyyy-MM-dd h:m:sa", Locale.US).format(new Date(new l(getApplicationContext(), l().e()).getLong("auto_clean", 0))));
    }

    private void e() {
        bg k = k();
        Session c = k.c();
        Context applicationContext = getApplicationContext();
        bp.a();
        di.a(applicationContext, c.g()).c();
        k.d(c.e());
        Toast.makeText(this, "Cached tweets deleted", 0).show();
    }

    private void f() {
        String e = k().c().e();
        t a = t.a(this, "guide_post_follow_fatigue", e);
        t a2 = t.a(this, "guide_follow_button_fatigue", e);
        t a3 = t.a(this, "guide_thumbnail_fatigue", e);
        t a4 = t.a(this, "tap_to_fit_tutorial_fatigue", bg.a().c().e());
        a.c();
        a2.c();
        a3.c();
        a4.c();
        Toast.makeText(this, getResources().getString(2131364344), 0).show();
    }

    private void b(boolean z) {
        String str = "Crash Test exception";
        Throwable crashlyticsTestException = new CrashlyticsTestException("Crash Test exception");
        if (z) {
            throw crashlyticsTestException;
        }
        bbn.a(crashlyticsTestException);
        Toast.makeText(this, "Exception logged", 0).show();
    }

    private void g() {
        String e = k().c().e();
        t.a(this, "stickers_composer_tooltip", e).c();
        t.a(this, "sticker_selector_tooltip", e).c();
        t.a(this, "sticker_edit_tooltip", e).c();
        PreferenceManager.getDefaultSharedPreferences(getApplicationContext()).edit().putBoolean("sticker_media_viewer_tooltip", true).apply();
        Toast.makeText(this, getResources().getString(2131364401), 0).show();
    }
}
