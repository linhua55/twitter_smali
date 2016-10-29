package com.twitter.android.livevideo.landing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import com.twitter.android.ActivityWithProgress;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.livevideo.landing.di.k;
import com.twitter.android.livevideo.landing.di.l;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.app.n;
import com.twitter.app.common.base.t;
import com.twitter.app.common.inject.b;
import com.twitter.app.common.inject.v;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.util.a;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.util.object.e;
import defpackage.abo;
import defpackage.abs;
import defpackage.abt;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public class LiveVideoLandingActivity extends ActivityWithProgress implements abt, a {
    c c;
    abo d;
    MediaAttachmentController e;
    a f;
    TwitterScribeItem g;
    private abs h;

    public static Intent a(Context context, a aVar) {
        return aVar.a(context);
    }

    public t a(Bundle bundle, t tVar) {
        getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        t a = super.a(bundle, tVar);
        a.b(12);
        a.d(0);
        return a;
    }

    protected b b(com.twitter.app.common.inject.t tVar) {
        return com.twitter.android.livevideo.landing.di.a.a().a(n.s()).a(new l(this, tVar, T())).a();
    }

    protected v a(LayoutInflater layoutInflater, Bundle bundle) {
        ((k) W()).a(this);
        this.h = this.c.d();
        this.h.a(this.d);
        return this.c;
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && -1 == i2) {
            a(intent);
        }
        this.e.a(i, i2, intent, this.h);
    }

    private void a(Intent intent) {
        if (intent != null) {
            this.d.a(new MediaAttachment((DraftAttachment) e.a(com.twitter.android.util.v.a(intent))));
        }
        com.twitter.android.util.v.a(ComposerType.INLINE_REPLY, intent);
    }

    public int b(w wVar) {
        ac b = wVar.b(2131953426);
        if (b != null) {
            b.f(false);
        }
        return super.b(wVar);
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017198);
        return true;
    }

    public void onBackPressed() {
        if (!this.d.g()) {
            super.onBackPressed();
        }
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == tv.periscope.android.library.k.home && this.h.aB_()) {
            this.h.az_();
            return true;
        } else if (2131953473 != a) {
            return super.a(acVar);
        } else {
            f();
            return true;
        }
    }

    private void f() {
        aq.a((Context) this, "https://twitter.com/i/live/" + this.f.a, false);
        i();
    }

    private void i() {
        bbw twitterScribeLog = new TwitterScribeLog(ab().g());
        twitterScribeLog.b("live_video_timeline", "highlights", BuildConfig.VERSION_NAME, "toolbar", "share");
        twitterScribeLog.a(this.g);
        bbu.a(twitterScribeLog);
    }

    public void c() {
        s_();
    }

    public void a(int i) {
        this.d.a(i);
    }

    public void e() {
        com.twitter.android.util.v.a((Activity) this, 0, ComposerType.INLINE_REPLY);
    }
}
