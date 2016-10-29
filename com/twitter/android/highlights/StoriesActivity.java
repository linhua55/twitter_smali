package com.twitter.android.highlights;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView;
import com.twitter.android.DispatchActivity;
import com.twitter.android.GalleryActivity;
import com.twitter.android.ImageActivity;
import com.twitter.android.ProfileActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.av.bd;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.fk;
import com.twitter.android.mx;
import com.twitter.android.widget.highlights.StoriesViewPager;
import com.twitter.android.widget.highlights.g;
import com.twitter.android.widget.highlights.k;
import com.twitter.app.common.account.a;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.u;
import com.twitter.config.AppConfig;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.provider.de;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.b;
import com.twitter.library.widget.ObservableScrollView;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.model.core.q;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.widget.FullScreenFrameLayout;
import com.twitter.ui.widget.e;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.m;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bcx;
import defpackage.blf;
import defpackage.cfb;
import defpackage.cgl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class StoriesActivity extends BaseFragmentActivity implements LoaderCallbacks<Cursor>, OnGlobalLayoutListener, ai, ak, g, k, e {
    protected bg a;
    protected am b;
    protected aj c;
    protected boolean d;
    protected boolean e;
    protected ad f;
    protected az g;
    protected StoriesViewPager h;
    protected int i;
    protected View j;
    protected TwitterScribeAssociation k;
    protected int l;
    protected HashMap<Integer, String> m;
    protected final Set<bb> n;
    protected boolean o;
    protected final Map<bb, Set<Tweet>> p;
    protected HashSet<String> q;
    private ViewGroup s;
    private boolean t;
    private as u;
    private float v;

    protected abstract int a();

    abstract void a(Intent intent, long j, int i);

    protected abstract String b();

    public StoriesActivity() {
        this.d = false;
        this.i = -1;
        this.n = new HashSet();
        this.p = new HashMap();
        this.t = true;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = bg.a();
        Session c = this.a.c();
        if (c.d()) {
            cfb.b("StoriesActivity", "Active user: " + c.e());
            this.k = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).b(b())).c(c());
            this.g = az.a((Context) this);
            if (bundle != null) {
                this.q = (HashSet) ObjectUtils.a(bundle.getSerializable("STATE_STORIES_VISITED"));
                this.l = bundle.getInt("STATE_NEXT_LOADER_ID", 100);
                this.m = (HashMap) ObjectUtils.a(bundle.getSerializable("STATE_AGGREGATE_STORY_IDS"));
            } else {
                this.q = new HashSet();
                this.l = 100;
                this.m = new HashMap();
            }
            setContentView(2130968888);
            Resources resources = getResources();
            getWindow().setBackgroundDrawable(new ColorDrawable(resources.getColor(2131886250)));
            this.s = (ViewGroup) findViewById(2131952544);
            ((FullScreenFrameLayout) findViewById(2131952542)).setFitSystemWindowListener(this);
            this.v = resources.getFraction(2131820551, 1, 1);
            this.j = findViewById(2131952545);
            this.j.setOnClickListener(this);
            this.h = (StoriesViewPager) findViewById(2131952546);
            this.h.setOffscreenPageLimit(2);
            this.h.setOnPageChangeListener(this);
            this.h.setEdgeListener(this);
            this.h.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.b = new am();
            this.c = new aj(this, this.b, this, b(), c(), a());
            this.h.setAdapter(this.c);
            this.f = new ad(resources, this);
            return;
        }
        cfb.b("StoriesActivity", "No logged in user; falling back to log in.");
        DispatchActivity.a((Activity) this);
    }

    protected String c() {
        return null;
    }

    protected void onResume() {
        super.onResume();
        Session c = this.a.c();
        a b = b.b(c.e());
        if (b == null) {
            cfb.b("StoriesActivity", "Current logged in user was removed; falling back to log in.");
            DispatchActivity.a((Activity) this);
            return;
        }
        a(b.d(), c.g());
    }

    protected void a(String str, long j) {
        a(getIntent(), 0, 0);
        setIntent(null);
        if (this.e) {
            this.h.setEnabled(true);
        }
        getSupportLoaderManager().initLoader(0, null, this);
    }

    protected void onStop() {
        this.n.clear();
        this.p.clear();
        super.onStop();
    }

    public void onBackPressed() {
        if (this.c.getCount() == 0) {
            super.onBackPressed();
        } else {
            this.f.a(this.h, this.j, false);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("STATE_STORIES_VISITED", this.q);
        bundle.putInt("STATE_NEXT_LOADER_ID", this.l);
        bundle.putSerializable("STATE_AGGREGATE_STORY_IDS", this.m);
    }

    protected void onDestroy() {
        if (this.b != null) {
            this.b.a();
        }
        super.onDestroy();
    }

    public void finish() {
        super.finish();
        overridePendingTransition(0, 2131034161);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.t = true;
    }

    public void onGlobalLayout() {
        if (this.t && this.h.getChildCount() > 0) {
            Resources resources = getResources();
            TypedValue typedValue = new TypedValue();
            resources.getValue(2131689981, typedValue, true);
            float f = typedValue.getFloat();
            int dimensionPixelOffset = resources.getDimensionPixelOffset(2131690030);
            int height = this.h.getChildAt(0).getHeight();
            int i = (int) (((float) height) * f);
            int dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131690003) * -1;
            int i2 = (i - resources.getDisplayMetrics().widthPixels) + dimensionPixelOffset;
            if (i2 > dimensionPixelOffset2) {
                int i3 = (height - ((int) (((float) ((resources.getDisplayMetrics().widthPixels + dimensionPixelOffset2) - dimensionPixelOffset)) / f))) / 2;
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.h.getLayoutParams();
                marginLayoutParams.topMargin = i3;
                marginLayoutParams.bottomMargin = i3;
                this.h.setLayoutParams(marginLayoutParams);
                i2 = dimensionPixelOffset2;
            }
            this.h.setPageMargin(i2);
            this.f.a = (resources.getDisplayMetrics().widthPixels - i) / 2;
            this.t = false;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        this.s.setPadding(i, i2, i3, i4);
    }

    public void a(int i, float f, int i2) {
        if (!this.e) {
            cfb.a("StoriesActivity", "initializing ViewPager");
            a(0);
            this.e = true;
            this.f.a(this.h);
        }
    }

    public void a(int i) {
        if (this.i != i) {
            if (this.u != null) {
                a(this.u, false);
            }
            as a = this.c.a(i);
            this.u = a;
            if (a != null) {
                a(a, true);
                this.i = i;
            }
        }
    }

    public void b(int i) {
    }

    protected void a(as asVar, boolean z) {
        int a = asVar.a();
        if (!(!z || this.q.contains(asVar.e) || asVar.k || a == 10 || a == 12)) {
            cfb.b("StoriesActivity", "Logging impression and setting read state for " + asVar.e);
            this.g.a(new blf(getApplicationContext(), this.a.c(), asVar.e, a()));
            a(asVar);
            this.q.add(asVar.e);
        }
        switch (a) {
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                ((u) asVar).a(z);
            default:
        }
    }

    void a(as asVar) {
        bbu.a(a("story", null, "impression").a(StoryScribeItem.a(asVar)));
        switch (asVar.a()) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                bbu.a(a("story", "tweet", "impression").a(StoryScribeItem.a(asVar)));
            case WireMessage.WIRE_CONTROL /*2*/:
                asVar = (bm) asVar;
                bbu.a(a("story", "tweet", "impression").a(StoryScribeItem.a(asVar, asVar.b)));
                bbu.a(a("story", "tweet", "impression").a(StoryScribeItem.a(asVar, asVar.a)));
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.TwitterButton_labelMargin /*14*/:
                bbu.a(a("story", "user", "impression").a(StoryScribeItem.a(asVar)));
            default:
        }
    }

    void e() {
        this.o = true;
    }

    public void onClick(View view) {
        as a = a(view);
        if (a != null) {
            switch (view.getId()) {
                case bcx.header_content /*2131951666*/:
                    a = (aw) a;
                    if (a.r) {
                        startActivity(a.a(getApplicationContext()));
                    } else {
                        a((Context) this, null, (cr) ((cu) new cu().e(a.m)).q(), this.a.c().g());
                    }
                    bbu.a(((TwitterScribeLog) a("story", null, "open_link").a(StoryScribeItem.a(a))).b(a.m));
                case bcx.name /*2131951683*/:
                case 2131952597:
                case 2131952601:
                    startActivity(a.a((Context) this));
                    bbu.a(a("story", null, "launch").a(StoryScribeItem.a(a)));
                case tv.periscope.android.library.k.avatar /*2131952012*/:
                case 2131952604:
                    TwitterUser twitterUser = (TwitterUser) view.getTag();
                    startActivity(u.a(ProfileActivity.a(this, twitterUser.bf_(), twitterUser.k, null, this.k, twitterUser.S, null, null), true));
                    bbu.a(a("story", "user", "image_click").a(StoryScribeItem.a(a)));
                case 2131952063:
                    ((u) a).a((at) view.getTag());
                case 2131952414:
                case 2131952599:
                case 2131952602:
                    com.twitter.media.request.a imageRequest = ((BaseMediaImageView) view).getImageRequest();
                    if (imageRequest != null) {
                        String a2 = imageRequest.a();
                        startActivity(new u().d(true).a((Context) this, ImageActivity.class).setData(Uri.parse(a2)).putExtra("image_url", a2));
                        bbu.a(a("story", null, "image_click").a(StoryScribeItem.a(a)));
                    }
                case 2131952587:
                    ((u) a).a((at) view.getTag(), true);
                case 2131952588:
                    ((u) a).a((at) view.getTag(), false);
                case 2131952589:
                    startActivity(new u().d(true).a((Context) this, TweetActivity.class).putExtra("tw", ((bp) a).b));
                case 2131952594:
                case 2131952617:
                    ((ao) view.getTag()).a((FragmentActivity) this, this.a.c());
                case 2131952595:
                case 2131952618:
                    ((ao) view.getTag()).a(this.g, this.a.c());
                case 2131952596:
                    ((aq) view.getTag()).a(this.g, this.a.c());
                case 2131952619:
                    startActivity(new u().d(true).a((Context) this, TweetActivity.class).putExtra("tw", ((bg) view.getTag()).k).putExtra("association", this.k));
                default:
            }
        }
    }

    protected as a(View view) {
        int currentItem = this.h.getCurrentItem();
        as a = this.c.a(currentItem);
        if (a == null) {
            return null;
        }
        View a2 = this.h.a(view);
        if (a2 == null || ((at) a2.getTag()).F == currentItem) {
            return a;
        }
        return null;
    }

    public void e(long j) {
    }

    public void d(long j) {
    }

    public void a(ap apVar) {
        startActivity(u.a(ProfileActivity.a(this, 0, apVar.i, null, null, -1, null, null).putExtra("association", this.k), true));
    }

    public void a(com.twitter.model.core.b bVar) {
        startActivity(u.a(fk.a((Context) this, bVar), true).putExtra("source_association", this.k));
    }

    public void a(q qVar) {
        startActivity(u.a(fk.a((Context) this, qVar), true).putExtra("source_association", this.k));
    }

    public void a(TwitterPlace twitterPlace) {
    }

    public void a(cr crVar) {
        as a = this.c.a(this.i);
        if (a != null) {
            bbw a2 = a(a, crVar);
            if (a2 != null) {
                a2.a(StoryScribeItem.a(a));
                bbu.a(a2);
            }
        }
        a((Context) this, null, crVar, this.a.c().g());
    }

    public boolean b(cr crVar) {
        return true;
    }

    public void a(cgl cgl) {
    }

    public void a(MediaEntity mediaEntity) {
    }

    public void a(TweetMediaView tweetMediaView, cgl cgl) {
        Tweet tweet = (Tweet) tweetMediaView.getTag();
        if ((tweetMediaView.getId() == 2131952589) || be.c(tweet)) {
            startActivity(new u().d(true).a((Context) this, TweetActivity.class).putExtra("tw", tweet).putExtra("association", this.k));
            return;
        }
        cr crVar = (cr) ((cu) new cu().e(cgl.c())).q();
        as b = b((View) tweetMediaView);
        if (b != null) {
            bbw a = a(b, crVar);
            if (a != null) {
                a.a(StoryScribeItem.a(b, tweet));
                bbu.a(a);
            }
        }
        a((Context) this, tweet, crVar, this.a.c().g());
    }

    public void a(TweetMediaView tweetMediaView, MediaEntity mediaEntity) {
        boolean z = tweetMediaView.getId() == 2131952589;
        Tweet tweet = (Tweet) tweetMediaView.getTag();
        if (tweet == null) {
            Throwable illegalArgumentException = new IllegalArgumentException("A tweet is required. Be sure that the view is properly configured.");
            bbn.a(illegalArgumentException);
            if (AppConfig.m().a()) {
                throw illegalArgumentException;
            }
            return;
        }
        if (z || mediaEntity.m == Type.ANIMATED_GIF) {
            startActivity(new u().d(true).a((Context) this, TweetActivity.class).putExtra("tw", tweet).putExtra("association", this.k));
        } else if (mediaEntity.m == Type.VIDEO) {
            new bd().a(tweet).d(true).a((Object) this);
        } else {
            Intent putExtra = new u().d(true).a((Context) this, GalleryActivity.class).putExtra("media", m.a((Object) mediaEntity, MediaEntity.a)).putExtra("source_tweet_id", mediaEntity.i).putExtra("statusId", tweet.H).putExtra("show_tw", false).putExtra("association", this.k);
            BaseMediaImageView a = tweetMediaView.a(mediaEntity);
            if (a != null) {
                GalleryActivity.a((Activity) this, putExtra, a);
            } else {
                startActivity(putExtra);
            }
        }
        as b = b((View) tweetMediaView);
        if (b != null) {
            String c = c(b.a());
            if (c != null) {
                bbu.a(a("story", c, "image_click").a(StoryScribeItem.a(b, tweet)));
            }
        }
    }

    public void a(TweetMediaView tweetMediaView, EditableMedia editableMedia) {
    }

    public void a(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        if (observableScrollView.getId() == 2131952598) {
            at atVar = (at) observableScrollView.getTag();
            int height = observableScrollView.getHeight();
            int height2 = observableScrollView.getChildAt(0).getHeight();
            if (i2 + height >= height2) {
                atVar.E.setVisibility(8);
            } else if (height + i4 >= height2) {
                atVar.E.setVisibility(0);
            }
        }
    }

    public void a(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView) {
    }

    public void b(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        if (observableScrollView.getId() == 2131952598) {
            observableScrollView.post(new ab(this, observableScrollView, i2));
        }
    }

    public void a(float f) {
        int b = this.c.b();
        if (!(this.c.a() == 1 && (b == 100 || b == mx.AppCompatTheme_buttonStyleSmall)) && f > this.v) {
            this.h.c();
            this.f.a(this.h, this.j, true);
            bbu.a(a(null, null, "exit").a(StoryScribeItem.a("swipe")));
        }
    }

    public void j() {
        if (this.h != null) {
            if (VERSION.SDK_INT >= 21) {
                this.i = -1;
                a(this.h.getCurrentItem());
            }
            this.h.setEnabled(true);
        }
    }

    public void d() {
        finish();
    }

    public void a(bb bbVar, Tweet tweet) {
        Set set = (Set) this.p.get(bbVar);
        if (set == null) {
            set = new HashSet();
            this.p.put(bbVar, set);
        }
        set.add(tweet);
    }

    public void a(m mVar, p pVar) {
    }

    public void a(Context context, Tweet tweet, cr crVar, long j) {
        OpenUriHelper.a(context, tweet, crVar, j, null, null, this.k, null);
    }

    void a(boolean z) {
        this.d = z;
    }

    public as b(View view) {
        View a = this.h.a(view);
        if (a == null) {
            return null;
        }
        return this.c.a(((at) a.getTag()).F);
    }

    private TwitterScribeLog a(as asVar, cr crVar) {
        String c = c(asVar.a());
        if (c == null) {
            return null;
        }
        return (TwitterScribeLog) a("story", c, "open_link").b(aj.b(crVar.C) ? crVar.C : crVar.B);
    }

    protected TwitterScribeLog a(String str, String str2, String str3) {
        return (TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(b(), c(), str, str2, str3);
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    private static String c(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TwitterEditText_messageSize /*9*/:
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return "tweet";
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.TwitterButton_labelMargin /*14*/:
                return "user";
            default:
                return null;
        }
    }

    void i() {
        this.o = false;
        com.twitter.library.provider.e eVar = new com.twitter.library.provider.e(getApplicationContext().getContentResolver());
        eVar.a(de.a);
        eVar.a();
    }

    void k() {
        bbw a = a("story", null, "load_finished");
        for (int i = 0; i < this.c.getCount(); i++) {
            as a2 = this.c.a(i);
            if (a2 != null) {
                a.a(StoryScribeItem.a(a2));
            }
        }
        bbu.a(a);
    }

    protected void a(x xVar) {
        a(true);
    }

    protected void h() {
        a(false);
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        int id = loader.getId();
        switch (id) {
            case mx.View_android_theme /*0*/:
                cfb.b("StoriesActivity", "Story load finished");
                if (this.o) {
                    a(null, this.c.a(), (int) mx.AppCompatTheme_buttonStyleSmall);
                } else {
                    a(cursor);
                }
            default:
                if (id >= 100) {
                    bc a = this.b.a((String) this.m.get(Integer.valueOf(id)));
                    if (a != null) {
                        a.a(cursor);
                    }
                }
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        int id = loader.getId();
        switch (id) {
            case mx.View_android_theme /*0*/:
                a(null, 0, (int) mx.AppCompatTheme_buttonStyleSmall);
            default:
                if (id >= 100) {
                    bc a = this.b.a((String) this.m.get(Integer.valueOf(id)));
                    if (a != null) {
                        a.a(null);
                    }
                }
        }
    }

    protected void a(Cursor cursor) {
        int i = mx.AppCompatTheme_editTextStyle;
        if (cursor == null || cursor.getCount() <= 0) {
            if (this.d) {
                i = mx.AppCompatTheme_checkedTextViewStyle;
            }
            a(null, 0, i);
            return;
        }
        if (this.c.a() != 1 && (this.c.b() == mx.AppCompatTheme_buttonStyleSmall || this.c.b() == 100)) {
            this.e = false;
            this.f.a();
        }
        int a = this.c.a();
        if (this.d) {
            i = mx.AppCompatTheme_checkboxStyle;
        }
        a(cursor, a, i);
        k();
    }

    void a(Cursor cursor, int i, int i2) {
        this.i = -1;
        this.c.a(cursor, i, i2);
    }
}
