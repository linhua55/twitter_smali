package com.twitter.android.composer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import apf;
import com.twitter.app.common.base.u;
import com.twitter.app.common.util.t;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.geo.g;
import com.twitter.util.Tristate;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.s;
import defpackage.aph;
import defpackage.cgl;
import defpackage.cni;
import java.util.List;

/* compiled from: Twttr */
public class aw extends u<aw> {
    public static aw a() {
        return new aw();
    }

    public static aw a(ComposerActivity composerActivity) {
        return new aw(composerActivity.getIntent());
    }

    protected aw() {
    }

    protected aw(Intent intent) {
        super(intent);
    }

    public int b() {
        if ("twitter".equals(this.b.getScheme())) {
            Uri data = this.b.getData();
            if ("post".equals(data.getHost()) && "poll".equals(data.getQueryParameter("mode"))) {
                return 5;
            }
        }
        return this.b.getIntExtra("composer_mode", 0);
    }

    public aw a(int i) {
        this.b.putExtra("composer_mode", i);
        return this;
    }

    public int c() {
        return this.b.getIntExtra("highlight_target", 0);
    }

    public aw b(int i) {
        this.b.putExtra("highlight_target", i);
        return this;
    }

    public aw a(Uri uri) {
        this.b.setData(uri);
        return this;
    }

    public int c(int i) {
        return this.b.getIntExtra("camera_mode", i);
    }

    public aw d(int i) {
        this.b.setFlags(i);
        return this;
    }

    public aw a(Intent intent) {
        this.b.putExtra("android.intent.extra.INTENT", intent);
        return this;
    }

    public bp d() {
        Class cls = (Class) ObjectUtils.a(this.b.getSerializableExtra("tweet_uploader_class"));
        if (cls != null) {
            try {
                return (bp) cls.newInstance();
            } catch (InstantiationException e) {
            } catch (IllegalAccessException e2) {
            }
        }
        return new ci();
    }

    public String b(Context context) {
        if ("twitter".equals(this.b.getScheme())) {
            Uri data = this.b.getData();
            String queryParameter = data.getQueryParameter("text");
            if (queryParameter == null) {
                queryParameter = data.getQueryParameter("message");
            }
            String host = data.getHost();
            if ("post".equals(host)) {
                StringBuilder stringBuilder = queryParameter != null ? new StringBuilder(queryParameter) : new StringBuilder();
                a(stringBuilder, data.getQueryParameter("url"));
                host = data.getQueryParameter("hashtags");
                if (host != null) {
                    for (String str : host.split(",")) {
                        a(stringBuilder, "#" + str);
                    }
                }
                if (data.getQueryParameter("via") != null) {
                    a(stringBuilder, context.getString(2131364014, new Object[]{data.getQueryParameter("via")}));
                }
                return stringBuilder.toString();
            } else if ("quote".equals(host)) {
                return context.getString(2131364377, new Object[]{data.getQueryParameter("screen_name"), queryParameter});
            }
        } else if (this.b.hasExtra("android.intent.extra.TEXT")) {
            return this.b.getStringExtra("android.intent.extra.TEXT");
        }
        return null;
    }

    public aw a(String str, int i) {
        int[] iArr = (aj.a((CharSequence) str) || str.length() < i) ? null : new int[]{i, i};
        return a(str, iArr);
    }

    public aw a(String str, int[] iArr) {
        if (aj.b((CharSequence) str)) {
            this.b.putExtra("android.intent.extra.TEXT", str);
            a(iArr);
        } else {
            this.b.removeExtra("android.intent.extra.TEXT");
            a(null);
        }
        return this;
    }

    public aw a(boolean z) {
        this.b.putExtra("tweet_text_edited", z);
        return this;
    }

    public boolean e() {
        return this.b.getBooleanExtra("tweet_text_edited", false);
    }

    public aw a(String str) {
        this.b.putExtra("scribe_page", str);
        return this;
    }

    public aw a(ScribeItem scribeItem) {
        this.b.putExtra("scribe_item", scribeItem);
        return this;
    }

    public aw a(bd bdVar) {
        a(e.b(bdVar.c));
        a(bdVar.b);
        return this;
    }

    public int[] f() {
        return this.b.getIntArrayExtra("selection");
    }

    public aw a(int[] iArr) {
        if (iArr == null || iArr.length != 2) {
            this.b.removeExtra("selection");
        } else {
            this.b.putExtra("selection", iArr);
        }
        return this;
    }

    public cni g() {
        return (cni) ab.a(this.b, "pc", cni.a);
    }

