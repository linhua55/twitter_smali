package com.twitter.android.composer;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.media.util.z;
import com.twitter.library.scribe.ScribeAltTextMedia;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeSection;
import com.twitter.library.scribe.ScribeSectionImportedVideo;
import com.twitter.library.scribe.ScribeSectionSegmentedVideo;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.geo.g;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.model.media.MediaSource;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.but;
import defpackage.cgf;
import defpackage.cgl;
import defpackage.cpf;
import defpackage.tq;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class bg {
    private String a;
    private ScribeItem b;
    private boolean c;

    public bg() {
        this.a = BuildConfig.VERSION_NAME;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(ScribeItem scribeItem) {
        this.b = scribeItem;
    }

    void a(long j, String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).a(str)).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"));
    }

    void a() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "exit"));
    }

    void a(MediaType mediaType) {
        String str;
        if (mediaType == MediaType.VIDEO || mediaType == MediaType.SEGMENTED_VIDEO) {
            str = "video";
        } else if (mediaType == MediaType.IMAGE) {
            str = "photo";
        } else {
            return;
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "editor", str, "open"));
    }

    void b() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "editor", "photo", "dismiss"));
    }

    void c() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition:image_attachment::impression"));
    }

    void a(EditableImage editableImage, String str) {
        z.a(editableImage, this.a, "composition", str, q());
    }

    void d() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "editor", "photo", "select"));
    }

    void b(String str) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", str, "photo", "page"));
    }

    void e() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, "photo_picker", "impression"));
    }

    void f() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, "reply", "show"));
    }

    public void g() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b("composition", "lifeline_alerts", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "select"));
    }

    public void h() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b("composition", "lifeline_alerts", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"));
    }

    void i() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, "text_view", "focus_field"));
    }

    void j() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, "media_tag_prompt", "click"));
    }

    void a(tq tqVar, String str) {
        a(tqVar, str, -1);
    }

    void a(tq tqVar, String str, int i) {
        if (tqVar.b == 1 || tqVar.b == 2) {
            String str2 = tqVar.b == 2 ? "hashtag" : UsernameError.USERNAME_ERROR_FIELD;
            bbw bbw = (TwitterScribeLog) new TwitterScribeLog(q()).b(this.a, "composition", "autocomplete_dropdown", str2, str);
            bbw.d(tqVar.a);
            if (i != -1) {
                bbw.d(i);
            }
            bbw.a(this.b);
            bbu.a(bbw);
        }
    }

    void a(boolean z, boolean z2, long j) {
        String str;
        if (z) {
            str = "cancel_reply_sheet";
        } else if (z2) {
            str = "cancel_quote_sheet";
        } else {
            str = "cancel_sheet";
        }
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(q()).b(this.a, "composition", str, "dont_save:click");
        if (j != -1) {
            bbw.b(j);
        }
        bbw.a(this.b);
        bbu.a(bbw);
    }

    void a(boolean z, boolean z2) {
        String str;
        if (z) {
            str = "cancel_reply_sheet";
        } else if (z2) {
            str = "cancel_quote_sheet";
        } else {
            str = "cancel_sheet";
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", str, "save_draft:click"));
    }

    public void k() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b("composition", "lifeline_alerts", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "tweet"));
    }

    public void l() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b("composition", "lifeline_alerts", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "cancel"));
    }

    void m() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "limit_exceeded"));
    }

    void n() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "edit"));
    }

    void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, g gVar, long j, Context context, cgl cgl, String str) {
        String str2 = z ? "drafts:composition" : "composition:";
        String str3 = z2 ? "send_reply" : z4 ? z3 ? "self_retweet" : "retweet" : z5 ? z3 ? "send_self_quote_tweet" : "send_quote_tweet" : "send_tweet";
        long q = q();
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(q()).i().a(context, cgl, str).b(this.a, str2, BuildConfig.VERSION_NAME, str3);
        if (j != -1) {
            bbw.b(j);
        }
        bbw.a(this.b);
        bbu.a(bbw);
        if (gVar != null) {
            ScribeItem b = TwitterScribeItem.b();
            b.ai.a(gVar.a().b, gVar.a().c, Double.NaN, Double.NaN, null, -1, -1, -1, null, null, -1);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(q).a(this.b)).a(b)).b(this.a, str2, BuildConfig.VERSION_NAME, "geotag"));
        }
    }

    void a(List<DraftAttachment> list) {
        if (!list.isEmpty()) {
            ScribeSection a;
            DraftAttachment draftAttachment = (DraftAttachment) list.get(0);
            switch (bh.a[draftAttachment.g.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    a = new ScribeSectionImportedVideo().a("(multiple):composition:video:trim:send_video_tweet");
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    a = new ScribeSectionSegmentedVideo((EditableSegmentedVideo) e.a((EditableSegmentedVideo) draftAttachment.a(2))).a("(multiple):composition:video:segment:send_video_tweet");
                    break;
                default:
                    a = null;
                    break;
            }
            if (a != null) {
                bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).a(a));
            }
        }
    }

    void a(Context context, List<DraftAttachment> list, boolean z, boolean z2) {
        bi.a(q(), ComposerType.FULL_COMPOSER, (List) list);
        if (!list.isEmpty()) {
            DraftAttachment draftAttachment = (DraftAttachment) list.get(0);
            MediaType mediaType = draftAttachment.g;
            if (mediaType != MediaType.UNKNOWN) {
                String str;
                String str2 = this.a + (z ? ":drafts:composition" : ":composition:");
                if (mediaType == MediaType.IMAGE) {
                    str = "send_photo_tweet";
                } else if (mediaType == MediaType.ANIMATED_GIF) {
                    str = "send_gif_tweet";
                } else {
                    str = "send_video_tweet";
                }
                String str3 = BuildConfig.VERSION_NAME;
                if (mediaType == MediaType.IMAGE || list.size() != 1) {
                    for (DraftAttachment draftAttachment2 : list) {
                        if (draftAttachment2.h == MediaSource.d) {
                            str3 = draftAttachment2.h.a();
                            break;
                        }
                    }
                }
                str3 = draftAttachment2.h.a();
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).a(new ScribeAltTextMedia(context, list))).b(str2, str3, str));
                int size = cpf.a((List) list).size();
                if (size > 0) {
                    TwitterScribeLog twitterScribeLog = new TwitterScribeLog(q());
                    String[] strArr = new String[2];
                    strArr[0] = str2;
                    strArr[1] = z2 ? ":reply_with_tags" : ":tweet_with_tags";
                    bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).a(this.b)).a((long) size));
                }
                size = 0;
                for (DraftAttachment draftAttachment22 : list) {
                    int i;
                    EditableMedia a = draftAttachment22.a(2);
                    if (!(a instanceof EditableImage) || ((EditableImage) a).c <= 0) {
                        i = size;
                    } else {
                        i = size + 1;
                    }
                    size = i;
                }
                if (size > 0) {
                    bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(q()).b(str2, ":send_filtered_photo")).a(this.b)).a((long) size));
                }
            }
        }
    }

    void a(cgf cgf, boolean z) {
        if (cgf != null && !cgf.d()) {
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(q());
            String[] strArr = new String[5];
            strArr[0] = this.a;
            strArr[1] = "composition";
            strArr[2] = BuildConfig.VERSION_NAME;
            strArr[3] = "poll_composer";
            strArr[4] = z ? "send_reply" : "send_tweet";
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).a(this.b)).a((long) cgf.a().size()));
        }
    }

    void a(boolean z) {
        if (!this.c) {
            this.c = true;
            TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(q()).a(this.b);
            String[] strArr = new String[5];
            strArr[0] = this.a;
            strArr[1] = "composition";
            strArr[2] = "gallery";
            strArr[3] = "periscope_go_live";
            strArr[4] = z ? "impression_enabled" : "impression_disabled";
            bbu.a(twitterScribeLog.b(strArr));
        }
    }

    void a(Context context) {
        String str = but.a(context) ? "open_app" : "open_interstitial";
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "gallery", "periscope_go_live", str));
    }

    void o() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "gallery", "periscope_takeover", "close"));
    }

    void p() {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(q()).a(this.b)).b(this.a, "composition", "gallery", "periscope_takeover", "install_app"));
    }

    private long q() {
        return com.twitter.library.client.bg.a().c().g();
    }
}
