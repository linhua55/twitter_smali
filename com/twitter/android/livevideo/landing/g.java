package com.twitter.android.livevideo.landing;

import abt;
import com.twitter.android.livevideo.player.a;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.app.common.base.n;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.h;
import cwk;
import cxj;
import dagger.internal.MembersInjectors;
import dagger.internal.c;

/* compiled from: Twttr */
public final class g implements c<c> {
    static final /* synthetic */ boolean a;
    private final cwk<c> b;
    private final cxj<BaseFragmentActivity> c;
    private final cxj<t> d;
    private final cxj<n> e;
    private final cxj<MediaAttachmentController> f;
    private final cxj<abt> g;
    private final cxj<h> h;
    private final cxj<a> i;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public g(cwk<c> cwk_com_twitter_android_livevideo_landing_c, cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity, cxj<t> cxj_com_twitter_app_common_inject_t, cxj<n> cxj_com_twitter_app_common_base_n, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<abt> cxj_abt, cxj<h> cxj_com_twitter_app_common_list_h, cxj<a> cxj_com_twitter_android_livevideo_player_a) {
        if (a || cwk_com_twitter_android_livevideo_landing_c != null) {
            this.b = cwk_com_twitter_android_livevideo_landing_c;
            if (a || cxj_com_twitter_app_common_base_BaseFragmentActivity != null) {
                this.c = cxj_com_twitter_app_common_base_BaseFragmentActivity;
                if (a || cxj_com_twitter_app_common_inject_t != null) {
                    this.d = cxj_com_twitter_app_common_inject_t;
                    if (a || cxj_com_twitter_app_common_base_n != null) {
                        this.e = cxj_com_twitter_app_common_base_n;
                        if (a || cxj_com_twitter_android_media_selection_MediaAttachmentController != null) {
                            this.f = cxj_com_twitter_android_media_selection_MediaAttachmentController;
                            if (a || cxj_abt != null) {
                                this.g = cxj_abt;
                                if (a || cxj_com_twitter_app_common_list_h != null) {
                                    this.h = cxj_com_twitter_app_common_list_h;
                                    if (a || cxj_com_twitter_android_livevideo_player_a != null) {
                                        this.i = cxj_com_twitter_android_livevideo_player_a;
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
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public c a() {
        return (c) MembersInjectors.a(this.b, new c((BaseFragmentActivity) this.c.b(), (t) this.d.b(), (n) this.e.b(), (MediaAttachmentController) this.f.b(), (abt) this.g.b(), (h) this.h.b(), (a) this.i.b()));
    }

    public static c<c> a(cwk<c> cwk_com_twitter_android_livevideo_landing_c, cxj<BaseFragmentActivity> cxj_com_twitter_app_common_base_BaseFragmentActivity, cxj<t> cxj_com_twitter_app_common_inject_t, cxj<n> cxj_com_twitter_app_common_base_n, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<abt> cxj_abt, cxj<h> cxj_com_twitter_app_common_list_h, cxj<a> cxj_com_twitter_android_livevideo_player_a) {
        return new g(cwk_com_twitter_android_livevideo_landing_c, cxj_com_twitter_app_common_base_BaseFragmentActivity, cxj_com_twitter_app_common_inject_t, cxj_com_twitter_app_common_base_n, cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj_abt, cxj_com_twitter_app_common_list_h, cxj_com_twitter_android_livevideo_player_a);
    }
}
