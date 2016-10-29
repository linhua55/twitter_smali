package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.FragmentManager;
import android.view.View;
import bbl;
import bbn;
import bbu;
import cgu;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.android.av.p;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.events.sports.c;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;
import com.twitter.android.revenue.ae;
import com.twitter.android.revenue.d;
import com.twitter.android.timeline.a;
import com.twitter.android.timeline.ar;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.ay;
import com.twitter.android.timeline.bb;
import com.twitter.android.timeline.bv;
import com.twitter.android.timeline.cd;
import com.twitter.android.timeline.t;
import com.twitter.android.timeline.v;
import com.twitter.android.timeline.z;
import com.twitter.android.widget.ConfirmCancelPendingTweetDialog;
import com.twitter.android.widget.TopicView.TopicData;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ba;
import com.twitter.model.timeline.bc;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.i;
import com.twitter.util.object.ObjectUtils;
import defpackage.bdd;
import defpackage.bms;

/* compiled from: Twttr */
public class TimelineItemClickHandler {
    private final Context a;
    private final TwitterScribeAssociation b;
    private final FragmentManager c;
    private final String d;
    private final String e;
    private final d f;

    /* compiled from: Twttr */
    public class TimelineItemClickException extends RuntimeException {
    }

    public TimelineItemClickHandler(Context context, TwitterScribeAssociation twitterScribeAssociation, String str, String str2, FragmentManager fragmentManager, d dVar) {
        this.a = context;
        this.b = twitterScribeAssociation;
        this.c = fragmentManager;
        this.f = dVar;
        this.d = str;
        this.e = str2;
    }

