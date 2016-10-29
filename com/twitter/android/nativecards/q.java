package com.twitter.android.nativecards;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import caw;
import cly;
import cmb;
import cmc;
import com.twitter.android.card.CardActionHelper;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.card.i;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.aq;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import defpackage.byy;
import defpackage.bzv;
import defpackage.bzx;
import defpackage.cah;
import defpackage.cai;
import defpackage.cax;
import defpackage.cay;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public abstract class q extends cah implements bzx, cay {
    private final WeakReference<Activity> a;
    private final long b;
    private long c;
    protected final Context q;
    protected final f r;
    protected final a s;
    protected TwitterScribeAssociation t;
    protected TwitterScribeAssociation u;
    protected CardActionHelper v;
    protected Tweet w;
    protected DisplayMode x;
    protected long y;

    public q(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        this.a = new WeakReference(activity);
        this.x = displayMode;
        this.q = activity.getApplicationContext();
        this.s = aVar;
        this.r = fVar;
        this.r.a(this.t);
        this.v = new CardActionHelper(this.q, this.s, this.r, m());
        this.b = bg.a().c().g();
    }

    public void a(cai cai) {
        this.c = cai.a;
        this.y = cai.b;
        this.t = (TwitterScribeAssociation) cai.a("params_extra_scribe_association", TwitterScribeAssociation.class);
        this.r.a(this.t);
        this.u = (TwitterScribeAssociation) cai.a("params_extra_source_scribe_association", TwitterScribeAssociation.class);
        cax.a().a(cai.a, this);
        bzv n = n();
        if (n != null) {
            n.a(this.y, this);
        }
    }

    public void a() {
        bzv n = n();
        if (n != null) {
            n.b(this.y, this);
        }
        cax.a().b(this.c, this);
    }

    public void a(long j, Tweet tweet) {
        this.w = tweet;
        this.r.a(tweet);
    }

    public void a(long j, cly cly) {
    }

    public void a(long j) {
        a(j, null);
    }

    public void a(long j, NativeCardUserAction nativeCardUserAction) {
        this.r.e("profile_click", m(), nativeCardUserAction);
        this.r.a(PromotedEvent.d, nativeCardUserAction);
        this.s.a(j, this.w, this.u != null ? this.u : this.t);
    }

    public void a(cmc cmc) {
        if (cmc != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cmc);
            a(arrayList, 0);
        }
    }

    public void a(ArrayList<cmc> arrayList, int i) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            cmc cmc = (cmc) it.next();
            if (cmc != null) {
                ImageSpec imageSpec = new ImageSpec((float) cmc.b, (float) cmc.c);
                imageSpec.c = cmc.a;
                arrayList2.add(imageSpec);
            }
        }
        if (arrayList2.size() > 0) {
            this.r.b("click", m());
            this.r.a(PromotedEvent.p);
            this.s.a(arrayList2, Math.min(i, arrayList2.size() - 1), this.t);
        }
    }

    public void a(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        String str5;
        String str6 = null;
        this.r.b("click", m());
        this.r.a(PromotedEvent.p);
        if (aj.b(str2) && aj.b(str3) && aq.b(str3)) {
            str5 = null;
            str6 = str2;
        } else {
            str5 = str;
        }
        this.s.a(str5, str6, str4, z, z2, this.w);
    }

    public Activity l() {
        return (Activity) this.a.get();
    }

    protected void a(String str, String str2) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            Resources resources = this.q.getResources();
            Builder builder = new Builder(activity);
            builder.setTitle(str2);
            builder.setItems(resources.getStringArray(2131427329), new r(this, str, activity, str2));
            builder.create().show();
        }
    }

    public String m() {
        return i.a(this.x);
    }

    protected void a(CallToAction callToAction, cmb cmb) {
        callToAction.setScribeElement(m());
        callToAction.setCardActionHandler(this.s);
        callToAction.setCardLogger(this.r);
        String a = caw.a("card_url", cmb);
        callToAction.a(byy.a("app_url", "app_url_resolved", cmb), caw.a("app_id", cmb), caw.a("app_name", cmb), caw.a("domain", cmb), a);
    }

    protected bzv n() {
        return bzv.a(this.q, this.b);
    }

    protected void b(long j, cly cly) {
        n().a(j, this.w != null ? this.w.H : 0, cly, this);
    }

    public CardActionHelper o() {
        return this.v;
    }
}
