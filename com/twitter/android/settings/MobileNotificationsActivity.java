package com.twitter.android.settings;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gcm.b;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.util.bw;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.bx;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.c;
import defpackage.asp;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bek;
import defpackage.bvj;
import defpackage.bym;
import defpackage.sl;

/* compiled from: Twttr */
public class MobileNotificationsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener, OnPreferenceClickListener, asp {
    private static final String[] K;
    Preference A;
    Preference B;
    Preference C;
    Preference D;
    Preference E;
    Preference F;
    ListPreference G;
    private boolean L;
    private m M;
    private boolean N;
    String a;
    Session b;
    TwitterUser c;
    boolean f;
    String g;
    boolean h;
    int i;
    boolean j;
    int k;
    boolean l;
    boolean m;
    bx n;
    boolean o;
    PreferenceCategory p;
    Preference q;
    Preference r;
    Preference s;
    Preference t;
    Preference u;
    Preference v;
    Preference w;
    Preference x;
    Preference y;
    Preference z;

    static {
        K = new String[]{"use_led", "vibrate"};
    }

    protected void onCreate(Bundle bundle) {
        boolean z;
        this.f = PushRegistration.c(this);
        super.onCreate(bundle);
        setTitle(2131363711);
        this.a = getIntent().getStringExtra("NotificationSettingsActivity_account_name");
        this.b = k().b(this.a);
        this.c = this.b.f();
        this.N = c.e(this);
        this.L = true;
        if (this.f) {
            addPreferencesFromResource(2131230740);
        } else {
            addPreferencesFromResource(2131230739);
        }
        if (d.a("legacy_deciders_lifeline_alerts_enabled")) {
            z = false;
        } else {
            z = true;
        }
        this.z = findPreference("notif_lifeline_alerts");
        if (this.f) {
            this.q = findPreference("notif_tweets");
            this.q.setOnPreferenceClickListener(this);
            this.r = findPreference("notif_mentions_choice");
            this.w = findPreference("notif_address_book");
            this.x = findPreference("notif_experimental");
            this.A = findPreference("notif_recommendations");
            this.B = findPreference("notif_news");
            this.C = findPreference("notif_vit_notable_event");
            this.G = (ListPreference) findPreference("notif_vit_follows");
            this.D = findPreference("notif_offer_redemption");
            this.E = findPreference("notif_highlights");
            this.F = findPreference("notif_moments");
            this.p = (PreferenceCategory) getPreferenceScreen().findPreference("notif_pref_category");
            a(this.p, findPreference("notif_retweets"), "notif_retweets");
            a(this.p, findPreference("notif_favorites"), "notif_favorites");
            this.s = findPreference("notif_retweets_choice");
            this.t = findPreference("notif_favorites_choice");
            this.u = findPreference("notif_polls_choice");
            if (z) {
                a(this.p, this.z, "notif_lifeline_alerts");
            }
        } else {
            this.q = findPreference("notif_timeline");
            this.r = findPreference("notif_mentions");
            this.s = findPreference("notif_retweets");
            this.t = findPreference("notif_favorites");
            this.u = findPreference("notif_polls_choice");
            if (z) {
                a(getPreferenceScreen(), this.z, "notif_lifeline_alerts");
            }
        }
        this.v = findPreference("notif_follows");
        this.y = findPreference("notif_direct_messages");
        this.r.setTitle(2131363683);
        if (this.f) {
            ((CheckBoxListPreference) this.r).setDialogTitle(2131363683);
        }
        findPreference("ringtone").setOnPreferenceChangeListener(this);
        Intent intent = getIntent();
        if (intent != null && "poll_announcement".equals(intent.getStringExtra("NotificationSettingsActivity_notif_type"))) {
            new Handler().postDelayed(new h(this), 500);
        }
    }

    protected void b() {
        if (bg.a().c().g() != this.b.g()) {
            bvj.a(this.b);
        }
    }

    protected void a(TwitterUser twitterUser) {
        boolean a = bw.a(twitterUser);
        Preference e = e();
        if (a) {
            a(e);
            e.setEnabled(true);
            return;
        }
        e.setEnabled(false);
        b(e);
    }

    protected void b(TwitterUser twitterUser) {
        this.m = bw.b(twitterUser);
        Preference f = f();
        if (this.m) {
            a(f);
            f.setOnPreferenceChangeListener(this);
            b(g());
            return;
        }
        b(f);
    }