    public void a(View view, aw awVar, int i, int i2, Session session, ts tsVar) {
        long g = session.g();
        if (awVar instanceof ay) {
            ConfirmCancelPendingTweetDialog.a(this.c, ((mf) view.getTag()).d.getTweet());
        } else if (awVar instanceof bv) {
            int i3;
            bv bvVar = (bv) awVar;
            TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
            if (bvVar.e != null) {
                i3 = bvVar.e.k;
            } else {
                i3 = 0;
            }
            r5 = ScribeLog.a(new String[]{this.d, "trend_row", null, "trend", "click"});
            r6 = ScribeLog.a(new String[]{this.d, "trend_row", null, "trend", "search"});
            r7 = ScribeLog.a(new String[]{this.d, "trend_row", null, "promoted_trend", "click"});
            r8 = ScribeLog.a(new String[]{this.d, "trend_row", null, "promoted_trend", "search"});
            if (bvVar.e != null) {
                twitterScribeItem.v = i.a(bvVar.e.j);
            }
            twitterScribeItem.c = 8;
            twitterScribeItem.b = bvVar.b;
            if (bvVar.c != null) {
                a(PromotedEvent.h, bvVar.c.e, session);
                twitterScribeItem.e = String.valueOf(bvVar.c.e);
                if (r7 != null) {
                    bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).g(bvVar.g)).b(new String[]{r7})).a(twitterScribeItem)).d(i3));
                }
                if (r8 != null) {
                    bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).g(bvVar.g)).b(new String[]{r8})).a(twitterScribeItem)).d(i3));
                }
            } else {
                twitterScribeItem.y = bvVar.j;
            }
            if (r5 != null) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).g(bvVar.g)).b(new String[]{r5})).a(twitterScribeItem)).d(i3));
            }
            if (r6 != null) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).g(bvVar.g)).b(new String[]{r6})).a(twitterScribeItem)).d(i3));
            }
            this.a.startActivity(sm.a(this.a, bvVar.a, bvVar.i, bvVar.b, bvVar.g, null, bvVar.h, false, null, bvVar.e != null ? bvVar.e.d.c : null));
        } else {
            Tweet tweet;
            switch (i2) {
                case Util.TYPE_DASH /*0*/:
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                    ar c = awVar.c();
                    switch (c.c) {
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            if (bc.b(c.d)) {
                                ri riVar = ((rn) view.getTag()).a;
                                if (riVar != null) {
                                    tsVar.b(riVar.c).b();
                                    return;
                                }
                                return;
                            }
                            return;
                        case Util.TYPE_OTHER /*3*/:
                            rn rnVar = (rn) view.getTag();
                            if (awVar instanceof c) {
                                c cVar = (c) awVar;
                                r5 = cVar.e;
                                r6 = cVar.h;
                                String str = cVar.a;
                                int i4 = cVar.b;
                                r8 = cVar.d;
                                r7 = TwitterTopic.c(i4);
                                String a = TwitterScribeLog.a(new String[]{this.d, this.e, "event", "click"});
                                TwitterScribeItem twitterScribeItem2 = new TwitterScribeItem();
                                twitterScribeItem2.x = r7;
                                twitterScribeItem2.c = 16;
                                twitterScribeItem2.b = str;
                                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{a})).d(i)).a(twitterScribeItem2));
                                TopicData topicData = (rnVar == null || rnVar.h == null) ? null : rnVar.h.getTopicData();
                                this.a.startActivity(sm.a(this.a, str, i4, r5, r6, null, r8, false, topicData, null));
                                return;
                            }
                            return;
                        case b.ShimmerFrameLayout_fixed_height /*9*/:
                            ba baVar = ((v) awVar).a;
                            if (baVar != null) {
                                this.a.startActivity(MomentsFullScreenPagerActivity.b(this.a, baVar.c.b));
                                return;
                            }
                            return;
                        case b.ShimmerFrameLayout_shape /*13*/:
                            t tVar = (t) awVar;
                            TwitterScribeItem twitterScribeItem3 = new TwitterScribeItem();
                            String str2 = null;
                            if (this.a instanceof Activity) {
                                str2 = this.a.getClass().getCanonicalName();
                            }
                            twitterScribeItem3.am = tVar.o;
                            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(g);
                            String[] strArr = new String[5];
                            strArr[0] = this.d;
                            strArr[1] = this.e;
                            strArr[2] = tVar.o != null ? tVar.o.e : null;
                            strArr[3] = "footer";
                            strArr[4] = "click";
                            bbu.a(((TwitterScribeLog) twitterScribeLog.b(strArr)).a(twitterScribeItem3));
                            OpenUriHelper.a(this.a, null, tVar.a.c, g, null, null, this.b, false, str2);
                            return;
                        default:
                            break;
                    }
            }
            if (awVar instanceof bb) {
                tweet = ((bb) ObjectUtils.a(awVar)).b;
            } else if ((awVar instanceof z) && ((z) ObjectUtils.a(awVar)).a != null) {
                tweet = ((z) ObjectUtils.a(awVar)).a.b;
            } else if (awVar instanceof cd) {
                cgu cgu = ((cd) ObjectUtils.a(awVar)).b;
                tweet = cgu.aU_() > 0 ? ((bb) cgu.a(0)).b : null;
            } else if (awVar instanceof a) {
                com.twitter.android.revenue.a a2 = this.f.a(((a) ObjectUtils.a(awVar)).a);
                tweet = a2 instanceof ae ? ((ae) a2).f : null;
            } else {
                tweet = null;
            }
            if (tweet == null) {
                bbn.a(new bbl(new TimelineItemClickException()).a("class", awVar.getClass().getSimpleName()).a("entityId", Long.valueOf(awVar.d())).a("entityDataFlags", Integer.valueOf(awVar.c().d)).a("entityDataType", Integer.valueOf(awVar.c().c)));
            } else if (!tweet.c()) {
                tsVar.a(tweet).a(awVar).b();
                if (!p.a(tweet)) {
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).a(this.a, tweet, this.b, vn.a(tweet)).b(new String[]{TwitterScribeLog.a(this.b, tweet.ap(), "tweet", "click")})).a(this.b));
                }
            }
        }
    }

    private void a(PromotedEvent promotedEvent, long j, Session session) {
        Context applicationContext = this.a.getApplicationContext();
        az.a(applicationContext).a(new bms(applicationContext, session, promotedEvent).a(j));
    }
}
