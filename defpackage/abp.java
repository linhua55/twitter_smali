package defpackage;

import android.content.Context;
import com.twitter.android.client.bv;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.composer.aw;
import com.twitter.android.composer.bi;
import com.twitter.android.composer.bw;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.drafts.d;
import com.twitter.model.drafts.e;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: abp */
public class abp implements abo {
    private final AttachMediaListener a;
    private final MediaAttachmentController b;
    private final Session c;
    private final abr d;
    private final Context e;
    private final az f;
    private final ape<aw> g;

    public abp(Context context, abr abr, MediaAttachmentController mediaAttachmentController, Session session, az azVar, ape<aw> ape_com_twitter_android_composer_aw) {
        this.e = context;
        this.d = abr;
        this.b = mediaAttachmentController;
        this.g = ape_com_twitter_android_composer_aw;
        this.a = abr.e();
        this.c = session;
        this.f = azVar;
    }

    void h() {
        aw a = aw.a().a(l()).a(this.d.aB_()).b(this.c.e()).a(this.d.l());
        a(a);
        this.d.j();
        this.g.b(a);
    }

    void a(aw awVar) {
        CharSequence h = this.d.h();
        if (!aj.a(h)) {
            awVar.a(" " + h, 0);
        }
    }

    public void a(int i) {
        if (i == -1) {
            j();
            this.d.a();
        } else if (i == -2) {
            k();
            this.d.a();
        }
    }

    public boolean g() {
        if (this.d.aC_()) {
            return true;
        }
        if (!this.d.aB_()) {
            return false;
        }
        this.d.az_();
        return true;
    }

    public void a(MediaAttachment mediaAttachment) {
        this.b.a(mediaAttachment, this.a);
    }

    void i() {
        this.d.k();
        d l = l();
        bv.a(this.e, this.c, l);
        long g = this.c.g();
        bbu.a((TwitterScribeLog) new TwitterScribeLog(g).i().b("tweet:composition:::send_reply"));
        bi.a(g, ComposerType.INLINE_REPLY, l.d);
        this.d.j();
    }

    private d l() {
        return (d) new e().a(this.d.g()).a(this.d.i()).q();
    }

    void j() {
        AsyncOperation bwVar = new bw(this.e, this.c, l(), false);
        bwVar.a(ExecutionClass.SERIAL_BACKGROUND);
        this.f.a(bwVar);
        bbw twitterScribeLog = new TwitterScribeLog(this.c.g());
        twitterScribeLog.b("tweet", "composition", "cancel_reply_sheet", "save_draft", "click");
        bbu.a(twitterScribeLog);
    }

    void k() {
        bbw twitterScribeLog = new TwitterScribeLog(this.c.g());
        twitterScribeLog.b("tweet", "composition", "cancel_reply_sheet", "dont_save", "click");
        bbu.a(twitterScribeLog);
    }

    public void a() {
    }

    public void b() {
        i();
    }

    public void c() {
        h();
    }

    public void d() {
        bbw twitterScribeLog = new TwitterScribeLog(this.c.g());
        twitterScribeLog.b(":composition::add_photo:click");
        bbu.a(twitterScribeLog);
    }

    public void e() {
        bbw twitterScribeLog = new TwitterScribeLog(this.c.g());
        twitterScribeLog.b(":composition::remove_photo:click");
        bbu.a(twitterScribeLog);
    }

    public void f() {
        this.d.aA_();
    }
}
