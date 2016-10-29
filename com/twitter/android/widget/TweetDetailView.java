package com.twitter.android.widget;

import acd;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import bbu;
import bdj;
import ces;
import cgl;
import cni;
import com.twitter.android.qw;
import com.twitter.library.api.ActivitySummary;
import com.twitter.library.api.UserSettings;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.media.widget.aa;
import com.twitter.library.provider.aq;
import com.twitter.library.revenue.a;
import com.twitter.library.revenue.b;
import com.twitter.library.scribe.ScribeGeoDetails.ScribeGeoPlace;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.q;
import com.twitter.library.view.QuoteView;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.library.widget.ActionButton;
import com.twitter.library.widget.SocialBylineView;
import com.twitter.library.widget.c;
import com.twitter.library.widget.d;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.media.ui.image.h;
import com.twitter.model.av.n;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Translation;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.moments.ab;
import com.twitter.ui.view.p;
import com.twitter.ui.widget.BadgeView;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.ui.widget.ax;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import cpb;
import cpf;
import defpackage.bcu;
import defpackage.bcv;
import defpackage.bdc;
import defpackage.bdq;
import defpackage.buf;
import defpackage.cdy;
import defpackage.cex;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: Twttr */
public class TweetDetailView extends LinearLayout implements ces, aa, b, c, h {
    private static final SimpleDateFormat d;
    private i A;
    private CharSequence B;
    private CharSequence C;
    private View D;
    private TypefacesTextView E;
    private TypefacesTextView F;
    private Translation G;
    private QuoteView H;
    private fu I;
    private ActionButton J;
    private TwitterUser K;
    private a L;
    private ab M;
    private acd N;
    public UserImageView a;
    public BadgeView b;
    public EngagementActionBar c;
    private ActivitySummary e;
    private fo f;
    private Tweet g;
    private m h;
    private qw i;
    private final com.twitter.media.ui.image.i j;
    private TextView k;
    private TextView l;
    private RelativeLayout m;
    private TextView n;
    private SocialBylineView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private ImageView s;
    private View t;
    private ViewGroup u;
    private ViewGroup v;
    private TextView w;
    private ViewGroup x;
    private ViewGroup y;
    private ViewGroup z;

    static {
        d = new SimpleDateFormat();
    }

    public TweetDetailView(Context context) {
        this(context, null);
    }

