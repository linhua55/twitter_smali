package defpackage;

import android.content.Context;
import com.twitter.android.composer.aw;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import dagger.internal.c;

/* compiled from: Twttr */
/* renamed from: abq */
public final class abq implements c<abp> {
    static final /* synthetic */ boolean a;
    private final cxj<Context> b;
    private final cxj<abr> c;
    private final cxj<MediaAttachmentController> d;
    private final cxj<Session> e;
    private final cxj<az> f;
    private final cxj<ape<aw>> g;

    static {
        a = !abq.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public abq(cxj<Context> cxj_android_content_Context, cxj<abr> cxj_abr, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az, cxj<ape<aw>> cxj_ape_com_twitter_android_composer_aw) {
        if (a || cxj_android_content_Context != null) {
            this.b = cxj_android_content_Context;
            if (a || cxj_abr != null) {
                this.c = cxj_abr;
                if (a || cxj_com_twitter_android_media_selection_MediaAttachmentController != null) {
                    this.d = cxj_com_twitter_android_media_selection_MediaAttachmentController;
                    if (a || cxj_com_twitter_library_client_Session != null) {
                        this.e = cxj_com_twitter_library_client_Session;
                        if (a || cxj_com_twitter_library_client_az != null) {
                            this.f = cxj_com_twitter_library_client_az;
                            if (a || cxj_ape_com_twitter_android_composer_aw != null) {
                                this.g = cxj_ape_com_twitter_android_composer_aw;
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

    public abp a() {
        return new abp((Context) this.b.b(), (abr) this.c.b(), (MediaAttachmentController) this.d.b(), (Session) this.e.b(), (az) this.f.b(), (ape) this.g.b());
    }

    public static c<abp> a(cxj<Context> cxj_android_content_Context, cxj<abr> cxj_abr, cxj<MediaAttachmentController> cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj<Session> cxj_com_twitter_library_client_Session, cxj<az> cxj_com_twitter_library_client_az, cxj<ape<aw>> cxj_ape_com_twitter_android_composer_aw) {
        return new abq(cxj_android_content_Context, cxj_abr, cxj_com_twitter_android_media_selection_MediaAttachmentController, cxj_com_twitter_library_client_Session, cxj_com_twitter_library_client_az, cxj_ape_com_twitter_android_composer_aw);
    }
}
