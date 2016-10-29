package com.twitter.library.api.dm.requests;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.VisibleForTesting;
import android.support.v4.os.EnvironmentCompat;
import bii;
import bji;
import com.twitter.android.mx;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.i;
import com.twitter.library.api.af;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.h;
import com.twitter.library.api.upload.z;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.network.an;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.t;
import com.twitter.media.model.MediaFile;
import com.twitter.media.util.MediaException;
import com.twitter.model.core.cd;
import com.twitter.model.dms.ae;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.m;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.big;
import defpackage.bip;
import defpackage.biw;
import defpackage.bmu;
import defpackage.bmw;
import defpackage.bmx;
import defpackage.cni;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.apache.http.message.BasicNameValuePair;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class SendDMRequest extends z implements com.twitter.util.z<bmx> {
    private static final int i;
    private static final int j;
    private static final int k;
    public bji a;
    protected final di b;
    protected final e c;
    private final Session l;
    private boolean m;
    private String n;
    private Set<Integer> r;
    private bii s;
    private DraftAttachment t;

    public abstract boolean e();

    static {
        i = (int) TimeUnit.SECONDS.toMillis(1);
        j = (int) TimeUnit.SECONDS.toMillis(30);
        k = (int) TimeUnit.MINUTES.toMillis(5);
    }

    protected SendDMRequest(Context context, String str, Session session) {
        super(context, str, session);
        a((ac) new k().a(new l(context)).a(new t(i, j, k)));
        this.b = S();
        this.c = T();
        this.l = session;
    }

    public String f() {
        return this.n;
    }

    public Set<Integer> g() {
        return this.r;
    }

    public long h() {
        return this.s == null ? -1 : this.s.g;
    }

    protected void a(boolean z) {
        this.m = z;
    }

    protected void a(bii bii, DraftAttachment draftAttachment, aa aaVar, ae aeVar) {
        this.s = bii;
        this.t = draftAttachment;
        boolean e = e();
        try {
            boolean k;
            String a = a(aaVar, draftAttachment, e);
            long j = N().c;
            p pVar = new p();
            HttpOperation a2 = a(bii, aeVar, j, a, pVar);
            com.twitter.internal.network.k l = a2.l();
            if (l != null) {
                String str;
                if (isCancelled()) {
                    str = "cancel";
                } else if (l.a == 200) {
                    str = "success";
                } else {
                    str = "failure";
                }
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(j);
                String[] strArr = new String[3];
                strArr[0] = "app:twitter_service:direct_messages";
                strArr[1] = e ? "retry_dm" : "send_dm";
                strArr[2] = str;
                a((TwitterScribeLog) twitterScribeLog.b(strArr), l, a != null);
                aaVar.a(a2);
                k = a2.k();
            } else {
                aaVar.a(false);
                k = false;
            }
            if (draftAttachment != null) {
                int i;
                String str2 = draftAttachment.g.extension;
                int i2 = k ? 0 : 1;
                if (k) {
                    i = -1;
                } else {
                    i = TwitterScribeLog.b(l);
                }
                a(j, str2, i2, i, l);
            }
            if (aaVar.i() == null) {
                aaVar.a(pVar.a());
            }
        } catch (UploadMessageMediaException e2) {
        }
    }

    public void b(ab<aa> abVar) {
        this.m = true;
        a((ab) abVar, true);
    }

    private HttpOperation a(bii bii, ae aeVar, long j, String str, p pVar) {
        String stringBuilder = an.a(a(), "1.1", "dm", "new").append(".json").toString();
        return new j(this.p, (CharSequence) stringBuilder).a(RequestMethod.POST).a(new w(N().d)).a(a(bii, aeVar, j, str, stringBuilder)).a((i) pVar).a(this.g).a(false).a().c();
    }

    private List<BasicNameValuePair> a(bii bii, ae aeVar, long j, String str, String str2) {
        n b = n.d().b(new BasicNameValuePair("text", bii.k()), new BasicNameValuePair("request_id", bii.o()), new BasicNameValuePair("include_cards", String.valueOf(true)), new BasicNameValuePair("cards_platform", "Android-12"), new BasicNameValuePair("dm_users", String.valueOf(true)));
        if (str != null) {
            b.c(new BasicNameValuePair("media_id", str));
        }
        if (biw.a(bii.h)) {
            b.c(new BasicNameValuePair("recipient_ids", aj.a((CharSequence) ",", S().a(bii.h, j))));
        } else {
            b.c(new BasicNameValuePair("conversation_id", String.valueOf(bii.h)));
        }
        if (aeVar != null && aeVar.d > 0) {
            b.c(new BasicNameValuePair("tweet_id", String.valueOf(aeVar.d)));
            cni cni = aeVar.e.m;
            if (cni != null) {
                b.c(new BasicNameValuePair("impression_id", cni.c));
            }
        }
        return (List) b.q();
    }

    String a(aa aaVar, DraftAttachment draftAttachment, boolean z) throws UploadMessageMediaException {
        if (draftAttachment == null) {
            return null;
        }
        aa a = a(draftAttachment, z);
        if (a == null) {
            aaVar.a(false);
            throw new UploadMessageMediaException("Upload media failed");
        } else if (a.b()) {
            long a2 = a.a();
            com.twitter.library.api.upload.aa aaVar2 = new com.twitter.library.api.upload.aa(draftAttachment);
            aaVar2.a(a2, m.b());
            if (aaVar2.f()) {
                aa a3 = a(aaVar2, z);
                if (a3 == null) {
                    aaVar.a(false);
                    throw new UploadMessageMediaException("Upload media metadata failed");
                } else if (!a3.b()) {
                    aaVar.a(a3);
                    throw new UploadMessageMediaException("Upload media metadata failed");
                }
            }
            return String.valueOf(a2);
        } else {
            aaVar.a(a);
            throw new UploadMessageMediaException("Upload media failed");
        }
    }

    private void a(TwitterScribeLog twitterScribeLog, com.twitter.internal.network.k kVar, boolean z) {
        if (kVar != null) {
            if (this.m) {
                twitterScribeLog.c(2);
            }
            ((TwitterScribeLog) twitterScribeLog.i(z ? "has_media" : "no_media")).b(TwitterScribeLog.b(kVar));
            TwitterScribeLog.a(this.p, twitterScribeLog, kVar);
            bbu.a((bbw) twitterScribeLog);
        }
    }

    public void a(ab<aa> abVar) {
        a((ab) abVar, false);
        aa aaVar = (aa) abVar.b();
        HttpOperation f = aaVar.f();
        e T = T();
        if (f == null || !f.k()) {
            if (!isCancelled()) {
                a(2, T);
            }
            this.r = ar.a(CollectionUtils.a(cd.a(f != null ? (cd) ((p) f.q()).c() : null)));
            if ((this.r.contains(Integer.valueOf(150)) || this.r.contains(Integer.valueOf(349))) && this.s != null && !biw.a(this.s.h)) {
                this.b.d(this.s.h, true, T);
                T.a();
                return;
            }
            return;
        }
        com.twitter.internal.network.k g = aaVar.g();
        switch (g != null ? g.a : 0) {
            case 200:
                long j;
                com.twitter.library.service.ab N = N();
                this.a = (bji) ((p) f.q()).b();
                bip g2 = this.a.g();
                if (e()) {
                    j = g2.g;
                } else {
                    j = this.s.g;
                }
                g2.d = j;
                this.b.a(this.s, g2, this.a, T);
                T.a();
                this.n = g2.h;
                if (this.t != null) {
                    this.t.b(null);
                }
                List<com.twitter.model.dms.ar> list = this.a.a;
                if (!list.isEmpty()) {
                    n a = n.a(list.size());
                    for (com.twitter.model.dms.ar arVar : list) {
                        a.c(Long.valueOf(arVar.a));
                    }
                    this.b.a(this.n, CollectionUtils.e((Collection) a.q()), T);
                }
                b((AsyncOperation) new f(this.p, N, this.n));
            case 202:
                if (big.e()) {
                    a(0, T);
                } else {
                    a(2, T);
                }
            default:
                a(2, T);
        }
    }

    private void a(int i, e eVar) {
        if (this.s != null) {
            com.twitter.util.j.c();
            this.b.a(this.s, i, eVar);
            eVar.a();
        }
    }

    private void a(ab<aa> abVar, boolean z) {
        if (!isCancelled()) {
            aa aaVar = (aa) abVar.b();
            boolean z2 = aaVar.b() || aaVar.d() == 403;
            af.a(this.p, "app:twitter_service:direct_messages:create", N().c, z2, abVar, z);
        }
    }

    private String a() {
        if (AppConfig.m().p()) {
            SharedPreferences sharedPreferences = this.p.getSharedPreferences("debug_prefs", 0);
            if (sharedPreferences.getBoolean("dm_staging_enabled", false)) {
                return sharedPreferences.getString("dm_staging_host", this.q.a);
            }
        }
        return this.q.a;
    }

    @VisibleForTesting
    h a(DraftAttachment draftAttachment, boolean z) {
        h a;
        Exception e;
        String message;
        String str = null;
        boolean z2 = false;
        try {
            a = a(draftAttachment);
        } catch (CancellationException e2) {
            e = e2;
            z2 = true;
            message = e.getMessage();
            a = null;
            str = message;
        } catch (InterruptedException e3) {
            e = e3;
            z2 = true;
            message = e.getMessage();
            a = null;
            str = message;
        } catch (ExecutionException e4) {
            message = e4.getMessage();
            a = null;
            str = message;
        }
        bmw.a().b((com.twitter.util.z) this, this.d);
        if (a == null || !a.b()) {
            a(N().c, draftAttachment, "Upload media failed", z, z2, str);
        }
        return a;
    }

    private h a(DraftAttachment draftAttachment) throws ExecutionException, InterruptedException {
        com.twitter.library.api.upload.l a;
        com.twitter.util.z bmu = new bmu(1, this.d, 3, true);
        bmw.a().a((com.twitter.util.z) this, this.d);
        com.twitter.library.api.upload.i iVar = new com.twitter.library.api.upload.i(this.p, N());
        if (big.h() && ao.e(draftAttachment.f)) {
            a = iVar.a(draftAttachment.f, draftAttachment.g, MediaUsage.d, bmu);
        } else {
            MediaFile a2;
            EditableMedia a3 = draftAttachment.a(3);
            if (a3 != null) {
                a2 = com.twitter.library.media.util.t.a(this.p, a3);
            } else {
                a2 = null;
            }
            if (a2 == null) {
                return new h(null, 0, new MediaException("media is null or failed to prepare"));
            }
            a = iVar.a(a2, Collections.emptyList(), bmu, MediaUsage.d);
        }
        return (h) a.get();
    }

    @VisibleForTesting
    aa a(com.twitter.library.api.upload.aa aaVar, boolean z) {
        aa aaVar2;
        Exception e;
        String message;
        String str = null;
        ObservablePromise observablePromise = new ObservablePromise();
        az.a(this.p).a(new com.twitter.library.api.upload.t(this.p, "set_metadata", this.l, aaVar, observablePromise));
        boolean z2 = false;
        try {
            aaVar2 = (aa) observablePromise.get();
        } catch (CancellationException e2) {
            e = e2;
            z2 = true;
            message = e.getMessage();
            aaVar2 = null;
            str = message;
        } catch (InterruptedException e3) {
            e = e3;
            z2 = true;
            message = e.getMessage();
            aaVar2 = null;
            str = message;
        } catch (ExecutionException e4) {
            message = e4.getMessage();
            aaVar2 = null;
            str = message;
        }
        if (aaVar2 == null || !aaVar2.b()) {
            a(N().c, aaVar.b(), "Upload media metadata failed", z, z2, str);
        }
        return aaVar2;
    }

    public void a(bmx bmx) {
        if (bmx != null && this.d.equals(bmx.a) && this.s != null && !isCancelled()) {
            this.b.b(this.s, bmx.c, this.c);
            this.c.a();
        }
    }

    private void a(long j, String str, int i, int i2, com.twitter.internal.network.k kVar) {
        String str2;
        switch (i) {
            case mx.View_android_theme /*0*/:
                str2 = "success";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str2 = "error";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str2 = "cancel";
                break;
            default:
                str2 = EnvironmentCompat.MEDIA_UNKNOWN;
                break;
        }
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b("app:twitter_service:dm_with_media", str, str2)).i("has_media")).f(TelephonyUtil.i().h() ? "connected" : "disconnected");
        if (this.m) {
            bbw.c(2);
        }
        if (i2 != -1) {
            bbw.b(i2);
        }
        if (kVar != null) {
            TwitterScribeLog.a(this.p, (TwitterScribeLog) bbw, kVar);
        }
        bbu.a(bbw);
    }

    private void a(long j, DraftAttachment draftAttachment, String str, boolean z, boolean z2, String str2) {
        String str3;
        String str4;
        int i = 3;
        int i2 = 2;
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(j);
        String[] strArr = new String[3];
        strArr[0] = "app:twitter_service:direct_messages";
        strArr[1] = z ? "retry_dm" : "send_dm";
        if (z2) {
            str3 = "cancel";
        } else {
            str3 = "failure";
        }
        strArr[2] = str3;
        TwitterScribeLog twitterScribeLog2 = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).i("has_media")).b(6)).d(str);
        if (TelephonyUtil.i().h()) {
            str4 = "connected";
        } else {
            str4 = "disconnected";
        }
        bbw bbw = (TwitterScribeLog) twitterScribeLog2.f(str4);
        if (this.m) {
            bbw.c(2);
        }
        if (str2 != null) {
            bbw.k(str2);
        }
        bbu.a(bbw);
        String str5 = draftAttachment.g.extension;
        if (!z2) {
            i2 = 1;
        }
        if (!z2) {
            i = 6;
        }
        a(j, str5, i2, i, null);
    }
}
