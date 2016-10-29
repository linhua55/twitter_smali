package com.twitter.android.composer;

import android.accounts.Account;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.AccountsDialogActivity;
import com.twitter.android.MediaTagActivity;
import com.twitter.android.PermissionResult;
import com.twitter.android.UserAccount;
import com.twitter.android.av.monetization.g;
import com.twitter.android.bb;
import com.twitter.android.bp;
import com.twitter.android.composer.geotag.InlinePlacePickerView;
import com.twitter.android.composer.geotag.l;
import com.twitter.android.d;
import com.twitter.android.geo.GeoTagState;
import com.twitter.android.lf;
import com.twitter.android.media.imageeditor.EditImageFragment;
import com.twitter.android.media.imageeditor.y;
import com.twitter.android.media.imageeditor.z;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.media.widget.MediaAttachmentsView;
import com.twitter.android.mx;
import com.twitter.android.nativecards.CardPreviewView;
import com.twitter.android.nativecards.e;
import com.twitter.android.nativecards.pollcompose.PollComposeView;
import com.twitter.android.nativecards.pollcompose.o;
import com.twitter.android.nativecards.pollcompose.q;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.m;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.util.v;
import com.twitter.android.widget.ComposerPoiFragment;
import com.twitter.android.widget.ComposerSelectionFragment;
import com.twitter.android.widget.DraggableDrawerLayout;
import com.twitter.android.widget.FoundMediaAttributionView;
import com.twitter.android.widget.GalleryGridFragment;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.RevealClipFrameLayout;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.android.widget.ak;
import com.twitter.android.widget.bc;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.AppConfig;
import com.twitter.config.c;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.service.p;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.util.a;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.view.QuoteView;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.r;
import com.twitter.model.av.n;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ag;
import com.twitter.model.core.as;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableAnimatedGif;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.Tristate;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;
import com.twitter.util.concurrent.j;
import com.twitter.util.serialization.s;
import defpackage.abw;
import defpackage.apk;
import defpackage.ark;
import defpackage.asa;
import defpackage.atg;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.but;
import defpackage.cdg;
import defpackage.ced;
import defpackage.ceq;
import defpackage.cgl;
import defpackage.cgu;
import defpackage.cpf;
import defpackage.dbs;
import defpackage.tq;
import defpackage.um;
import defpackage.wu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import rx.an;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ComposerActivity extends TwitterFragmentActivity implements bb, z, ak, bc, a {
    static final /* synthetic */ boolean d;
    private static final String e;
    private View A;
    private FrameLayout[] B;
    private ImageView C;
    private TwitterButton D;
    private TwitterButton E;
    private TwitterButton K;
    private QuoteView L;
    private RevealClipFrameLayout M;
    private MediaAttachmentController N;
    private GalleryGridFragment O;
    private ComposerPoiFragment P;
    private ComposerSelectionFragment Q;
    private Session R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private long W;
    private az X;
    private boolean Y;
    private int Z;
    @VisibleForTesting
    bp a;
    private ced aA;
    private Pattern aB;
    private TextView aC;
    private EditImageFragment aD;
    private boolean aE;
    private boolean aF;
    private long aG;
    private boolean aH;
    private e aI;
    private cgl aJ;
    private boolean aK;
    private o aL;
    private q aM;
    private boolean aN;
    private wu aO;
    private com.twitter.android.composer.geotag.a aP;
    private an aQ;
    private g aR;
    private apk<n> aS;
    private bb aa;
    private at ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private boolean aj;
    private com.twitter.app.common.util.a ak;
    private Runnable al;
    private boolean am;
    private d an;
    private boolean ao;
    private int ap;
    private bo aq;
    private int ar;
    private int as;
    private Animation at;
    private Animation au;
    private boolean av;
    private Animator aw;
    private boolean ax;
    private boolean ay;
    private View az;
    @VisibleForTesting
    Tweet b;
    @VisibleForTesting
    ImageButton c;
    private final av f;
    private final boolean g;
    private final bg h;
    private TweetBox i;
    private int j;
    private ComposerScrollView k;
    private MediaAttachmentsView l;
    private FoundMediaAttributionView m;
    private UserImageView n;
    private TextView o;
    private View p;
    private ImageButton q;
    private ToggleImageButton r;
    private ImageButton s;
    private ImageButton t;
    private ComposerCountView u;
    private DraggableDrawerLayout v;
    private View w;
    private TextView x;
    private Button y;
    private View z;

    static {
        boolean z;
        if (ComposerActivity.class.desiredAssertionStatus()) {
            z = false;
        } else {
            z = true;
        }
        d = z;
        e = Integer.toString(140);
    }

    public ComposerActivity() {
        this.f = new av();
        this.h = new bg();
        this.S = -1;
        this.T = -1;
        this.W = -1;
        this.Z = 0;
        this.ap = 0;
        this.g = c.a("typeahead_button_triggering_android_2405", "to_button");
    }

    public t a(Bundle bundle, t tVar) {
        getTheme().applyStyle(com.twitter.config.d.a("android_tweet_composer_location_picker_end") ? 2131558733 : 2131558732, false);
        tVar.d(2130968714);
        tVar.b(false);
        tVar.a(false);
        tVar.d(true);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Uri uri;
        int[] intArray;
        int i;
        bb bbVar;
        Tweet tweet;
        asa.a("composer:complete", L(), ark.m).i();
        this.ag = false;
        aw a = aw.a(this);
        this.h.a(a.r());
        this.h.a(a.s());
        this.a = a.d();
        this.X = az.a((Context) this);
        String i2 = a.i();
        Session b = (bundle == null && aj.b((CharSequence) i2)) ? aa().b(i2) : ab();
        this.R = b;
        if (bundle != null) {
            bb bbVar2 = new bb((com.twitter.model.drafts.d) com.twitter.util.object.e.a(ab.a(bundle, "draft_tweet", com.twitter.model.drafts.d.a)));
            Tweet tweet2 = (Tweet) bundle.getParcelable("replied_tweet");
            uri = null;
            this.W = bundle.getLong("original_owner_id");
            this.ac = bundle.getBoolean("loaded_from_draft");
            this.Y = bundle.getBoolean("tweet_posted");
            this.aJ = (cgl) ab.a(bundle, "conversation_card_data", cgl.a);
            int i3 = bundle.getInt("current_drawer");
            int i4 = bundle.getInt("current_drawer_state");
            if (getResources().getConfiguration().orientation == 2 && i3 == 4 && i4 == 2) {
                this.T = 1;
                this.U = 1;
                this.ay = true;
            } else if (bundle.getBoolean("show_full_screen_suggestions")) {
                this.T = 4;
                this.U = 2;
            } else {
                this.T = i3;
                this.U = i4;
            }
            this.af = bundle.getBoolean("show_link_hint", true);
            this.ai = bundle.getInt("launch_camera_mode");
            intArray = bundle.getIntArray("selection");
            this.aE = bundle.getBoolean("edited_text");
            this.aF = bundle.getBoolean("reached_limit");
            this.ax = bundle.getBoolean("requesting_camera_permissions");
            i = 0;
            bbVar = bbVar2;
            tweet = tweet2;
        } else {
            bbVar = bb.a((Context) this, a);
            tweet = a.k();
            uri = a.p();
            this.W = b.g();
            this.ac = bbVar.c() != 0;
            this.Y = false;
            this.aJ = a.v();
            int b2 = a.b();
            this.ai = 0;
            this.aN = false;
            switch (b2) {
                case WireMessage.WIRE_AUTH /*3*/:
                    this.ai = a.c(1);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    this.aN = true;
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    this.ai = a.c(2);
                    break;
            }
            if (this.ai != 0) {
                this.T = 0;
            } else {
                this.T = b2 == 2 ? 2 : 1;
            }
            this.af = true;
            this.ah = true;
            intArray = a.f();
            this.h.a(this.W, a.q());
            i = a.c();
        }
        a(b);
        b(bundle);
        y();
        a(this.z);
        a(this.i);
        F();
        G();
        c(bundle);
        d(bundle);
        a(bbVar, tweet, uri, intArray, bundle == null, i);
        aq();
        a((String) com.twitter.util.object.e.a(b.e()));
        a(bundle);
        bm a2 = bm.a();
        if (!a2.b() || bundle == null) {
            if (this.i.n()) {
                a2.c();
            } else {
                a2.a(false);
            }
        }
        this.aS = new a(this);
        this.aR = new g(this, 523);
        this.aR.a(this.aS);
    }

    protected com.twitter.app.common.inject.a c(com.twitter.app.common.inject.t tVar) {
        return new ay(new ax(um.a(getApplicationContext())));
    }

    private void a(Session session) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        this.O = (GalleryGridFragment) supportFragmentManager.findFragmentByTag("gallery");
        if (this.O == null) {
            boolean z = !but.b() && com.twitter.media.filters.g.a((Context) this);
            this.O = GalleryGridFragment.b(2131558816, 0, z, 0, true);
            beginTransaction.add(2131952241, this.O, "gallery");
        }
        this.Q = (ComposerSelectionFragment) supportFragmentManager.findFragmentByTag("user_select");
        if (this.Q == null) {
            this.Q = new ComposerSelectionFragment();
            beginTransaction.add(2131952241, this.Q, "user_select");
        }
        this.P = (ComposerPoiFragment) supportFragmentManager.findFragmentByTag("location");
        if (this.P == null) {
            this.P = new ComposerPoiFragment();
            beginTransaction.add(2131952241, this.P, "location");
        }
        beginTransaction.commit();
        this.N = MediaAttachmentController.a(this, this, "composition", MediaType.h, 4, session);
        supportFragmentManager.executePendingTransactions();
    }

    private void a(TweetBox tweetBox) {
        tweetBox.setMaxChars(140);
        this.O.a(ah());
        this.O.a((bc) this);
        ComposerSelectionFragment composerSelectionFragment = this.Q;
        tweetBox.setTextWatcher(new l(this, tweetBox, composerSelectionFragment));
        if (com.twitter.util.c.f(this)) {
            tweetBox.setSuggestionsEnabled(false);
        } else if (this.g) {
            tweetBox.setSuggestionsEnabled(false);
            composerSelectionFragment.a(new w(this));
        }
    }

    private void a(Bundle bundle) {
        int i = bundle != null ? bundle.getInt("editing_media") : 0;
        if (i != 0) {
            this.M.setVisibility(0);
            this.aD = (EditImageFragment) getSupportFragmentManager().findFragmentByTag("image_edit");
            if (this.aD != null) {
                this.aD.a(i == 2 ? this.l : this.O);
                this.aD.a((z) this);
            }
        }
    }

    private void y() {
        this.z = findViewById(2131952254).findViewById(2131952259);
        this.A = ((ViewStub) findViewById(2131952246)).inflate();
        ImageButton imageButton = (ImageButton) this.A.findViewById(2131952248);
        Resources resources = getResources();
        imageButton.setImageDrawable(resources.getDrawable(2130837791));
        this.at = AnimationUtils.loadAnimation(this, 2131034144);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, 2131034146);
        loadAnimation.setAnimationListener(new ah(this, imageButton, resources, AnimationUtils.loadAnimation(this, 2131034145)));
        this.au = loadAnimation;
        imageButton.setOnClickListener(new am(this));
        this.c = imageButton;
        this.n = (UserImageView) findViewById(2131952258);
        this.o = (TextView) findViewById(2131953116);
        this.n.setLayerType(1, null);
        View findViewById = findViewById(2131951990);
        if (findViewById == null) {
            findViewById = this.n;
        }
        findViewById.setOnClickListener(new an(this));
        findViewById(2131952255).setOnClickListener(new ao(this));
        this.r = (ToggleImageButton) findViewById(2131952247);
        if (com.twitter.config.d.a("cards_polling_card_poll2choice_text_only_compose")) {
            this.aM = (PollComposeView) findViewById(2131952236);
            this.t = (ImageButton) findViewById(2131952250);
            this.t.setVisibility(0);
            if (com.twitter.config.d.a("cards_polling_card_new_poll_icon_compose")) {
                this.t.setImageDrawable(getResources().getDrawable(2130840099));
            }
            this.t.setOnClickListener(new ap(this));
        }
        this.u = (ComposerCountView) findViewById(2131952251);
        this.y = (Button) findViewById(2131952253);
        this.y.setOnClickListener(new aq(this));
        this.p = findViewById(2131952256);
        if (this.p != null) {
            this.p.setOnClickListener(new b(this));
            E();
        }
        this.q = (ImageButton) findViewById(2131952257);
        if (v.a((Context) this)) {
            this.s = (ImageButton) findViewById(2131952249);
            this.s.setVisibility(0);
            this.s.setOnClickListener(new c(this));
            if (aw.a(this).c() != 1) {
                this.aq.a("found_media_tooltip", getSupportFragmentManager());
            }
        }
    }

    private void B() {
        if (this.t != null) {
            boolean z = this.aa.g().isEmpty() && !this.aK && this.aa.j() == null;
            this.t.setEnabled(z);
            this.t.setAlpha(z ? 1.0f : 0.3f);
        }
    }

    private void C() {
        boolean z = true;
        boolean z2 = this.aL == null || !this.aa.l() || this.aL.c();
        if (aj()) {
            this.y.setText(2131363369);
        } else if (this.aa.j() == null || !this.i.getText().isEmpty()) {
            this.y.setText(2131363376);
        } else {
            this.y.setText(2131364030);
        }
        Button button = this.y;
        if (!(this.V && !this.N.f() && z2)) {
            z = false;
        }
        button.setEnabled(z);
    }

    private void E() {
        long g = this.R.g();
        j a = new com.twitter.util.concurrent.c().a(p.a().a(ExecutionClass.SERIAL_BACKGROUND)).a(new d(this, com.twitter.library.provider.v.a(this, g))).a();
        a.b(new f().a(i.b).a(new e(this, g)));
        a(a);
    }

    private void a(View view) {
        View findViewById = findViewById(16908290);
        findViewById.getViewTreeObserver().addOnGlobalLayoutListener(new f(this, findViewById));
        DraggableDrawerLayout draggableDrawerLayout = (DraggableDrawerLayout) findViewById(2131952220);
        this.v = draggableDrawerLayout;
        draggableDrawerLayout.a(false);
        draggableDrawerLayout.setDrawerLayoutListener(this);
        this.an = new d(this, draggableDrawerLayout, new g(this));
        TweetBox tweetBox = (TweetBox) findViewById(2131952227);
        this.i = tweetBox;
        tweetBox.setTweetBoxListener(new h(this));
        ComposerScrollView composerScrollView = (ComposerScrollView) findViewById(bcx.scroll);
        this.k = composerScrollView;
        composerScrollView.setObservableScrollViewListener(new i(this, view, composerScrollView, tweetBox));
        View childAt = composerScrollView.getChildAt(0);
        childAt.setOnClickListener(new j(this, tweetBox));
        childAt.setOnLongClickListener(new k(this, tweetBox));
        this.l = (MediaAttachmentsView) findViewById(2131952231);
        this.l.setActionListener(new m(this));
        this.m = (FoundMediaAttributionView) findViewById(2131952232);
        this.D = (TwitterButton) findViewById(2131952233);
        this.D.setOnClickListener(new n(this));
        this.E = (TwitterButton) findViewById(2131952234);
        this.ar = this.E.getVisibility();
        this.K = (TwitterButton) findViewById(2131952235);
        this.as = this.K.getVisibility();
        this.w = findViewById(2131952237);
        this.C = (ImageView) findViewById(2131952238);
        this.x = (TextView) findViewById(2131952239);
        this.L = (QuoteView) findViewById(2131952230);
        this.L.setDisplaySensitiveMedia(true);
        this.L.setRenderRtl(com.twitter.util.ak.f());
        this.M = (RevealClipFrameLayout) findViewById(2131952260);
        this.az = findViewById(2131952225);
        this.aC = (TextView) findViewById(2131952224);
        this.aA = new ced(getResources(), 2131362293, this.az, 2131952226);
        Animator duration = ObjectAnimator.ofFloat(findViewById(2131952237), "translationY", new float[]{0.0f, 1.0f}).setDuration(450);
        duration.setInterpolator(new DecelerateInterpolator(2.0f));
        duration.addListener(new o(this));
        this.aw = duration;
    }

    void a(String str) {
        Session session;
        bg aa = aa();
        Session c = aa.c();
        if (str.equalsIgnoreCase(c.e())) {
            session = c;
        } else {
            session = aa.b(str);
            aa.c(session);
        }
        this.R = session;
        TwitterUser f = session.f();
        if (d || f != null) {
            this.n.a(f);
            if (this.o != null) {
                this.o.setText(f.d);
            }
            this.aP.c();
            E();
            as();
            b(this.aa.c(), this, c, this.X);
            this.aa.a(0);
            this.Z = 0;
            i(false);
            bp.a();
            this.aO.b();
            return;
        }
        throw new AssertionError();
    }

    private void a(bb bbVar, Tweet tweet, Uri uri, int[] iArr, boolean z, int i) {
        this.aa = bbVar;
        this.Z = bbVar.c() > 0 ? 2 : 0;
        this.i.a(bbVar.d(), iArr);
        AttachMediaListener asVar = new as(this, z);
        if (!bbVar.g().isEmpty()) {
            this.l.setVisibility(0);
            this.N.a(bbVar.g(), asVar);
        }
        if (uri != null) {
            a(uri, r.a(), new as(this, z));
        }
        as j = bbVar.j();
        if (j != null) {
            this.L.setQuoteData(j);
            this.L.setVisibility(0);
            this.i.setQuote(j);
            g(false);
            this.c.setImageDrawable(getResources().getDrawable(2130837791));
            av();
            aw();
        }
        a(tweet);
        long f = bbVar.f();
        this.j = f > 0 ? 2131363369 : 2131363376;
        this.i.setImeActionLabel(getText(this.j));
        if (f > 0 && tweet == null) {
            j a = atg.a(getContentResolver(), ck.a(ContentUris.withAppendedId(dd.c, f), this.R.g()), cdg.a);
            a.b(new f().a(i.a).a(new p(this)));
            a(a);
        }
        ae();
        if (this.aa.l() || this.aN) {
            if (this.aL != null) {
                this.aL.a(this.aa.k());
            } else {
                this.aa.a(null);
            }
            this.aN = false;
        } else if (this.aL != null) {
            this.aL.a();
        }
        if (v.a((Context) this) && i == 1) {
            this.aq.a("found_media_umf_tooltip", getSupportFragmentManager());
        }
    }

    void a(Tweet tweet) {
        this.b = tweet;
        this.i.a(tweet, Tristate.a(this.aa.a()));
        g(true);
        if (tweet != null) {
            this.aa.a(tweet);
            this.aB = Pattern.compile("(?:^|\\s)@" + tweet.v + "(?:\\s|$)", 2);
            this.aA.a(tweet);
            this.aC.setText(getString(2131362292, new Object[]{tweet.v, tweet.f()}));
        } else {
            this.aB = null;
        }
        w();
        ap();
    }

    private void b(Bundle bundle) {
        this.aq = bo.a(this, getSupportFragmentManager(), bundle);
        this.aq.a(new q(this));
    }

    private void F() {
        CardPreviewView cardPreviewView = (CardPreviewView) findViewById(2131952058);
        this.aI = com.twitter.android.nativecards.g.a().a(this, cardPreviewView, this.aJ);
        this.aI.a(new r(this));
        cardPreviewView.setController(this.aI);
        cardPreviewView.a((ProgressBar) findViewById(2131952252), Collections.singletonList(findViewById(2131952251)));
    }

    private void G() {
        if (com.twitter.config.d.a("cards_polling_card_poll2choice_text_only_compose")) {
            this.aL = new o(this.aM, new com.twitter.android.nativecards.pollcompose.i().a(this));
            this.aL.a(new s(this));
        }
    }

    private void c(Bundle bundle) {
        this.aO = new wu(this, new t(this), getSupportFragmentManager(), aa(), this.q, this.w, this.x, this.C, this.h, bundle);
    }

    private void d(Bundle bundle) {
        com.twitter.android.geo.c cVar = new com.twitter.android.geo.c(this, "composer_activity_location_dialog", lf.a(), 516);
        com.twitter.android.composer.geotag.e uVar = new u(this);
        bg a = bg.a();
        this.aP = new com.twitter.android.composer.geotag.a(this, uVar, a, this.X, P(), cVar, this.P, new l((InlinePlacePickerView) findViewById(2131952632), a, this.P.k()), (TextView) findViewById(2131952634), this.r, this.w, this.x, this.C, bundle);
    }

    private void ad() {
        av();
        aw();
        B();
    }

    private void ae() {
        boolean z = (this.aa.g().isEmpty() && this.aa.j() == null && !this.aa.l()) ? false : true;
        this.aI.a(this.i.getText(), z);
    }

    public boolean D() {
        return false;
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        this.z.setVisibility(8);
    }

    public boolean a(w wVar) {
        ToolBar j = wVar.j();
        j.setDisplayShowHomeAsUpEnabled(false);
        if (super.a(wVar) && j.c()) {
            return true;
        }
        return false;
    }

    private void b(View view) {
        if (view.getRootView().getHeight() - view.getHeight() > getResources().getDimensionPixelSize(2131690566)) {
            af();
        } else if (this.S == 1) {
            this.S = -1;
        }
    }

    private void af() {
        if (this.ae) {
            this.v.a(false);
            this.S = 1;
            this.ae = false;
        }
        this.i.findViewById(2131952228).setFocusableInTouchMode(false);
        aq();
        ag();
    }

    private void ag() {
        if (this.A.findViewById(2131952248).getVisibility() == 0) {
            this.aq.a("record_video_tooltip", getSupportFragmentManager());
            t();
        }
    }

    private FrameLayout[] ah() {
        if (this.B != null) {
            if (this.b != null && this.aH) {
                List arrayList = new ArrayList();
                for (Object obj : this.B) {
                    if (!(obj instanceof PeriscopeBroadcastGalleryItem)) {
                        arrayList.add(obj);
                    }
                }
                this.B = (FrameLayout[]) arrayList.toArray(new FrameLayout[arrayList.size()]);
                this.aH = false;
            }
            return this.B;
        }
        LayoutInflater layoutInflater = getLayoutInflater();
        ArrayList arrayList2 = new ArrayList();
        FrameLayout frameLayout = (FrameLayout) layoutInflater.inflate(2130968841, null);
        frameLayout.setOnClickListener(new v(this));
        arrayList2.add(frameLayout);
        FrameLayout frameLayout2 = (FrameLayout) layoutInflater.inflate(2130968843, null);
        frameLayout2.setOnClickListener(new x(this));
        arrayList2.add(frameLayout2);
        if (this.b == null && but.a()) {
            PeriscopeBroadcastGalleryItem periscopeBroadcastGalleryItem = new PeriscopeBroadcastGalleryItem(this);
            if (but.a(this)) {
                periscopeBroadcastGalleryItem.c();
            } else {
                periscopeBroadcastGalleryItem.d();
            }
            periscopeBroadcastGalleryItem.setOnClickListener(new y(this));
            arrayList2.add(periscopeBroadcastGalleryItem);
            this.aH = true;
        }
        frameLayout2 = (FrameLayout) layoutInflater.inflate(2130968840, null);
        frameLayout2.setOnClickListener(new z(this));
        arrayList2.add(frameLayout2);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, 2131034192);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this, 2131034193);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            FrameLayout frameLayout3 = (FrameLayout) it.next();
            frameLayout3.setBackgroundColor(getResources().getColor(2131886419));
            frameLayout3.setOnTouchListener(new ab(this, new GestureDetector(this, new aa(this, frameLayout3, loadAnimation, loadAnimation2)), frameLayout3));
        }
        ((ImageView) frameLayout2.findViewById(k.image)).setImageResource(2130837785);
        ImageView imageView = (ImageView) frameLayout.findViewById(k.image);
        imageView.setImageResource(2130837788);
        imageView.setContentDescription(getResources().getString(2131361994));
        this.B = (FrameLayout[]) arrayList2.toArray(new FrameLayout[arrayList2.size()]);
        return this.B;
    }

    protected void onResumeFragments() {
        this.ag = true;
        super.onResumeFragments();
        boolean z = this.ah;
        if (this.T != -1) {
            if (this.T == 4 && this.U == 1 && this.v.d()) {
                a(1, false);
            } else if (this.T == 2) {
                c(false);
            } else {
                boolean z2;
                if (this.U == 2 || this.T == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                a(this.T, false, z2);
            }
            this.U = -1;
            this.T = -1;
        }
        this.ah = z;
        d(this.i.hasFocus());
        asa.a("composer:complete", L(), ark.m).j();
        if ((this.v.d() && this.S == 1) || at()) {
            ag();
        }
        if (this.M.getVisibility() == 0) {
            this.i.setVisibility(4);
        }
    }

    protected void onResume() {
        super.onResume();
        this.X.a(this.f);
        if (!(this.ai == 0 || this.ax)) {
            if (this.ak == null) {
                com.twitter.app.common.util.c a = com.twitter.app.common.util.c.a();
                this.ak = new ac(this, a);
                a.a(this.ak);
            }
            g(this.ai);
        }
        if (ai()) {
            finish();
        }
        ap();
    }

    private boolean ai() {
        return this.aG > 0 && System.currentTimeMillis() - this.aG > 30000;
    }

    private void e(boolean z) {
        if (!(!z || this.R == null || this.R.g() == this.W)) {
            aa().c(aa().b(this.W));
        }
        super.finish();
        if (this.aP != null) {
            this.aP.a(this.ac, this.ap);
        }
        overridePendingTransition(2131034171, 2131034172);
        long u = aw.a(this).u();
        if (u != 0) {
            com.twitter.android.card.j.b().a(u, this.Y ? -1 : 0);
        }
        this.h.a();
    }

    public void finish() {
        e(true);
    }

    protected void onPause() {
        this.X.b(this.f);
        this.ag = false;
        if (this.S == 2) {
            View findViewById = this.i.findViewById(2131952228);
            findViewById.setFocusableInTouchMode(true);
            findViewById.requestFocus();
        }
        super.onPause();
    }

    protected void onStop() {
        as();
        if (this.Z == 2) {
            if (j()) {
                i(false);
            } else if (!this.Y) {
                ar();
                this.Z = 0;
            }
        }
        super.onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.N != null) {
            this.N.h();
        }
        if (this.i != null) {
            this.i.setTweetBoxListener(null);
        }
        if (this.Q != null) {
            this.Q.a(null);
        }
        SuggestionsProvider.b();
        SuggestionsProvider.c();
        if (this.al != null) {
            new Handler(Looper.getMainLooper()).removeCallbacks(this.al);
            this.al = null;
        }
        if (this.aI != null) {
            this.aI.e();
            this.aI.a(null);
        }
        if (this.aP != null) {
            this.aP.f();
        }
        if (this.aQ != null) {
            this.aQ.K_();
        }
        if (this.aR != null && this.aS != null) {
            this.aR.b(this.aS);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        as();
        au();
        ab.a(bundle, "draft_tweet", f(), com.twitter.model.drafts.d.a);
        bundle.putParcelable("replied_tweet", this.b);
        bundle.putLong("original_owner_id", this.W);
        bundle.putBoolean("loaded_from_draft", this.ac);
        bundle.putBoolean("tweet_posted", this.Y);
        ab.a(bundle, "conversation_card_data", this.aJ, cgl.a);
        bundle.putInt("current_drawer", this.S);
        bundle.putInt("current_drawer_state", this.v.getDrawerState());
        bundle.putBoolean("show_link_hint", this.af);
        bundle.putInt("launch_camera_mode", this.ai);
        bundle.putIntArray("selection", this.i.getSelection());
        bundle.putBoolean("edited_text", this.aE);
        bundle.putBoolean("reached_limit", this.aF);
        bundle.putBoolean("show_full_screen_suggestions", this.ay);
        int i = 0;
        if (this.aD != null) {
            if (this.aD.b() == this.O) {
                i = 1;
            } else if (this.aD.b() == this.l) {
                i = 2;
            }
        }
        bundle.putInt("editing_media", i);
        this.aq.a(bundle);
        bundle.putBoolean("requesting_camera_permissions", this.ax);
        this.aO.a(bundle);
        this.aP.a(bundle);
    }

    protected void o() {
        if (j()) {
            f(av_());
            return;
        }
        setResult(0);
        super.o();
    }

    public void c() {
        GeoTagState a = this.aP.a();
        String str = a.c() ? a.e().d : null;
        TwitterUser f = this.R.f();
        if (!this.aO.a() || f == null) {
            this.aP.a(str);
        } else {
            this.aO.a(str, f);
        }
        if (this.i != null) {
            this.i.l();
        }
    }

    void a(int i, boolean z) {
        a(i, z, false);
    }

    void a(int i, boolean z, boolean z2) {
        boolean z3 = true;
        if (this.S != i && !this.v.c()) {
            this.v.clearAnimation();
            if (this.ag) {
                if ((i == 1 && at()) || (i != 2 && this.M.getVisibility() == 0)) {
                    i = 0;
                }
                if (i == 1 && this.v.getDrawerState() == 2) {
                    if (this.v.d()) {
                        this.v.a(z);
                    } else {
                        this.ao = true;
                        this.v.a(z, false);
                        return;
                    }
                }
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                switch (i) {
                    case mx.View_android_theme /*0*/:
                    case WireMessage.WIRE_CHAT /*1*/:
                        beginTransaction.hide(this.O);
                        beginTransaction.hide(this.P);
                        beginTransaction.hide(this.Q);
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        beginTransaction.hide(this.P);
                        beginTransaction.hide(this.Q);
                        beginTransaction.show(this.O);
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        beginTransaction.hide(this.O);
                        beginTransaction.hide(this.Q);
                        beginTransaction.show(this.P);
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        beginTransaction.hide(this.O);
                        beginTransaction.hide(this.P);
                        beginTransaction.show(this.Q);
                        this.Q.p();
                        break;
                }
                beginTransaction.commit();
                this.S = i;
                this.v.setExtendDrawerInUpState(false);
                this.v.setDrawerDraggable(false);
                this.v.setDraggableBelowUpPosition(true);
                this.v.setDispatchDragToChildren(false);
                this.v.setLocked(false);
                this.v.setFullScreenHeaderView(null);
                switch (i) {
                    case mx.View_android_theme /*0*/:
                        this.v.a(z);
                        this.i.a(false);
                        break;
                    case WireMessage.WIRE_CHAT /*1*/:
                        this.ae = true;
                        this.i.a(true);
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        this.i.a(false);
                        this.O.a(this.v);
                        this.v.a(z, z2);
                        this.l.d();
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        this.ae = false;
                        this.i.a(false);
                        this.v.setLocked(true);
                        this.v.a(z, z2);
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        TweetBox tweetBox = this.i;
                        if (z2) {
                            z3 = false;
                        }
                        tweetBox.a(z3);
                        this.Q.a(this.v);
                        this.v.a(z, z2);
                        if (!z2) {
                            this.i.j();
                            break;
                        }
                        this.Q.f();
                        this.Q.a(this.i.getTokenAtCursor());
                        break;
                }
                this.ah = false;
                return;
            }
            this.T = i;
        }
    }

    public void onBackPressed() {
        int i = 0;
        if (this.aD == null || this.M.getVisibility() != 0) {
            int i2;
            if (this.ah || this.S == 0 || this.S == -1) {
                i2 = true;
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
                if (j()) {
                    f(av_());
                    return;
                } else {
                    super.onBackPressed();
                    return;
                }
            } else if (this.S == 2) {
                z();
                return;
            } else {
                if (this.v.getDrawerState() == 2) {
                    i = 1;
                }
                a(i, true);
                return;
            }
        }
        this.aD.f();
    }

    private void f(boolean z) {
        ec ecVar = (ec) ((ec) new ec(InputDeviceCompat.SOURCE_DPAD).a(getString(2131363373))).f(2131362398);
        if (z) {
            ecVar.d(2131363522);
        } else {
            ecVar.e(2131362041);
        }
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ecVar.i();
        promptDialogFragment.a(new ad(this));
        promptDialogFragment.a(getSupportFragmentManager());
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.N.a(i, i2, intent, new as(this, true));
        switch (i) {
            case InputDeviceCompat.SOURCE_KEYBOARD /*257*/:
                if (intent != null && intent.getData() != null) {
                    a(0, false);
                }
            case 258:
                if (i2 == -1) {
                    this.ai = 0;
                    a(0, false);
                    this.al = new ae(this);
                    new Handler(Looper.getMainLooper()).postDelayed(this.al, 1000);
                } else if (this.ai != 0) {
                    this.ai = 0;
                    finish();
                }
            case 259:
                this.O.f();
            case 261:
                if (i2 == -1 && intent != null) {
                    a(0, false);
                }
            case InputDeviceCompat.SOURCE_DPAD /*513*/:
                if (i2 == -1 && intent != null) {
                    List list = (List) ab.a(intent, "photo_tags", s.a(ag.a));
                    for (DraftAttachment a : this.aa.g()) {
                        EditableMedia a2 = a.a(2);
                        if (a2 instanceof EditableImage) {
                            ((EditableImage) a2).g = list;
                        }
                    }
                    if (list != null) {
                        b(list);
                    }
                }
            case 514:
                if (i2 == 1 && intent != null) {
                    Account account = ((UserAccount) intent.getParcelableExtra("account")).a;
                    if (!account.name.equals(this.R.e())) {
                        this.an.a(account);
                    }
                }
            case 515:
                if (i2 == -1 && intent != null) {
                    as();
                    com.twitter.model.drafts.d dVar = com.twitter.app.drafts.i.a(intent).a;
                    if (dVar != null) {
                        this.ac = true;
                        a(new bb(dVar), null, null, null, false, 0);
                    }
                }
                a(1, true);
            case 517:
                if (i2 == -1 && PermissionRequestActivity.a(intent)) {
                    g(this.ai);
                }
                this.ai = 0;
                this.ax = false;
            case 518:
                if (i2 == -1 && intent != null) {
                    PermissionResult permissionResult = (PermissionResult) intent.getParcelableExtra("extra_perm_result");
                    if (permissionResult.a()) {
                        this.O.c();
                        u();
                        return;
                    }
                    com.twitter.android.runtimepermissions.c.a(this, this.c, lf.a().b(this, permissionResult.b));
                }
            case 519:
                if (i2 == -1 && PermissionRequestActivity.a(intent)) {
                    Uri p = aw.a(this).p();
                    if (p != null) {
                        a(p, r.a(), new as(this, true));
                    }
                }
            case 520:
                if (intent != null) {
                    DraftAttachment a3 = v.a(intent);
                    if (a3 != null) {
                        a(a3, new as(this, false));
                    }
                }
                v.a(ComposerType.FULL_COMPOSER, intent);
            case 521:
                if (i2 == -1 && intent != null) {
                    this.l.getSelectedImage().i = intent.getStringExtra("alt_text");
                    this.l.e();
                }
            case 522:
                if (i2 == 3309) {
                    this.h.o();
                } else if (i2 == 3310) {
                    startActivity(intent);
                    this.h.p();
                }
            case 769:
                if (i2 == -1 && this.aL != null) {
                    if (intent != null) {
                        this.aL.a((EditableImage) intent.getParcelableExtra("extra_editable_image"));
                        return;
                    }
                    this.aL.b();
                }
            default:
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 516:
                this.aP.a(strArr, iArr);
            default:
        }
    }

    private static boolean a(List<DraftAttachment> list) {
        for (DraftAttachment draftAttachment : list) {
            EditableMedia a = draftAttachment.a(2);
            if (draftAttachment.d == 0 && (a instanceof EditableImage)) {
                return true;
            }
        }
        return false;
    }

    private void b(List<ag> list) {
        CharSequence b = com.twitter.library.media.util.ab.b(this, list, 0);
        if (list.isEmpty()) {
            e(8);
            this.E.setText(getResources().getQuantityText(2131492874, this.aa.g().size()));
            c(0);
            return;
        }
        this.K.setText(b);
        e(0);
        c(8);
    }

    void e() {
        this.Y = true;
        Context applicationContext = getApplicationContext();
        Session session = this.R;
        com.twitter.model.drafts.d f = f();
        as j = this.aa.j();
        boolean z = j != null && aj.a(this.i.getText());
        Object obj = (j == null || j.b != session.g()) ? null : 1;
        ay();
        if (z) {
            ar();
            this.Z = 3;
            this.a.a(applicationContext, session, j.e, j.e, j.m);
        } else {
            as();
            this.a.a(applicationContext, session, f);
        }
        long c = bm.a().c();
        if (obj != null) {
            this.h.a(this.ac, aj(), true, z, j != null, f.g, c, this, this.aI.d(), this.aI.c());
        }
        this.h.a(this.ac, aj(), false, z, j != null, f.g, c, this, this.aI.d(), this.aI.c());
        this.h.a(applicationContext, f.d, this.ac, aj());
        this.h.a(f.d);
        this.h.a(f.k, aj());
        com.twitter.android.media.imageeditor.stickers.c.a(session.g(), f);
        this.ap = 1;
        Intent intent = getIntent();
        setResult(-1, new Intent().putExtra("android.intent.extra.RETURN_RESULT", intent.getStringExtra("android.intent.extra.RETURN_RESULT")).putExtra("extra_is_retweet", z));
        intent = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
        if (intent != null) {
            intent.setFlags(67108864);
            d(intent);
        }
        e(false);
    }

    public com.twitter.model.drafts.d f() {
        this.aa.b(this.aI.b());
        this.aa.a(this.aP.d());
        return this.aa.b();
    }

    void i() {
        if (this.aO.a()) {
            this.aO.a(514);
        } else {
            e();
        }
    }

    protected boolean j() {
        return !this.Y && (this.i.d() || this.aa.e() || !this.aa.g().isEmpty() || ((this.aa.l() && !this.aL.d()) || this.ac));
    }

    protected boolean av_() {
        return (this.aa.g().isEmpty() && this.i.m() && !this.aa.l()) ? false : true;
    }

    void a(boolean z) {
        this.i.a(z);
        if (z) {
            this.S = 1;
        }
    }

    void l() {
        if (this.S != 1) {
            this.h.i();
            a(1, true);
        }
    }

    private boolean aj() {
        return this.b != null && (this.b.s == this.R.g() || this.aa.a() || (this.aB != null && this.aB.matcher(this.i.getText()).find()));
    }

    public void a(EditableMedia editableMedia) {
        if (this.aa.c(editableMedia.e())) {
            this.N.a(editableMedia.d(), new as(this, false));
        } else if (editableMedia.g() == MediaType.VIDEO) {
            a(editableMedia, null);
        } else if (a(editableMedia.d(), editableMedia.g(), false)) {
            a(new DraftAttachment(editableMedia), new as(this, true));
            if (this.aa.g().size() == 1) {
                a(0, true);
                return;
            }
        }
        this.av = true;
    }

    public void a(EditableMedia editableMedia, View view) {
        Uri d = editableMedia.d();
        if (!this.aa.c(d) && !this.aa.a(editableMedia.g())) {
            return;
        }
        if (editableMedia instanceof EditableImage) {
            y yVar = this.aa.c(d) ? this.l : this.O;
            if (yVar == this.l) {
                this.l.setSelectedImage((EditableImage) editableMedia);
            }
            this.aD = EditImageFragment.a(yVar, this, view, this.M, (EditableImage) editableMedia, "composer");
            if (this.aD != null) {
                getSupportFragmentManager().beginTransaction().add(this.M.getId(), this.aD, "image_edit").commit();
            }
        } else if (editableMedia instanceof EditableAnimatedGif) {
            a(new DraftAttachment(editableMedia), new as(this, true));
            a(0, true);
        } else {
            b(editableMedia, view);
        }
    }

    public void b(boolean z) {
        boolean z2 = true;
        int drawerState = this.v.getDrawerState();
        DraggableDrawerLayout draggableDrawerLayout = this.v;
        if (drawerState == 1 || (!(this.M.getVisibility() == 0 && this.S == 2) && z)) {
            z2 = false;
        }
        draggableDrawerLayout.setLocked(z2);
    }

    public void z() {
        int i;
        if (this.av) {
            i = 0;
        } else {
            i = 1;
        }
        a(i, true);
        this.av = false;
        this.l.c();
    }

    void a(int i) {
        if (!this.aE) {
            this.aE = true;
            this.h.n();
        }
        int a = this.u.a(i);
        this.V = this.i.n();
        aq();
        C();
        w();
        if (i > 0 && this.Z == 0) {
            i(false);
        }
        if (i != 0) {
            this.ah = false;
        } else {
            g(false);
            ar();
            E();
        }
        if (a < 0 && !this.aF) {
            this.h.m();
            this.aF = true;
        }
    }

    private void g(boolean z) {
        if (this.aa.l()) {
            this.i.setHintText(getResources().getString(2131363357));
        } else if (!this.aa.g().isEmpty() || this.aa.j() != null) {
            this.i.setHintText(getResources().getString(2131362283));
        } else if (this.b == null || !(z || aj())) {
            this.i.setHintText(getResources().getString(2131362289));
        } else {
            String string;
            if (this.aa.a()) {
                string = getResources().getString(2131362327);
            } else {
                string = getResources().getString(2131362294, new Object[]{this.b.d()});
            }
            this.i.setHintText(string);
        }
    }

    public void a(EditableImage editableImage, String str) {
        boolean c = this.aa.c(editableImage.d());
        if (c || this.aa.a(editableImage.g())) {
            this.h.a(editableImage, str);
            if (!c) {
                this.h.d();
            }
            com.twitter.android.media.imageeditor.stickers.c.a(((Session) com.twitter.util.object.e.a(this.R)).g(), editableImage);
            this.N.a((EditableMedia) editableImage, new as(this, false));
            if (this.S == 2) {
                this.O.a(editableImage);
            }
        }
        ak();
    }

    public void m() {
        ak();
        this.h.b();
    }

    public void a(EditableMedia editableMedia, EditableMedia editableMedia2) {
        this.l.a(editableMedia2);
        if (this.aD != null) {
            this.h.b(this.aD.b() == this.O ? "gallery" : "image_attachment");
        }
        if (editableMedia != null && editableMedia.bn_()) {
            this.O.c(editableMedia);
        }
    }

    private void ak() {
        this.i.setVisibility(0);
        if (this.aD != null) {
            getSupportFragmentManager().beginTransaction().remove(this.aD).commit();
            this.M.setVisibility(8);
            this.aD = null;
        }
        this.O.f();
        this.l.setSelectedImage(null);
    }

    void a(List<MediaAttachment> list, boolean z) {
        if (this.ai == 0 || this.aj) {
            List a = MutableList.a(list.size());
            for (MediaAttachment mediaAttachment : list) {
                if (mediaAttachment.a == 1 && mediaAttachment.b != MediaAttachFailure.CANCELED) {
                    b(mediaAttachment.a());
                    a(mediaAttachment.a(), false);
                    ao();
                    if (mediaAttachment.b == MediaAttachFailure.GIF_TOO_LARGE) {
                        com.twitter.util.ui.r.a((Context) this, abw.a(this));
                    } else {
                        Toast.makeText(this, getString(2131362923), 1).show();
                    }
                } else if (mediaAttachment.b == MediaAttachFailure.NONE) {
                    a.add(mediaAttachment.d());
                }
            }
            c(a);
            int count = this.l.getCount();
            this.l.setVisibility(0);
            this.l.a((List) list, z);
            int size = a.size();
            if (size != 1 || v.a(ComposerType.FULL_COMPOSER)) {
                this.m.setVisibility(8);
            } else {
                FoundMediaProvider c = ((DraftAttachment) a.get(0)).h.c();
                this.m.setProvider(c);
                this.m.setVisibility(c != null ? 0 : 8);
            }
            if (a.isEmpty()) {
                this.i.g();
            } else {
                this.i.f();
            }
            g(false);
            a(null);
            al();
            TwitterUser twitterUser = (TwitterUser) com.twitter.util.object.e.a(this.R.f());
            if (!a(a)) {
                c(8);
                e(8);
            } else if (!twitterUser.m || twitterUser.P > 0) {
                b(cpf.a(a));
                OnClickListener afVar = new af(this);
                this.E.setOnClickListener(afVar);
                this.K.setOnClickListener(afVar);
                this.E.getViewTreeObserver().addOnGlobalLayoutListener(new ag(this, (View) this.E.getParent(), new Rect(), getResources().getDimensionPixelSize(2131690130)));
            }
            ao();
            aq();
            Resources resources = getResources();
            if (size <= 0 || ((DraftAttachment) a.get(0)).g != MediaType.IMAGE) {
                this.c.setImageDrawable(resources.getDrawable(2130837791));
            } else {
                this.c.setImageDrawable(resources.getDrawable(2130837792));
                if (size == 1 && count == 0) {
                    this.c.startAnimation(this.at);
                }
            }
            ad();
            this.aq.a("stickers_composer_tooltip", getSupportFragmentManager());
            return;
        }
        this.am = true;
    }

    private void al() {
        ax an = an();
        rx.o a = an.a(this.R, this.aa.g());
        if (this.aQ != null) {
            this.aQ.K_();
        }
        this.aQ = a.c(new ai(this, an));
    }

    private void a(n nVar) {
        if (nVar != null) {
            Context baseContext = getBaseContext();
            this.D.setVisibility(0);
            this.D.setText(nVar.a() ? baseContext.getString(2131363035) : baseContext.getString(2131363036));
            return;
        }
        this.D.setVisibility(8);
    }

    private void am() {
        if (this.aR != null) {
            n a = an().a(this.aa.g());
            if (a != null) {
                this.aR.c(new com.twitter.android.av.monetization.e(a));
            }
        }
    }

    private ax an() {
        return ((ay) V()).a();
    }

    void p() {
        Parcelable a = ((DraftAttachment) CollectionUtils.c(this.aa.g())).a(2);
        if (a instanceof EditableImage) {
            startActivityForResult(new Intent(this, MediaTagActivity.class).putExtra("editable_image", a), InputDeviceCompat.SOURCE_DPAD);
            this.h.j();
        }
    }

    private void ao() {
        if (this.N.f()) {
            this.ah = false;
        } else if (this.l.getMediaCount() == 0) {
            this.l.b();
        }
        C();
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }

    public void a(float f) {
        if (this.S == 2) {
            this.O.a(f);
        }
    }

    public void d(int i) {
        boolean z;
        if (i == 0) {
            this.S = 0;
        }
        if (i == 2) {
            int i2 = 1;
        } else {
            boolean z2 = false;
        }
        Button button = this.y;
        if (i2 == 0) {
            z = true;
        } else {
            z = false;
        }
        button.setClickable(z);
        if (this.S != 1 && this.ao && i2 == 0) {
            a(1, false);
        }
        this.ao = false;
        aq();
        this.P.d(i);
        if (this.S == 2 && this.M.getVisibility() == 0) {
            this.v.setLocked(true);
        }
        if (this.S == 4 && i2 != 0) {
            tq tokenAtCursor = this.i.getTokenAtCursor();
            this.v.setLocked(true);
            this.Q.a(tokenAtCursor);
            this.Q.f();
            if (tokenAtCursor != null) {
                this.h.a(tokenAtCursor, "full_screen");
            }
        }
    }

    public void A() {
        this.ao = true;
        aq();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case mx.TweetView_mediaTagIcon /*27*/:
                g(1);
                return true;
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                g(2);
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    void r() {
        startActivityForResult(new Intent(this, AccountsDialogActivity.class).putExtra("AccountsDialogActivity_account_name", this.R.e()), 514);
    }

    void s() {
        int size = this.aa.g().size();
        if (size == 1) {
            if (((DraftAttachment) this.aa.g().get(0)).g == MediaType.IMAGE) {
                bbu.a(new TwitterScribeLog(this.R.g()).b(":composition::photo:send_photo_tweet"));
            }
        } else if (size > 1) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.R.g()).b(":composition::multiphoto:send_photo_tweet")).a((long) size));
        }
        a(false);
        i();
    }

    void a(Uri uri, boolean z) {
        DraftAttachment a = this.aa.a(uri);
        if (a != null) {
            String str;
            switch (al.a[a.g.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    str = "photo";
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    str = "video";
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    this.m.setVisibility(8);
                    str = "gif";
                    break;
                default:
                    str = BuildConfig.VERSION_NAME;
                    break;
            }
            if (!str.isEmpty()) {
                bbu.a(new TwitterScribeLog(this.R.g()).b(":composition::", str, ":dismiss"));
            }
            this.N.a(uri);
            b(uri);
            if (this.l.getMediaCount() == 0) {
                c(8);
                e(8);
                this.i.g();
                if (!z || this.aw == null || this.S == 2) {
                    this.l.b();
                } else {
                    int measuredHeight = this.l.getMeasuredHeight();
                    ObjectAnimator objectAnimator = (ObjectAnimator) this.aw.clone();
                    objectAnimator.setFloatValues(new float[]{(float) (-measuredHeight)});
                    objectAnimator.start();
                }
                if (this.c.isEnabled()) {
                    this.c.startAnimation(this.au);
                } else {
                    av();
                }
            }
            aw();
            B();
        }
    }

    private boolean a(Uri uri, MediaType mediaType, boolean z) {
        if (this.aa.c(uri)) {
            if (!z) {
                return false;
            }
            Toast.makeText(this, getString(2131363372), 0).show();
            return false;
        } else if (this.aa.c(uri) || this.aa.a(mediaType)) {
            return true;
        } else {
            return false;
        }
    }

    private void c(int i) {
        this.ar = i;
        t();
    }

    private void e(int i) {
        this.as = i;
        t();
    }

    void t() {
        if (this.aq.a()) {
            this.E.setVisibility(8);
            this.K.setVisibility(8);
            return;
        }
        this.E.setVisibility(this.ar);
        this.K.setVisibility(this.as);
    }

    private void ap() {
        boolean z;
        boolean i = this.aa.i();
        GalleryGridFragment galleryGridFragment = this.O;
        if (i) {
            z = false;
        } else {
            z = true;
        }
        galleryGridFragment.b(z);
        galleryGridFragment = this.O;
        if (this.aa.g().isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        galleryGridFragment.c(z);
        View[] ah = ah();
        for (FrameLayout frameLayout : ah) {
            if (frameLayout instanceof PeriscopeBroadcastGalleryItem) {
                a((PeriscopeBroadcastGalleryItem) frameLayout);
            } else if (i) {
                frameLayout.setForeground(null);
                frameLayout.setClickable(true);
            } else if (frameLayout.getForeground() == null) {
                frameLayout.setForeground(getResources().getDrawable(2131886411));
                frameLayout.setClickable(false);
            }
        }
        this.O.a(ah);
    }

    private void a(PeriscopeBroadcastGalleryItem periscopeBroadcastGalleryItem) {
        if (but.a(this)) {
            periscopeBroadcastGalleryItem.c();
        } else {
            periscopeBroadcastGalleryItem.d();
        }
        if (this.aa.g().isEmpty()) {
            this.h.a(true);
            periscopeBroadcastGalleryItem.b();
            return;
        }
        this.h.a(false);
        periscopeBroadcastGalleryItem.a();
    }

    private void a(DraftAttachment draftAttachment) {
        DraftAttachment a = this.aa.a(draftAttachment);
        if (a != null) {
            a.b(draftAttachment);
        }
        EditableMedia a2 = draftAttachment.a(2);
        if (a2 != null) {
            this.O.b(a2);
            this.aP.a(a2);
            ap();
        }
    }

    private void b(Uri uri) {
        EditableMedia editableMedia = null;
        DraftAttachment a = this.aa.a(uri);
        if (a != null) {
            a.b(null);
        }
        this.O.a(uri);
        List g = this.aa.g();
        if (!g.isEmpty()) {
            editableMedia = ((DraftAttachment) g.get(0)).a(2);
        }
        this.aP.a(editableMedia);
        ap();
    }

    private void c(List<DraftAttachment> list) {
        HashSet hashSet = new HashSet(list.size());
        for (DraftAttachment draftAttachment : list) {
            Uri uri = draftAttachment.e;
            DraftAttachment b = this.aa.b(uri);
            if (b != null) {
                EditableMedia a = b.a(2);
                EditableMedia a2 = draftAttachment.a(2);
                if ((a instanceof EditableImage) && (a2 instanceof EditableImage)) {
                    ((EditableImage) a2).g = ((EditableImage) a).g;
                }
                hashSet.add(uri);
            }
        }
        List<DraftAttachment> g = this.aa.g();
        List<Uri> arrayList = new ArrayList(g.size());
        for (DraftAttachment draftAttachment2 : g) {
            uri = draftAttachment2.e;
            if (!hashSet.contains(uri)) {
                draftAttachment2.b(null);
                arrayList.add(uri);
            }
        }
        for (Uri a3 : arrayList) {
            a(a3, false);
        }
        for (DraftAttachment draftAttachment22 : list) {
            a(draftAttachment22);
        }
        ap();
    }

    void u() {
        c(true);
    }

    void c(boolean z) {
        if (!f(518)) {
            return;
        }
        if (this.S != 2) {
            this.av = this.S == 0;
            a(2, z, true);
        } else if (this.v.getDrawerState() != 2) {
            this.v.a(true, true);
        }
    }

    private boolean f(int i) {
        if (GalleryGridFragment.a((Context) this)) {
            return true;
        }
        startActivityForResult(new b(getString(2131362739), this, "android.permission.WRITE_EXTERNAL_STORAGE").f(":composition:gallery:").a(true).a(), i);
        return false;
    }

    private void aq() {
        int i;
        int i2 = 0;
        if (this.v.getDrawerState() != 2) {
            i = 1;
        } else {
            i = 0;
        }
        View view = this.A;
        if (i == 0) {
            i2 = 8;
        }
        view.setVisibility(i2);
    }

    void d(boolean z) {
        int i;
        int i2 = 0;
        if (z || this.i.getCount() > 140) {
            i = 1;
        } else {
            i = 0;
        }
        ComposerCountView composerCountView = this.u;
        if (i == 0) {
            i2 = 8;
        }
        composerCountView.setVisibility(i2);
    }

    void v() {
        int i = 0;
        if (this.p != null) {
            int i2 = !this.i.m() ? 1 : 0;
            View view = this.p;
            if (i2 != 0 || this.ac || !this.ad || aj() || this.aa.l()) {
                i = 4;
            }
            view.setVisibility(i);
        }
    }

    void w() {
        int i = 0;
        if (this.aa.f() != 0) {
            boolean aj = aj();
            View view = this.az;
            if (!aj) {
                i = 4;
            }
            view.setVisibility(i);
            this.k.setHeaderVisible(aj);
            return;
        }
        this.az.setVisibility(8);
        this.k.setHeaderVisible(false);
    }

    private void i(boolean z) {
        as();
        AsyncOperation bwVar = new bw(getApplicationContext(), this.R, f(), z);
        bwVar.a(ExecutionClass.SERIAL_BACKGROUND);
        if (this.Z == 0) {
            if (this.aa.c() > 0) {
                bbn.a(new IllegalStateException("mDraftSaveState and mDraftId out of sync. Unsaved with draft id > 0"));
            }
            this.ab = new at(this, this.R, this.X);
            this.Z = 1;
            bwVar.a(this.ab);
        }
        this.X.a(bwVar);
    }

    private void ar() {
        as();
        switch (this.Z) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.Z = 0;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                long c = this.aa.c();
                if (c > 0) {
                    b(c, getApplicationContext(), this.R, this.X);
                    this.aa.a(0);
                }
            default:
        }
    }

    private static void b(long j, Context context, Session session, az azVar) {
        AsyncOperation brVar = new br(context, session, j, false);
        brVar.a(ExecutionClass.SERIAL_BACKGROUND);
        azVar.a(brVar);
    }

    private void as() {
        if (this.ab != null) {
            if (AppConfig.m().a()) {
                if (this.Z != 1) {
                    throw new IllegalStateException("mFirstDraftSaver set but mDraftSaveState is " + this.Z);
                }
                long c = this.aa.c();
                if (c > 0) {
                    throw new IllegalStateException("mFirstDraftSaver set but mDraftId is not 0: " + c);
                }
            }
            this.ab.a();
            this.ab = null;
            this.Z = 0;
        }
    }

    void a(cgu<m> cgu_com_twitter_android_provider_m, tq tqVar) {
        if (this.v.getDrawerState() == 2) {
            return;
        }
        if (cgu_com_twitter_android_provider_m.aU_() > 0) {
            if (this.S != 4) {
                this.h.a(tqVar, "show");
            }
            a(4, true, false);
        } else if (this.S == 4) {
            a(1, true);
        }
    }

    void x() {
        if (this.S == 4) {
            a(1, true);
        }
    }

    void a(String str, tq tqVar, int i) {
        this.i.a(str);
        this.h.a(tqVar, "select", i);
    }

    public String b() {
        return this.aP.b();
    }

    private void a(DraftAttachment draftAttachment, AttachMediaListener attachMediaListener) {
        this.l.setVisibility(0);
        EditableMedia a = draftAttachment.a(2);
        if (a == null) {
            this.N.a(new MediaAttachment(draftAttachment), attachMediaListener);
        } else {
            a(draftAttachment);
            this.N.a(a, attachMediaListener);
        }
        ao();
    }

    private void b(EditableMedia editableMedia, View view) {
        this.N.a(editableMedia, view, new as(this, true));
        ao();
    }

    private void a(Uri uri, boolean z, AttachMediaListener attachMediaListener) {
        if (f(519)) {
            this.l.setVisibility(0);
            this.N.a(uri, z, attachMediaListener);
            ao();
        }
    }

    private boolean at() {
        return getResources().getConfiguration().hardKeyboardHidden == 1;
    }

    private void au() {
        if (!this.aj) {
            this.aj = true;
            if (this.am) {
                a(this.N.g(), true);
                this.am = false;
            }
            if (this.ak != null) {
                com.twitter.app.common.util.c.a().b(this.ak);
                this.ak = null;
            }
            if (this.al != null) {
                new Handler(Looper.getMainLooper()).removeCallbacks(this.al);
                this.al = null;
            }
        }
    }

    private void av() {
        boolean z;
        if (this.aK) {
            z = false;
        } else if (this.L.getVisibility() == 0) {
            z = false;
        } else if (this.aa.l()) {
            z = false;
        } else {
            for (DraftAttachment draftAttachment : this.aa.g()) {
                if (draftAttachment.g != MediaType.IMAGE) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        a(this.c, z);
    }

    private void aw() {
        if (this.s != null) {
            boolean z = (!this.aa.g().isEmpty() || this.aK || this.L.getVisibility() == 0 || this.aa.l()) ? false : true;
            a(this.s, z);
        }
    }

    private static void a(View view, boolean z) {
        view.setEnabled(z);
        view.setAlpha(z ? 1.0f : 0.3f);
    }

    public void b(int i) {
        g(i);
    }

    private void g(int i) {
        if (com.twitter.android.media.camera.z.a(this, i)) {
            this.N.a(true, i);
            return;
        }
        startActivityForResult(com.twitter.android.media.camera.z.a(this, i, ":composition::twitter_camera"), 517);
        this.ai = i;
        this.ax = true;
    }

    private void ax() {
        dbs.a((Context) this, this.R.e(), this.i.getText(), new aj(this));
    }

    private void ay() {
        if (this.b != null && !this.aa.a()) {
            String d = this.aa.d();
            if (d != null && a(d, this.b, this.R.g())) {
                d = this.aF ? "editedover140" : "edited";
                bbu.a(new TwitterScribeLog(this.R.g()).b(":composition:", "mentions", d));
            }
        }
    }

    private static boolean a(String str, Tweet tweet, long j) {
        return !str.contains(ceq.a(tweet.c(j)));
    }

    private ar a(Runnable runnable) {
        return new ak(this, runnable);
    }
}
