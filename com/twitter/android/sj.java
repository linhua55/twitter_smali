package com.twitter.android;

import android.animation.Animator;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.animation.Interpolator;
import bbu;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.timeline.aw;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.TimelineMessageView;
import com.twitter.library.widget.at;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.o;
import com.twitter.util.d;
import crd;

/* compiled from: Twttr */
public class sj implements at {
    private final Interpolator a;
    private final Context b;
    private final az c;
    private final bg d;
    private final TwitterScribeAssociation e;

    public sj(Context context, az azVar, bg bgVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = crd.b();
        this.b = context;
        this.c = azVar;
        this.d = bgVar;
        this.e = TwitterScribeAssociation.a(twitterScribeAssociation);
    }

    public void a(TimelineMessageView timelineMessageView, o oVar) {
        a(timelineMessageView, oVar, "primary_action");
    }

    public void b(TimelineMessageView timelineMessageView, o oVar) {
        a(timelineMessageView, oVar, "secondary_action");
    }

    private void a(TimelineMessageView timelineMessageView, o oVar, String str) {
        aw awVar = (aw) timelineMessageView.getTag(2131951712);
        if (awVar != null) {
            a(awVar.o, str, "click");
            if (oVar.c) {
                a((View) timelineMessageView, oVar.b, awVar.d(), awVar.o);
                return;
            }
            a(oVar.b);
        }
    }

    public void a(TimelineMessageView timelineMessageView) {
        aw awVar = (aw) timelineMessageView.getTag(2131951712);
        a(awVar.o, "dismiss", "click");
        a((View) timelineMessageView, null, awVar.d(), awVar.o);
    }

    private void a(String str) {
        if (str != null) {
            OpenUriHelper.a(this.b, null, str, this.d.c().g(), null, null, this.e, false, this.b.getClass().getCanonicalName());
        }
    }

    private void a(View view, String str, long j, aj ajVar) {
        Animator a = a(view);
        a.addListener(new sk(this, ajVar, str, j));
        a.start();
    }

    @VisibleForTesting
    Animator a(View view) {
        return d.a(view, 400, this.a);
    }

    private void a(aj ajVar, String str, String str2) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.am = ajVar;
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.d.c().g());
        String[] strArr = new String[5];
        strArr[0] = this.e.a();
        strArr[1] = this.e.b();
        strArr[2] = ajVar != null ? ajVar.e : null;
        strArr[3] = str;
        strArr[4] = str2;
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).a(twitterScribeItem));
    }
}
