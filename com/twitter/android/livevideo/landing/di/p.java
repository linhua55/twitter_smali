package com.twitter.android.livevideo.landing.di;

import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.library.client.Session;
import cxj;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class p implements c<MediaAttachmentController> {
    static final /* synthetic */ boolean a;
    private final l b;
    private final cxj<Session> c;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public p(l lVar, cxj<Session> cxj_com_twitter_library_client_Session) {
        if (a || lVar != null) {
            this.b = lVar;
            if (a || cxj_com_twitter_library_client_Session != null) {
                this.c = cxj_com_twitter_library_client_Session;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public MediaAttachmentController a() {
        return (MediaAttachmentController) d.a(this.b.a((Session) this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<MediaAttachmentController> a(l lVar, cxj<Session> cxj_com_twitter_library_client_Session) {
        return new p(lVar, cxj_com_twitter_library_client_Session);
    }
}
