package com.twitter.android.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.widget.Toast;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.android.client.z;
import com.twitter.android.widget.MessagePreference;
import com.twitter.android.widget.UserCheckBoxPreference;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import defpackage.boe;
import defpackage.bpj;
import defpackage.cne;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class TweetSettingsActivity extends TwitterPreferenceActivity implements OnPreferenceChangeListener {
    PreferenceCategory a;
    private final Map<Long, TwitterUser> b;
    private Session c;
    private Preference f;
    private Preference g;
    private Intent h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;

    public TweetSettingsActivity() {
        this.b = new HashMap();
        this.i = -1;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(2131230754);
        setTitle(2131363696);
        Intent intent = getIntent();
        this.k = intent.getBooleanExtra("enabled", false);
        this.l = this.k;
        c(this.k);
        d(false);
        Preference preferenceCategory = new PreferenceCategory(this);
        preferenceCategory.setTitle(2131362928);
        getPreferenceScreen().addPreference(preferenceCategory);
        this.a = preferenceCategory;
        Preference messagePreference = new MessagePreference(this);
        messagePreference.setKey(NotificationCompatApi21.CATEGORY_MESSAGE);
        messagePreference.setSummary(getString(2131363698, new Object[]{getString(2131364101)}));
        messagePreference.setShouldDisableView(false);
        messagePreference.setSelectable(false);
        messagePreference.setPersistent(false);
        this.g = messagePreference;
        preferenceCategory.addPreference(messagePreference);
        this.c = bg.a().b(intent.getStringExtra("TweetSettingsActivity_account_name"));
        b(new boe((Context) this, this.c, 16).a(400), 1);
    }

    protected boolean h() {
        return true;
    }

    protected void onStop() {
        super.onStop();
        Session session = this.c;
        for (Entry value : this.b.entrySet()) {
            this.J.a(new bpj((Context) this, session, (TwitterUser) value.getValue()).a(1, false));
        }
        if (this.l != this.k && getIntent().getBooleanExtra("from_notification_landing", false)) {
            new y().execute(new Void[0]);
        }
    }

    protected boolean a(boolean z) {
        if (this.i == 0) {
            if (z) {
                c();
            } else if (this.f != null) {
                this.a.removePreference(this.f);
            }
        }
        setResult(-1, a(z, this.j));
        return true;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean n = n();
        TwitterUser a = ((UserCheckBoxPreference) preference).a();
        if (p.h(((Integer) obj).intValue())) {
            this.b.remove(Long.valueOf(a.c));
            this.j++;
        } else {
            this.b.put(Long.valueOf(a.c), a);
            this.j--;
        }
        setResult(-1, a(n, this.j));
        return true;
    }

    private Intent a(boolean z, int i) {
        if (this.h == null) {
            this.h = new Intent();
        }
        this.k = z;
        this.h.putExtra("enabled", z).putExtra("count", i);
        return this.h;
    }

    void a(List<TwitterUser> list) {
        int i;
        boolean n = n();
        PreferenceCategory preferenceCategory = this.a;
        if (!list.isEmpty()) {
            i = 0;
            for (TwitterUser twitterUser : list) {
                Preference userCheckBoxPreference = new UserCheckBoxPreference(this);
                userCheckBoxPreference.a(twitterUser);
                userCheckBoxPreference.setDefaultValue(Integer.valueOf(twitterUser.S));
                userCheckBoxPreference.setOnPreferenceChangeListener(this);
                preferenceCategory.addPreference(userCheckBoxPreference);
                i++;
            }
            this.g.setOrder(i + 1);
        } else if (n) {
            c();
            i = 0;
        } else {
            i = 0;
        }
        preferenceCategory.setTitle(getResources().getQuantityString(2131492891, i, new Object[]{Integer.valueOf(i)}));
        this.a = preferenceCategory;
        this.i = i;
        this.j = i;
        setResult(-1, a(n, this.j));
    }

    private void c() {
        if (this.f == null) {
            Preference preference = new Preference(this);
            preference.setOrder(0);
            preference.setTitle(2131363697);
            preference.setShouldDisableView(false);
            preference.setSelectable(false);
            this.f = preference;
        }
        this.a.addPreference(this.f);
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (i == 1) {
            d(true);
            if (xVar.U()) {
                a(((boe) xVar).a());
                return;
            }
            this.a.setTitle(null);
            Toast.makeText(this, 2131364102, 1).show();
        }
    }

    public static void a(Context context, String str, boolean z) {
        z.a(context).a(str, !PushRegistration.d(context, str), z);
    }

    public static boolean a(Context context, String str) {
        return cne.b(PushRegistration.a(context, str), AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
    }
}
