package com.twitter.android.highlights;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.view.View;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.FollowFlowController;
import com.twitter.android.av.v;
import com.twitter.android.bu;
import com.twitter.android.client.NotificationService;
import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.android.client.z;
import com.twitter.android.mx;
import com.twitter.android.util.aq;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.timeline.s;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.de;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.m;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.ble;
import defpackage.blg;
import defpackage.cdb;
import defpackage.cfb;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class HighlightsStoriesActivity extends StoriesActivity {
    private boolean A;
    private boolean B;
    private boolean C;
    private l s;
    private di t;
    private HashSet<Long> u;
    private boolean v;
    private String w;
    private ViewStub x;
    private boolean y;
    private int z;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!isFinishing()) {
            Session c = this.a.c();
            this.s = new l(this, c.e());
            this.t = di.a((Context) this, c.g());
            if (bundle != null) {
                this.u = (HashSet) ObjectUtils.a(bundle.getSerializable("STATE_SEARCH_IDS"));
                this.t.a(this.u);
                this.C = bundle.getBoolean("STATE_SHOULD_NUDGE_USER_IN_INTRO", false);
            } else {
                this.u = new HashSet();
                this.C = false;
            }
            this.x = (ViewStub) findViewById(2131952543);
            this.z = d.a("highlights_opt_out_after_story_count", 2);
            c(getIntent());
        }
    }

    protected int a() {
        return 1;
    }

    protected String b() {
        return "highlights";
    }

    protected String c() {
        return "storystream";
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        c(intent);
    }

    public void onBackPressed() {
        String str;
        String str2 = "exit";
        if (this.c.getCount() == 0) {
            super.onBackPressed();
            str = null;
        } else if (!this.B) {
            this.f.a(this.h, this.j, false);
            str = null;
        } else if (this.y) {
            super.onBackPressed();
            str = "opt_out_prompt";
            str2 = "dismiss";
        } else if (l()) {
            this.f.a(this.h, null, false);
            str = "opt_out_prompt";
            str2 = "impression";
        } else {
            this.f.a(this.h, this.j, false);
            str = null;
        }
        bbu.a(a(null, str, str2).a(StoryScribeItem.a("back_button")));
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("STATE_SEARCH_IDS", this.u);
    }

    protected void onDestroy() {
        if (this.t != null) {
            this.t.b(this.u);
        }
        super.onDestroy();
    }

    public void a(int i) {
        if (this.i != i && this.B && i >= this.z) {
            this.B = false;
        }
        super.a(i);
    }

    public void b(int i) {
        super.b(i);
        if (i != 0 && !this.h.f()) {
            this.C = false;
        }
    }

    public void d() {
        if (this.y) {
            this.h.setVisibility(8);
        } else {
            super.d();
        }
    }

    void e() {
        a(null);
    }

    void a(String str) {
        super.e();
        this.g.a(new blg((Context) this, this.a.c()).a(str).a(this.A), new ac(this));
    }

    public static void a(Activity activity, int i) {
        if (i == 3) {
            new l(activity, bg.a().c().e()).a().a("highlights_last_user_view_time", 0).apply();
        }
        activity.startActivity(new j(activity).a(i).a());
    }

    public static void a(Activity activity) {
        new l(activity, bg.a().c().e()).a().a("highlights_last_user_view_time", 0).apply();
        activity.startActivity(new j(activity).a(true).a());
    }

    int a(Intent intent) {
        boolean z;
        boolean z2 = true;
        if (g.a(this.s)) {
            z = false;
        } else {
            this.C = true;
            z = true;
        }
        if (intent == null) {
            return z;
        }
        int i;
        Uri data = intent.getData();
        if (intent.hasExtra("EXTRA_HIGHLIGHTS_FORCE_STATE")) {
            int intExtra = intent.getIntExtra("EXTRA_HIGHLIGHTS_FORCE_STATE", 0);
            if (intExtra != 2) {
                z2 = false;
            }
            this.C = z2;
            i = intExtra;
        } else {
            if (data != null) {
                if (data.getQueryParameter("promptbird") != null) {
                    i = 2;
                } else if ("true".equals(data.getQueryParameter("allow_optout"))) {
                    this.B = true;
                    z2 = z;
                } else if ("true".equals(data.getQueryParameter("ignore_nux"))) {
                    i = 0;
                }
            }
            z2 = z;
        }
        b(intent);
        this.A = intent.getBooleanExtra("EXTRA_HIGHLIGHTS_SAMPLE_STORIES", false);
        bbu.a(a(null, null, "impression"));
        return i;
    }

    protected void a(String str, long j) {
        z.a((Context) this).b(str, 32);
        Intent intent = getIntent();
        int a = a(intent);
        Object obj = (intent != null && intent.hasExtra("EXTRA_HIGHLIGHTS_FORCE_STATE") && a == 3) ? 1 : null;
        z.a((Context) this).a(j);
        long j2 = this.s.getLong("highlights_last_user_view_time", 0);
        this.s.a().a("highlights_last_user_view_time", m.b()).apply();
        a(intent, j2, a);
        setIntent(null);
        if (this.e) {
            this.h.setEnabled(true);
        }
        if (obj == null) {
            getSupportLoaderManager().initLoader(0, null, this);
        }
    }

    void b(Intent intent) {
        Uri data = intent.getData();
        this.v = intent.hasExtra("EXTRA_HIGHLIGHTS_TAPPED_STORY_ID");
        if (this.v) {
            this.w = intent.getStringExtra("EXTRA_HIGHLIGHTS_TAPPED_STORY_ID");
        } else if (data != null) {
            this.w = data.getQueryParameter("id");
        } else {
            this.w = null;
        }
    }

    protected void onPause() {
        super.onPause();
        z.a((Context) this).a(this.a.c().e(), 32);
    }

    void b(String str) {
        this.d = true;
        if (!"InvalidStoryId".equals(str)) {
            cfb.b("HighlightsActivity", "Activity started from notification, will move " + str + " to front!");
            AsyncOperation ble = new ble(getApplicationContext(), this.a.c(), str);
            ble.a(new i(this));
            this.o = true;
            this.g.a(ble);
        }
    }

    private void c(Intent intent) {
        if (intent != null && ab.a(intent)) {
            if (((StatusBarNotif) intent.getParcelableExtra("sb_notification")) != null) {
                NotificationService.a(getApplicationContext(), intent.getExtras());
            }
            bbw bbw = (TwitterScribeLog) intent.getParcelableExtra("EXTRA_HIGHLIGHTS_SCRIBE_LOG");
            if (bbw != null) {
                bbu.a(bbw);
            }
            intent.removeExtra("sb_notification");
            intent.removeExtra("EXTRA_HIGHLIGHTS_SCRIBE_LOG");
        }
    }

    void a(Intent intent, long j, int i) {
        int i2 = 0;
        boolean z = intent != null && this.v;
        if (z) {
            f();
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                int i3 = i == 0 ? 0 : 2;
                if (z) {
                    b(this.w);
                    a(null, i3, 100);
                } else if (intent != null) {
                    if (m.b() > 900000 + j) {
                        i2 = 1;
                    }
                    if (i2 != 0 || aj.b(this.w)) {
                        cfb.b("HighlightsActivity", "Non-notification launch, with stale data or story ID in URI. Will refresh.");
                        a(this.w);
                    } else {
                        this.d = true;
                    }
                    a(null, i3, 100);
                }
            case WireMessage.WIRE_AUTH /*3*/:
                a(null, 0, (int) mx.AppCompatTheme_checkedTextViewStyle);
            default:
                throw new IllegalArgumentException("Invalid override state specified");
        }
    }

    void f() {
        Session c = this.a.c();
        this.g.a(new s((Context) this, c, c.f(), 2).b("push_foreground").f(v.a()));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952545:
            case 2131952585:
                String str;
                String str2 = "exit";
                if (this.c.getCount() == 0) {
                    finish();
                    str = null;
                } else if (!this.B) {
                    this.f.a(this.h, this.j, false);
                    str = null;
                } else if (this.y) {
                    finish();
                    str = "opt_out_prompt";
                    str2 = "dismiss";
                } else if (l()) {
                    this.f.a(this.h, null, false);
                    str = "opt_out_prompt";
                    str2 = "impression";
                } else {
                    this.f.a(this.h, this.j, false);
                    str = null;
                }
                bbu.a(a(null, str, str2).a(StoryScribeItem.a("x_button")));
            case 2131952586:
                g.a(this, this.a.c().g(), false, ScribeLog.a("highlights", "storystream", null, "opt_out_prompt", "opt_out"));
                Toast.makeText(this, 2131362784, 0).show();
                finish();
            default:
                as a = a(view);
                if (a != null) {
                    switch (view.getId()) {
                        case 2131952552:
                            switch (((b) a).a) {
                                case mx.View_android_theme /*0*/:
                                    a(this.w);
                                    break;
                                case WireMessage.WIRE_CHAT /*1*/:
                                    new FollowFlowController("highlights").a(false).e(!aq.a(this).m()).c((Activity) this);
                                    break;
                            }
                            getSupportLoaderManager().initLoader(0, null, this);
                        default:
                            super.onClick(view);
                    }
                }
        }
    }

    private boolean l() {
        if (this.h.getCurrentItem() >= this.z) {
            return false;
        }
        this.x.inflate();
        findViewById(2131952586).setOnClickListener(this);
        findViewById(2131952585).setOnClickListener(this);
        ((TextView) findViewById(2131952584)).setText(aj.b(getString(2131362778), 2));
        this.y = true;
        return true;
    }

    protected void a(as asVar, boolean z) {
        super.a(asVar, z);
        if (asVar.a() == 10 && this.c.a() == 2) {
            g.a(this.s, true);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (absListView.getId() == 2131951721 && absListView.getChildCount() != 0) {
            ax axVar = (ax) absListView.getTag();
            if (i == 0) {
                aw awVar = (aw) this.c.a(axVar.F);
                if (awVar != null) {
                    bc a = this.b.a(awVar.e);
                    if (a != null && a.b == 0 && aj.b(awVar.b)) {
                        a.b = aj.a.nextLong();
                        this.u.add(Long.valueOf(a.b));
                        int i4 = this.l;
                        this.l = i4 + 1;
                        this.m.put(Integer.valueOf(i4), awVar.e);
                        this.t.j(a.b);
                        this.g.a(new com.twitter.library.api.search.d(this, this.a.c(), a.b, awVar.b, 0, "timeline", awVar.b, 0, null, false).a(1, false, false, false).a(10).a(false), a.a);
                        getSupportLoaderManager().restartLoader(i4, null, this);
                    }
                    this.n.add(awVar);
                }
            }
            if (i + i2 == i3) {
                int bottom = absListView.getChildAt(absListView.getChildCount() - 1).getBottom() - absListView.getHeight();
                int paddingBottom = absListView.getPaddingBottom();
                if (bottom > paddingBottom) {
                    axVar.E.setVisibility(0);
                } else if (bottom == paddingBottom) {
                    axVar.E.setVisibility(8);
                }
            }
        }
    }

    public void a(m mVar, p pVar) {
        mVar.a(2);
        k.a(mVar, pVar, this, this);
        if (this.C) {
            this.f.b(this.h);
        }
    }

    protected void a(x xVar) {
        super.a(xVar);
        l lVar = new l(this, bg.a().c().e());
        lVar.a().a("highlights_last_user_view_time", m.b()).apply();
    }

    protected void h() {
        super.h();
        new l(this, bg.a().c().e()).a().a("highlights_last_user_view_time").apply();
    }

    void i() {
        if (this.d) {
            this.w = null;
        }
        super.i();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return new bu(this, ck.a(de.a.buildUpon(), this.a.c().g()).build(), cdb.a, "story_tag=?", new String[]{String.valueOf(a())}, null);
            default:
                if (i >= 100) {
                    String str = (String) this.m.get(Integer.valueOf(i));
                    bc a = this.b.a(str);
                    if (a != null) {
                        Builder buildUpon = de.b.buildUpon();
                        ck.a(buildUpon, this.a.c().g()).appendPath(str).appendQueryParameter("search_id", String.valueOf(a.b));
                        return new bu(this, buildUpon.build(), null, null, null, null);
                    }
                }
                return null;
        }
    }

    protected void onStop() {
        for (as a : this.n) {
            bbu.a(a("story", null, "scroll").a(StoryScribeItem.a(a)));
        }
        for (Entry entry : this.p.entrySet()) {
            as asVar = (bb) entry.getKey();
            for (Tweet a2 : (Set) entry.getValue()) {
                bbu.a(a("story", "tweet", "impression").a(StoryScribeItem.a(asVar, a2)));
            }
        }
        super.onStop();
    }
}
