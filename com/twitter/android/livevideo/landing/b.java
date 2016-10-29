package com.twitter.android.livevideo.landing;

import abo;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.library.scribe.TwitterScribeItem;
import cwk;
import cxj;

/* compiled from: Twttr */
public final class b implements cwk<LiveVideoLandingActivity> {
    static final /* synthetic */ boolean a;
    private final cxj<c> b;
    private final cxj<abo> c;
    private final cxj<MediaAttachmentController> d;
    private final cxj<a> e;
    private final cxj<TwitterScribeItem> f;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public b(cxj<c> cxj_com_twitter_android_livevideo_landing_c, cxj<abo> cxj_abo, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<a> cxj_com_twitter_android_livevideo_landing_a, cxj<TwitterScribeItem> cxj_com_twitter_library_scribe_TwitterScribeItem) {
        if (a || cxj_com_twitter_android_livevideo_landing_c != null) {
            this.b = cxj_com_twitter_android_livevideo_landing_c;
            if (a || cxj_abo != null) {
                this.c = cxj_abo;
                if (a || cxj_com_twitter_android_media_selection_MediaAttachmentController != null) {
                    this.d = cxj_com_twitter_android_media_selection_MediaAttachmentController;
                    if (a || cxj_com_twitter_android_livevideo_landing_a != null) {
                        this.e = cxj_com_twitter_android_livevideo_landing_a;
                        if (a || cxj_com_twitter_library_scribe_TwitterScribeItem != null) {
                            this.f = cxj_com_twitter_library_scribe_TwitterScribeItem;
                            return;
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static cwk<LiveVideoLandingActivity> a(cxj<c> cxj_com_twitter_android_livevideo_landing_c, cxj<abo> cxj_abo, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<a> cxj_com_twitter_android_livevideo_landing_a, cxj<TwitterScribeItem> cxj_com_twitter_library_scribe_TwitterScribeItem) {
        return new b(cxj_com_twitter_android_livevideo_landing_c, cxj_abo, cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj_com_twitter_android_livevideo_landing_a, cxj_com_twitter_library_scribe_TwitterScribeItem);
    }

    public void a(LiveVideoLandingActivity liveVideoLandingActivity) {
        if (liveVideoLandingActivity == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        liveVideoLandingActivity.c = (c) this.b.b();
        liveVideoLandingActivity.d = (abo) this.c.b();
        liveVideoLandingActivity.e = (MediaAttachmentController) this.d.b();
        liveVideoLandingActivity.f = (a) this.e.b();
        liveVideoLandingActivity.g = (TwitterScribeItem) this.f.b();
    }
}