    public TweetDetailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TweetDetailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new com.twitter.media.ui.image.i();
        d.applyPattern(getResources().getString(2131364265));
    }

    public com.twitter.library.widget.a getAutoPlayableItem() {
        return d.a(getContentContainer());
    }

    @SuppressLint({"WrongViewCast"})
    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131952639);
        this.s = (ImageView) relativeLayout.findViewById(2131951825);
        this.n = (TextView) relativeLayout.findViewById(2131952601);
        this.k = (TextView) relativeLayout.findViewById(2131951683);
        this.m = (RelativeLayout) relativeLayout.findViewById(2131953329);
        if (buf.a().g()) {
            this.k.setTextSize(0, (float) getResources().getDimensionPixelSize(bcv.font_size_medium));
            this.n.setTextSize(0, (float) getResources().getDimensionPixelSize(bcv.font_size_small));
        }
        this.a = (UserImageView) relativeLayout.findViewById(2131952353);
        this.j.a(this.a);
        this.l = (TextView) findViewById(2131953331);
        this.l.setTypeface(ax.a(getContext()).e);
        p.a(this.l);
        this.o = (SocialBylineView) findViewById(2131951707);
        this.o.setRenderRTL(ak.f());
        this.p = (TextView) findViewById(2131952348);
        this.q = (TextView) findViewById(2131953335);
        this.r = (TextView) findViewById(2131953047);
        this.J = (ActionButton) findViewById(2131951619);
        this.u = (ViewGroup) findViewById(2131953199);
        this.v = (ViewGroup) findViewById(2131953336);
        this.w = (TextView) findViewById(2131953337);
        this.x = (ViewGroup) findViewById(2131953338);
        this.y = (ViewGroup) findViewById(2131952696);
        this.z = (ViewGroup) findViewById(2131952571);
        this.r.setOnClickListener(new fk(this));
        this.b = (BadgeView) findViewById(2131952792);
        this.L = new a(this, 2130839025, 2130839026, 2130839023);
        this.c = (EngagementActionBar) findViewById(2131951699);
        this.E = (TypefacesTextView) findViewById(2131953333);
        p.a(this.E);
        this.F = (TypefacesTextView) findViewById(2131953334);
        this.D = findViewById(2131953332);
        p.a(this.F);
        this.H = (QuoteView) findViewById(2131952230);
        this.H.setRenderRtl(ak.f());
        this.j.a(this.H);
        this.o.setMinIconWidth(buf.a().c());
        this.a.setSize(buf.a().b());
    }

    public void aG_() {
        this.j.aG_();
    }

    public void f() {
        this.j.f();
    }

    public void setQuoteTweetClickListener(OnClickListener onClickListener) {
        this.H.setOnClickListener(onClickListener);
    }

    public void setOnMediaMonetizationClickListener(OnClickListener onClickListener) {
        this.v.setOnClickListener(onClickListener);
    }

    public void setOnTweetAnalyticsClickListener(OnClickListener onClickListener) {
        this.x.setOnClickListener(onClickListener);
    }

    public void setQuoteTweetLongClickListener(OnLongClickListener onLongClickListener) {
        this.H.setOnLongClickListener(onLongClickListener);
    }

    public void a(TwitterUser twitterUser, UserSettings userSettings) {
        this.K = twitterUser;
        QuoteView quoteView = this.H;
        boolean z = userSettings != null && userSettings.k;
        quoteView.setDisplaySensitiveMedia(z);
        h();
    }

    public void a(Tweet tweet, m mVar, String str, int i, int i2, int i3, String str2, qw qwVar, boolean z) {
        this.g = tweet;
        if (this.g.c()) {
            this.y.setVisibility(8);
            this.c.setVisibility(8);
        } else {
            this.y.setVisibility(0);
            this.c.setVisibility(0);
        }
        this.h = mVar;
        this.i = qwVar;
        Resources resources = getResources();
        aq a = aq.a(tweet).a(true);
        boolean z2 = tweet.ab() || tweet.p();
        com.twitter.model.core.i a2 = a.b(z2).c(tweet.U()).e(cdy.a(tweet)).a();
        CharSequence charSequence = null;
        if (a2.a.trim().isEmpty()) {
            this.l.setVisibility(8);
        } else {
            charSequence = o.a(a2.a).a(a2.b).a(mVar).b(resources.getColor(bcu.link_selected)).a();
            if (com.twitter.library.view.d.a() && this.g.m()) {
                charSequence = com.twitter.library.view.d.a(getContext(), a2.b.f, charSequence, true);
            }
        }
        if (aj.b(charSequence)) {
            this.l.setVisibility(0);
            this.l.setText(charSequence);
        } else {
            this.l.setVisibility(8);
        }
        this.n.setText('@' + tweet.v);
        this.n.setVisibility(tweet.c() ? 8 : 0);
        this.J.setUsername(tweet.v);
        this.k.setText(tweet.B);
        TextView textView = this.l;
        int i4 = (com.twitter.util.a.a || !tweet.n()) ? 3 : 5;
        textView.setGravity(i4);
        this.L.a(tweet, resources);
        z2 = tweet.d;
        if (tweet.t()) {
            if (tweet.c && !z2) {
                b(13, tweet.e());
            }
        } else if (tweet.L && tweet.j != 23) {
            b(22, null);
        } else if (tweet.ac && tweet.j != 23) {
            b(20, null);
        } else if ((tweet.s() || tweet.q()) && !z2) {
            a(tweet.f);
        } else if (tweet.c && !z2) {
            b(13, tweet.e());
        } else if (this.M != null) {
            b(43, this.M.c);
            if (this.N != null) {
                this.o.setOnClickListener(new fl(this));
            }
        } else if (tweet.j != -1) {
            a(tweet.j, tweet.k, tweet.aa, tweet.X, tweet.Z, tweet.ad, tweet.Y, tweet.q);
        } else if (i2 != -1) {
            a(i2, str2, null, 0, 0, 0, i3, 0);
        } else if (!aj.b(str) || z || i == 0) {
            this.b.setVisibility(8);
            this.o.setVisibility(8);
        } else {
            this.o.setLabel(str);
            this.o.setIcon(i);
            this.o.setVisibility(0);
        }
        this.a.a(tweet.r);
        this.a.a(!tweet.c());
        if (tweet.M) {
            this.s.setImageResource(2130839985);
            this.s.setVisibility(0);
        } else if (tweet.G) {
            this.s.setImageResource(2130839446);
            this.s.setVisibility(0);
        } else {
            this.s.setVisibility(8);
        }
        String format = d.format(Long.valueOf(tweet.q));
        a(tweet);
        a(format);
        j();
        if (this.G == null) {
            if (cex.a(getContext(), this.g)) {
                a(tweet.S, com.twitter.util.a.b((Locale) e.b(resources.getConfiguration().locale, Locale.getDefault())));
                this.E.setText(this.B);
                this.D.setVisibility(0);
            }
        } else if (this.G.b.equals(this.G.c)) {
            this.D.setVisibility(8);
        } else {
            a(this.G);
            this.D.setVisibility(0);
        }
        setContentDescription(resources.getString(bdc.timeline_tweet_format, new Object[]{tweet.B + " @" + tweet.v, (CharSequence) e.b(this.l.getText(), TtmlNode.ANONYMOUS_REGION_ID), TtmlNode.ANONYMOUS_REGION_ID, format, (CharSequence) e.b(this.o.getContentDescription(), TtmlNode.ANONYMOUS_REGION_ID)}));
        i();
        if (cdy.c(tweet) || tweet.p()) {
            if (tweet.p()) {
                this.u.setPadding(0, this.u.getPaddingTop(), 0, this.u.getPaddingBottom());
            }
            this.u.requestLayout();
            com.twitter.library.view.ab.a(this, this.g, r4, r5.toString(), format, charSequence.toString());
        }
        if (tweet.U()) {
            this.H.setQuoteData(this.g.x);
            this.H.setVisibility(0);
        } else {
            this.H.setVisibility(8);
        }
        h();
    }

    public void a(n nVar, boolean z) {
        CharSequence string;
        Resources resources = getResources();
        TextView textView = this.w;
        if (nVar.a()) {
            string = resources.getString(2131363035);
        } else {
            string = resources.getString(2131363036);
        }
        textView.setText(string);
        if (this.v.getVisibility() == 8 && z) {
            this.v.setScaleY(0.0f);
            this.v.setPivotY(0.0f);
            this.v.setAlpha(0.0f);
            this.v.setVisibility(0);
            this.v.animate().scaleY(1.0f).alpha(1.0f).setDuration(300).start();
            return;
        }
        this.v.setVisibility(0);
    }

    private void h() {
        if (this.g == null || this.K == null || this.g.s != this.K.c || !bdq.a(this.K)) {
            this.x.setVisibility(8);
        } else {
            this.x.setVisibility(0);
        }
    }

    private void i() {
        Tweet tweet = this.g;
        if (tweet.V()) {
            Resources resources = getResources();
            this.r.setText(com.twitter.library.media.util.ab.b(getContext(), cpf.a(cpb.a(tweet, Size.b)), 2130839667), BufferType.SPANNABLE);
            ((LayoutParams) this.r.getLayoutParams()).setMargins(0, 0, 0, resources.getDimensionPixelOffset(2131690599));
            this.r.requestLayout();
            this.r.setVisibility(0);
            return;
        }
        this.r.setVisibility(8);
    }

    public boolean a(Translation translation) {
        if (translation == null || translation.b.equals(translation.c)) {
            this.D.setVisibility(8);
            return false;
        }
        if (!translation.b.equals(this.g.S)) {
            a(translation.b, translation.c);
        }
        this.F.setText(q.a(getContext()).a(this.F, o.a(translation.d).a(translation.e).a(this.h).b(getResources().getColor(bcu.link_selected)).a(), this.F.getPaint().getFontMetrics()));
        this.G = translation;
        return true;
    }

    public void setTranslationButtonClickListener(OnClickListener onClickListener) {
        this.E.setOnClickListener(onClickListener);
    }

    public boolean a() {
        return this.G != null;
    }

    public void b() {
        if (this.F.getVisibility() == 0) {
            this.E.setText(this.B);
            this.F.setVisibility(8);
            return;
        }
        this.E.setText(this.C);
        this.F.setVisibility(0);
    }

    public void a(Bundle bundle) {
        if (this.G != null) {
            bundle.putParcelable("translated_tweet", this.G);
            bundle.putBoolean("show_translation", this.F.getVisibility() == 0);
        }
    }

    public void b(Bundle bundle) {
        Translation translation = (Translation) bundle.getParcelable("translated_tweet");
        boolean z = bundle.getBoolean("show_translation", false);
        if (translation != null) {
            a(translation.b, translation.c);
            this.G = translation;
            this.F.setVisibility(z ? 0 : 8);
            this.E.setText(z ? this.C : this.B);
        }
    }

    private void a(String str, String str2) {
        Resources resources = getResources();
        String a = cex.a(str, str2);
        CharSequence string = resources.getString(2131363957, new Object[]{a});
        int indexOf = string.indexOf("$b");
        ImageSpan imageSpan = new ImageSpan(getContext(), 2130839044);
        if (imageSpan.getDrawable() != null) {
            imageSpan.getDrawable().setColorFilter(ContextCompat.getColor(getContext(), bcu.border_color), Mode.SRC_IN);
        }
        CharSequence spannableString = new SpannableString(string);
        spannableString.setSpan(imageSpan, indexOf, indexOf + 2, 33);
        spannableString.setSpan(new fm(this), indexOf, indexOf + 2, 33);
        this.C = spannableString;
        this.B = resources.getString(2131363959, new Object[]{a});
    }

    private void a(cni cni) {
        if (cni != null) {
            String str = cni.f;
            if (str != null) {
                b(3, str);
            } else {
                this.o.setVisibility(8);
            }
        }
    }

    private void a(int i, String str, String str2, int i2, int i3, long j, int i4, long j2) {
        if (i != 14 && i != 15 && i != 17 && i != 19) {
            Resources resources = getResources();
            CharSequence a = com.twitter.library.util.ak.a(resources, i, str, str2, i2, i3, j, i4, j2);
            if (a == null) {
                this.o.setVisibility(8);
                return;
            }
            this.o.setLabel(a);
            CharSequence b = com.twitter.library.util.ak.b(resources, i, str, str2, i2, i3, j, i4, j2);
            if (b != null) {
                this.o.setContentDescription(b);
            }
            if (this.i != null) {
                this.o.setOnClickListener(this.i);
            }
            this.o.setIcon(com.twitter.library.util.ak.a(i));
            this.o.setVisibility(0);
        }
    }

    private void b(int i, String str) {
        a(i, str, null, 0, 0, 0, 0, 0);
    }

    private void j() {
        a(null);
    }

    private void a(ActivitySummary activitySummary) {
        int i = 0;
        if (this.I != null && this.g != null) {
            this.I.a(getResources(), activitySummary);
            View view = this.I.a;
            if (view.getParent() == null) {
                this.y.addView(view, 0, generateDefaultLayoutParams());
                ViewGroup viewGroup = this.y;
                if (this.g.c()) {
                    i = 8;
                }
                viewGroup.setVisibility(i);
            }
        }
    }

    private void a(View view) {
        this.t = view;
        if (this.t != null) {
            this.t.setId(2131951716);
            this.t.requestLayout();
            this.t.invalidate();
            if (this.g != null) {
                com.twitter.library.view.ab.a(this.t, this.g, null, null, null, null);
            }
        }
        b(this.t);
    }

    public void c() {
        if (this.t != null) {
            this.u.setVisibility(8);
            this.u.removeView(this.t);
            this.t = null;
        }
        j();
    }

    public void setContentHost(i iVar) {
        k();
        this.A = iVar;
        l();
    }

    private f getContentContainer() {
        if (this.A == null || this.A.f() == null) {
            return f.B;
        }
        return this.A.f();
    }

    private void k() {
        if (this.A != null) {
            i iVar = this.A;
            this.A = null;
            iVar.bb_();
            this.t = iVar.d();
            c();
        }
    }

    private void l() {
        if (this.A != null) {
            this.A.ba_();
            d();
            this.A.c();
        }
    }

    protected void d() {
        if (this.A != null) {
            a(this.A.d());
        }
    }

    public void setOnMomentClickListener(acd acd) {
        this.N = acd;
    }

    public RelativeLayout getNamePanel() {
        return this.m;
    }

    public ActionButton getActionButton() {
        return this.J;
    }

    public TextView getTweetTextView() {
        return this.l;
    }

    public void a(TweetMediaView tweetMediaView, cgl cgl) {
        this.h.a(cgl);
    }

    public void a(TweetMediaView tweetMediaView, MediaEntity mediaEntity) {
        this.h.a(mediaEntity);
    }

    public void a(TweetMediaView tweetMediaView, EditableMedia editableMedia) {
    }

    public void a(OnClickListener onClickListener) {
        Context context = getContext();
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2130968979, this, false);
        Object f = bdj.a(context).f();
        if (aj.b(f)) {
            TextView textView = (TextView) viewGroup.findViewById(2131952697);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setText(Html.fromHtml(f));
        }
        a(context, onClickListener, viewGroup);
    }

    private void a(Context context, OnClickListener onClickListener, ViewGroup viewGroup) {
        View relativeLayout = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, 2131952571);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setId(2131951723);
        viewGroup.findViewById(2131952698).setOnClickListener(onClickListener);
        viewGroup.findViewById(2131952700).setOnClickListener(onClickListener);
        relativeLayout.addView(viewGroup);
        this.t = relativeLayout;
        b(relativeLayout);
    }

    public void a(OnClickListener onClickListener, boolean z, boolean z2) {
        Context context = getContext();
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2130969209, this, false);
        a(context, onClickListener, viewGroup);
        TextView textView = (TextView) viewGroup.findViewById(2131952700);
        if (!z) {
            return;
        }
        if (z2) {
            textView.setText(2131363365);
        } else {
            g();
        }
    }

    public void g() {
        TextView textView = (TextView) this.t.findViewById(2131952700);
        ((ImageView) this.t.findViewById(2131952699)).setVisibility(8);
        textView.setVisibility(8);
    }

    private void m() {
        if (this.I == null) {
            this.I = new fu(LayoutInflater.from(getContext()).inflate(2130969486, this, false), new fn(this));
        }
    }

    public void a(ActivitySummary activitySummary, fo foVar) {
        this.e = activitySummary;
        this.f = foVar;
        m();
        a(activitySummary);
    }

    public void a(OnClickListener onClickListener, boolean z) {
        ActionButton actionButton = this.J;
        actionButton.setBackgroundResource(2130837690);
        actionButton.a(2130837688);
        actionButton.setChecked(z);
        actionButton.setOnClickListener(onClickListener);
    }

    private boolean n() {
        return com.twitter.config.d.a("poi_place_pivot_tweet_detail");
    }

    private void a(Tweet tweet) {
        TwitterPlace twitterPlace = tweet.N;
        if (twitterPlace != null) {
            Object obj = aj.a(twitterPlace.d) ? twitterPlace.f : twitterPlace.d;
            if (!tweet.U || aj.a(obj)) {
                this.q.setText(null);
                this.q.setVisibility(8);
                return;
            }
            CharSequence string = getResources().getString(2131364001, new Object[]{obj});
            if (n()) {
                int indexOf = string.indexOf(obj);
                CharSequence spannableString = new SpannableString(string);
                spannableString.setSpan(new ft(this, getContext(), tweet, this.K != null ? this.K.c : 0), indexOf, spannableString.length(), 17);
                this.q.setText(spannableString);
                p.a(this.q);
                this.q.setVisibility(0);
                return;
            }
            this.q.setText(string);
            this.q.setVisibility(0);
        }
    }

    private void a(String str) {
        this.p.setText(str);
    }

    public void e(boolean z) {
        if (this.b != null) {
            this.b.setVisibility(z ? 0 : 8);
        }
    }

    public void a(int i, String str) {
        if (this.b != null) {
            this.b.a(i, str);
        }
    }

    public void setMoment(ab abVar) {
        this.M = abVar;
    }

    static void a(String str, Tweet tweet, long j) {
        if (j != 0) {
            TwitterScribeItem b = TwitterScribeItem.b();
            b.a = tweet.H;
            ScribeGeoPlace scribeGeoPlace = new ScribeGeoPlace();
            scribeGeoPlace.a = tweet.N.b;
            scribeGeoPlace.b = tweet.N.c.toString();
            b.ai.c.add(scribeGeoPlace);
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{"tweet::" + str + ":place_tag:click"})).a(b));
        }
    }

    private void b(View view) {
        this.u.removeAllViews();
        if (view != null) {
            this.u.addView(view);
            this.u.setVisibility(0);
        }
    }
}