    protected void c() {
        if (com.twitter.android.commerce.util.c.d()) {
            this.p.addPreference(this.D);
            this.D.setEnabled(true);
            return;
        }
        this.D.setEnabled(false);
        this.p.removePreference(this.D);
    }

    protected void d() {
        if (bym.a()) {
            this.p.addPreference(this.F);
            this.F.setEnabled(true);
            return;
        }
        this.F.setEnabled(false);
        this.p.removePreference(this.F);
    }

    Preference e() {
        return this.C;
    }

    Preference f() {
        return this.G;
    }

    Preference g() {
        return this.v;
    }

    void a(Preference preference) {
        this.p.addPreference(preference);
    }

    void b(Preference preference) {
        this.p.removePreference(preference);
    }

    protected boolean h() {
        return this.f;
    }

    protected void onStart() {
        super.onStart();
        if (this.L && this.a != null) {
            new l(this, this.a).execute(new Void[0]);
        } else if (!this.L) {
            this.L = true;
        }
    }

    protected void onResume() {
        super.onResume();
        bvj.a((asp) this);
        b();
        b(this.f);
    }

    protected void onPause() {
        super.onPause();
        bvj.b((asp) this);
    }

    public void onStop() {
        super.onStop();
        if (this.L && this.a != null && this.n != null) {
            new n(this, this.a).execute(new Void[0]);
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.M != null) {
            unregisterReceiver(this.M);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            if (i2 == -1 && intent.hasExtra("enabled")) {
                a(intent.getBooleanExtra("enabled", false), intent.getIntExtra("count", 0));
            }
        } else if (i == 2) {
            if (i2 != -1) {
                return;
            }
            if (intent.hasExtra("pref_mention") || intent.hasExtra("pref_choice")) {
                a(intent.getIntExtra("pref_choice", 0), intent.getBooleanExtra("pref_mention", false));
            }
        } else if (i != 3) {
            super.onActivityResult(i, i2, intent);
        } else if (i2 != -1) {
        } else {
            if (intent.hasExtra("pref_mention") || intent.hasExtra("pref_choice")) {
                b(intent.getIntExtra("pref_choice", 0), intent.getBooleanExtra("pref_mention", false));
            }
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    protected boolean a(boolean z) {
        if (z) {
            if (b.g(this)) {
                return true;
            }
            showDialog(1);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(PushRegistration.e);
            intentFilter.addAction(PushRegistration.f);
            this.M = new m();
            registerReceiver(this.M, intentFilter, ck.a, null);
            PushRegistration.d(this);
            return true;
        } else if (!b.g(this) || !bek.a(this, this.a)) {
            return true;
        } else {
            Toast.makeText(this, getString(2131362045), 1).show();
            return false;
        }
    }

    protected Dialog onCreateDialog(int i) {
        if (i != 1) {
            return super.onCreateDialog(i);
        }
        Dialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage(getText(2131363653));
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(true);
        progressDialog.setOnCancelListener(new i(this));
        return progressDialog;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if ("ringtone".equals(preference.getKey())) {
            this.g = (String) obj;
        } else if (preference instanceof ListPreference) {
            aq.a((ListPreference) preference, (String) obj);
        }
        return true;
    }

    public boolean onPreferenceClick(Preference preference) {
        if ("notif_tweets".equals(preference.getKey())) {
            this.L = false;
            startActivityForResult(new Intent(this, TweetSettingsActivity.class).putExtra("TweetSettingsActivity_account_name", this.a).putExtra("enabled", this.h), 1);
        } else if ("notif_retweets".equals(preference.getKey())) {
            this.L = false;
            startActivityForResult(new Intent(this, RtFavSettingsActivity.class).putExtra("pref_choice", this.i).putExtra("pref_choice_key", "notif_retweets_choice").putExtra("pref_mention", this.j).putExtra("pref_mention_key", "notif_retweeted_mention").putExtra("pref_title", 2131363693).putExtra("pref_xml", 2131230748), 2);
        } else if ("notif_favorites".equals(preference.getKey())) {
            this.L = false;
            startActivityForResult(new Intent(this, RtFavSettingsActivity.class).putExtra("pref_choice", this.k).putExtra("pref_choice_key", "notif_favorites_choice").putExtra("pref_mention", this.l).putExtra("pref_mention_key", "notif_favorited_mention").putExtra("pref_title", 2131363682).putExtra("pref_xml", 2131230734), 3);
        }
        return true;
    }

    void a(boolean z, int i) {
        Preference preference = this.q;
        if (z) {
            preference.setSummary(getResources().getQuantityString(2131492891, i, new Object[]{Integer.valueOf(i)}));
        } else {
            preference.setSummary(2131363699);
        }
        this.h = z;
    }

    private static void a(Preference preference, int i) {
        if (i == 0) {
            preference.setSummary(2131363699);
        } else if (i == 1) {
            preference.setSummary(2131363695);
        } else if (i == 2) {
            preference.setSummary(2131363694);
        }
    }

    void a(int i, boolean z) {
        a(this.s, i);
        this.i = i;
        this.j = z;
    }

    void b(int i, boolean z) {
        a(this.t, i);
        this.k = i;
        this.l = z;
    }

    public void a(long j) {
        if (this.f && j == this.b.g()) {
            runOnUiThread(new j(this));
        }
    }

    void b(boolean z) {
        if (z) {
            a(this.c);
            b(this.c);
            c();
            d();
        }
    }

    private void e(boolean z) {
        sl.a((Context) this).a(z);
    }

    public static void a(Intent intent, ViewGroup viewGroup) {
        a(intent, viewGroup, viewGroup.getContext());
    }

    public static void a(Intent intent, ViewGroup viewGroup, Context context) {
        CharSequence stringExtra = intent.getStringExtra("NotificationSettingsActivity_text");
        String stringExtra2 = intent.getStringExtra("NotificationSettingsActivity_notif_random_id");
        String stringExtra3 = intent.getStringExtra("NotificationSettingsActivity_notif_type");
        String stringExtra4 = intent.getStringExtra("NotificationSettingsActivity_scribe_component");
        String str = "notif_settings_link_num_times_shown_" + stringExtra3;
        View findViewById = viewGroup.findViewById(2131953328);
        TextView textView = (TextView) viewGroup.findViewById(2131952951);
        boolean b = aj.b(stringExtra);
        if (b) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            b = a(defaultSharedPreferences, stringExtra3);
            String str2 = str + "_" + stringExtra2;
            int i = defaultSharedPreferences.getInt(str2, 0) > 0 ? 1 : 0;
            if (b) {
                if (i == 0) {
                    defaultSharedPreferences.edit().putInt(str, defaultSharedPreferences.getInt(str, 0) + 1).apply();
                    defaultSharedPreferences.edit().putInt(str2, 1).apply();
                }
            } else if (i != 0) {
                b = defaultSharedPreferences.getInt(str, 0) > 0;
            }
        }
        if (b) {
            textView.setText(stringExtra);
            findViewById.setVisibility(0);
            stringExtra2 = intent.getStringExtra("NotificationSettingsActivity_username");
            long longExtra = intent.getLongExtra("NotificationSettingsActivity_user_id", -1);
            bbu.a(new TwitterScribeLog(longExtra).b(stringExtra3.indexOf("follow") == 0 ? "profile" : "tweet", "notification_landing", stringExtra4, "header", "show"));
            textView.setOnClickListener(new k(stringExtra2, stringExtra3, str, longExtra, r6, stringExtra4));
            return;
        }
        findViewById.setVisibility(8);
    }

    private static Intent b(Context context, String str, String str2) {
        boolean z = str2.indexOf("tweet_") == 0;
        boolean equalsIgnoreCase = str2.equalsIgnoreCase("poll_announcement");
        Intent intent = new Intent(context, z ? TweetSettingsActivity.class : MobileNotificationsActivity.class);
        if (z) {
            intent.putExtra("TweetSettingsActivity_account_name", str).putExtra("enabled", TweetSettingsActivity.a(context, str)).putExtra("from_notification_landing", true);
        } else {
            intent.putExtra("NotificationSettingsActivity_account_name", str);
        }
        if (equalsIgnoreCase) {
            intent.putExtra("NotificationSettingsActivity_notif_type", str2);
        }
        return intent;
    }

    public static boolean a(SharedPreferences sharedPreferences, String str) {
        if (!d.a("notif_settings_link_on_push_landing_pages_enabled")) {
            return false;
        }
        int i = sharedPreferences.getInt("notif_settings_link_num_times_shown_" + str, 0);
        if (i < 0 || i >= 3) {
            return false;
        }
        return true;
    }

    private static void a(PreferenceGroup preferenceGroup, Preference preference, String str) {
        if (preference != null) {
            preferenceGroup.removePreference(preference);
        } else {
            bbn.a(new IllegalStateException("NotificationSettingsActivity preference (key: " + str + ") was unexpectedly null when trying to remove it."));
        }
    }
}