    public aw a(cni cni) {
        if (cni != null) {
            ab.a(this.b, "pc", (Object) cni, cni.a);
        } else {
            this.b.removeExtra("pc");
        }
        return this;
    }

    public g h() {
        return (g) ab.a(this.b, "geo_tag", g.a);
    }

    public aw a(g gVar) {
        ab.a(this.b, "geo_tag", (Object) gVar, g.a);
        return this;
    }

    public String i() {
        return this.b.getStringExtra("AbsFragmentActivity_account_name");
    }

    public aw b(String str) {
        if (aj.b((CharSequence) str)) {
            this.b.putExtra("AbsFragmentActivity_account_name", str);
        } else {
            this.b.removeExtra("AbsFragmentActivity_account_name");
        }
        return this;
    }

    public long j() {
        if ("twitter".equals(this.b.getScheme())) {
            Uri data = this.b.getData();
            if ("post".equals(data.getHost())) {
                try {
                    return Long.parseLong(data.getQueryParameter("in_reply_to_status_id"));
                } catch (NumberFormatException e) {
                }
            }
        }
        return this.b.getLongExtra("replied_tweet_id", 0);
    }

    public aw a(long j) {
        this.b.putExtra("replied_tweet_id", j);
        return this;
    }

    public Tweet k() {
        return (Tweet) this.b.getParcelableExtra("replied_tweet");
    }

    public aw a(Tweet tweet) {
        this.b.putExtra("replied_tweet", tweet);
        return this;
    }

    public aw b(boolean z) {
        this.b.putExtra("reply_prefill_disabled", z);
        return this;
    }

    public Tristate l() {
        if (this.b.hasExtra("reply_prefill_disabled")) {
            return Tristate.a(this.b.getBooleanExtra("reply_prefill_disabled", false));
        }
        return Tristate.UNDEFINED;
    }

    public as m() {
        return (as) ab.a(this.b, "quoted_tweet", as.a);
    }

    public aw b(Tweet tweet) {
        a(new as(tweet));
        return this;
    }

    public aw a(as asVar) {
        if (asVar != null) {
            ab.a(this.b, "quoted_tweet", (Object) asVar, as.a);
        } else {
            this.b.removeExtra("quoted_tweet");
        }
        return this;
    }

    public long n() {
        return this.b.getLongExtra("draft_id", 0);
    }

    public aw b(long j) {
        this.b.putExtra("draft_id", j);
        return this;
    }

    public List<DraftAttachment> o() {
        return (List) ab.a(this.b, "attachments", s.a(DraftAttachment.a));
    }

    public aw a(List<DraftAttachment> list) {
        ab.a(this.b, "attachments", (Object) list, s.a(DraftAttachment.a));
        return this;
    }

    public Uri p() {
        return (Uri) this.b.getParcelableExtra("android.intent.extra.STREAM");
    }

    public String q() {
        return this.b.getStringExtra("ref_event");
    }

    public String r() {
        return e.b(this.b.getStringExtra("scribe_page"));
    }

    public ScribeItem s() {
        return (ScribeItem) this.b.getParcelableExtra("scribe_item");
    }

    public aw c(String str) {
        this.b.putExtra("ref_event", str);
        return this;
    }

    public String t() {
        return this.b.getStringExtra("card_url");
    }

    public aw d(String str) {
        this.b.putExtra("card_url", str);
        return this;
    }

    public long u() {
        return this.b.getLongExtra("card_host_id", 0);
    }

    public aw c(long j) {
        this.b.putExtra("card_host_id", j);
        return this;
    }

    public cgl v() {
        return (cgl) ab.a(this.b, "conversation_card_data", cgl.a);
    }

    public aw a(cgl cgl) {
        ab.a(this.b, "conversation_card_data", (Object) cgl, cgl.a);
        return this;
    }

    public aw a(d dVar) {
        return b(dVar.b).a(dVar.e).a(dVar.c, null).a(dVar.d).a(dVar.h).a(dVar.g).a(dVar.i).d(dVar.j).b(dVar.f);
    }

    public Intent a(Context context) {
        return a(context, ComposerActivity.class);
    }

    public static <A extends Activity & t> aph<aw, Intent> a(A a, int i) {
        return new apf(a, ComposerActivity.class, i);
    }

    private static void a(StringBuilder stringBuilder, String str) {
        if (aj.b((CharSequence) str)) {
            if (stringBuilder.length() > 0) {
                stringBuilder.append(' ');
            }
            stringBuilder.append(str);
        }
    }
}
