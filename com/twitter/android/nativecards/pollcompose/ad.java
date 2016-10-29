package com.twitter.android.nativecards.pollcompose;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import bbn;
import bmx;
import cgf;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.android.nativecards.ConsumerPollCard.Configuration;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.upload.aa;
import com.twitter.library.api.upload.z;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.q;
import com.twitter.library.service.t;
import com.twitter.model.core.cd;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bze;
import defpackage.cme;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class ad extends z {
    private static final String[] a;
    private static final String[] b;
    private static final String[] c;
    private final List<aa> i;
    private final cgf j;
    private final com.twitter.util.z<bmx> k;
    private final String l;
    private cme m;

    static {
        a = new String[]{Configuration.TWO_CHOICE_TEXT_ONLY.modelName, Configuration.THREE_CHOICE_TEXT_ONLY.modelName, Configuration.FOUR_CHOICE_TEXT_ONLY.modelName};
        b = new String[]{Configuration.TWO_CHOICE_IMAGE.modelName, Configuration.THREE_CHOICE_IMAGE.modelName, Configuration.FOUR_CHOICE_IMAGE.modelName};
        c = new String[]{"twitter:string:choice1_label", "twitter:string:choice2_label", "twitter:string:choice3_label", "twitter:string:choice4_label"};
    }

    public ad(Context context, Session session, long j, List<aa> list, cgf cgf, com.twitter.util.z<bmx> zVar) {
        super(context, ad.class.getName(), session);
        this.i = list;
        this.j = cgf;
        this.k = zVar;
        this.l = ad.class.getSimpleName() + j;
        a(new k().a(new q(1)).a(new l(context)).a(new t(t.b, t.c, (int) TimeUnit.HOURS.toMillis(24))));
    }

    protected void a(com.twitter.library.service.aa aaVar) {
        Throwable e;
        a((int) Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        try {
            String a = a(this.j);
            a(500);
            StringBuilder append = an.a(bze.b(), new Object[0]).append(".json");
            List arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair("card_data", a));
            v a2 = v.a(cme.class);
            j a3 = new j(this.p, append.toString()).a(RequestMethod.b).a(new w(N().d)).a(arrayList).a(a2).a(this.g);
            a((int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            HttpOperation c = a3.a().c();
            com.twitter.internal.network.k l = c.l();
            if (l != null) {
                aaVar.a(c);
                if (l.a()) {
                    this.m = (cme) a2.b();
                } else {
                    a("custom_errors", cd.a((cd) a2.c()));
                }
            } else {
                aaVar.a(false);
            }
            a((int) AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
        } catch (JSONException e2) {
            e = e2;
            bbn.a(e);
            aaVar.a(-1, e);
        } catch (IndexOutOfBoundsException e3) {
            e = e3;
            bbn.a(e);
            aaVar.a(-1, e);
        }
    }

    private String a(cgf cgf) throws JSONException, IndexOutOfBoundsException {
        JSONObject jSONObject = new JSONObject();
        cgf c = c(cgf);
        jSONObject.put("twitter:card", b(c));
        List a = c.a();
        int size = a.size();
        for (int i = 0; i < size; i++) {
            jSONObject.put(c[i], a.get(i));
        }
        jSONObject.put("twitter:api:api:endpoint", "1");
        if (!(cgf.c() == null || CollectionUtils.b(this.i))) {
            String str;
            String b;
            if (d.a("cards_polling_card_media_new_parameter_enabled", false)) {
                str = "twitter:image:image:src:id";
                b = d.b("cards_polling_card_media_uri_scheme", "mis");
            } else {
                str = "twitter:image:image:src";
                b = "media";
            }
            jSONObject.put(str, String.format(Locale.ROOT, "%s://%d", new Object[]{b, Long.valueOf(((aa) this.i.get(0)).c())}));
        }
        CharSequence b2 = c.b();
        if (aj.b(b2)) {
            jSONObject.put("twitter:long:duration_minutes", b2);
        }
        return jSONObject.toString();
    }

    private String b(cgf cgf) {
        int size = cgf.a().size() - 2;
        return cgf.c() == null ? a[size] : b[size];
    }

    private cgf c(cgf cgf) {
        List<String> a = cgf.a();
        List arrayList = new ArrayList(a.size());
        for (String str : a) {
            if (aj.b(str)) {
                arrayList.add(str);
            }
        }
        return new cgf(arrayList, cgf.b(), cgf.c());
    }

    public cme a() {
        return this.m;
    }

    public void a(int i) {
        Object a;
        if (i < 0) {
            a = bmx.a(this.l, 6);
        } else if (i >= AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS) {
            a = bmx.b(this.l, 6);
        } else {
            a = bmx.a(this.l, 6, i);
        }
        this.k.a(a);
    }
}
