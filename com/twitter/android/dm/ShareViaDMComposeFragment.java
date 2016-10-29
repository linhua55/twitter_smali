package com.twitter.android.dm;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.annotation.StringRes;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import bka;
import com.twitter.android.DMComposeFragment;
import com.twitter.android.ShareTweetEmptyOverlay;
import com.twitter.android.autocomplete.h;
import com.twitter.android.autocomplete.n;
import com.twitter.android.dm.widget.ShareViaDMMessageComposer;
import com.twitter.android.dm.widget.d;
import com.twitter.android.provider.e;
import com.twitter.android.provider.j;
import com.twitter.android.provider.l;
import com.twitter.library.api.dm.requests.q;
import com.twitter.library.client.az;
import com.twitter.library.provider.LocalContactInfo;
import com.twitter.library.provider.LocalContactInfo.Type;
import com.twitter.library.provider.k;
import com.twitter.library.provider.o;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.view.QuoteView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.model.dms.ad;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.biw;
import defpackage.cgu;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

/* compiled from: Twttr */
public class ShareViaDMComposeFragment extends DMComposeFragment implements n<l, k>, d, e {
    private static final com.twitter.util.serialization.n<List<k>> j;
    private aq k;
    private ShareViaDMMessageComposer l;
    private QuoteView m;
    private aj n;
    private boolean o;
    private boolean p;
    private j q;
    private l r;
    private boolean s;
    private boolean t;
    private al u;
    private as v;
    private boolean w;
    @StringRes
    private int x;
    private v y;

    public /* synthetic */ void b(Object obj, cgu cgu) {
        a((l) obj, cgu);
    }

    static {
        j = s.a(k.c);
    }

    public void onCreate(Bundle bundle) {
        boolean z = true;
        this.p = !biw.d(getActivity());
        this.y = new v(getArguments());
        this.v = this.y.i();
        this.w = this.y.k();
        if (this.v == null) {
            z = false;
        }
        this.a = z;
        this.x = this.y.m();
        super.onCreate(bundle);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected defpackage.sw<java.lang.String, java.lang.Object> b() {
        /*
        r11 = this;
        r0 = 1;
        r9 = 0;
        r10 = r11.getContext();
        r1 = new com.twitter.android.provider.j;
        r1.<init>(r10);
        r11.q = r1;
        r1 = new com.twitter.android.provider.l;
        r2 = r11.v;
        r2 = r2.e;
        r4 = r11.aT();
        r4 = r4.g();
        r6 = r11.v;
        r6 = r6.b;
        r8 = 6;
        r1.<init>(r2, r4, r6, r8);
        r11.r = r1;
        r1 = com.twitter.android.dm.h.a(r10);
        if (r1 == 0) goto L_0x0055;
    L_0x002b:
        r1 = com.twitter.android.lf.a();
        r2 = new java.lang.String[r0];
        r3 = "android.permission.READ_CONTACTS";
        r2[r9] = r3;
        r1 = r1.a(r10, r2);
        if (r1 == 0) goto L_0x0055;
    L_0x003c:
        r3 = new so;
        r1 = new com.twitter.library.util.e;
        r1.<init>(r0, r10);
        r3.<init>(r1);
        r0 = new com.twitter.android.provider.a;
        r1 = super.b();
        r2 = r11.q;
        r4 = r11.r;
        r5 = r11;
        r0.<init>(r1, r2, r3, r4, r5);
        return r0;
    L_0x0055:
        r0 = r9;
        goto L_0x003c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.dm.ShareViaDMComposeFragment.b():sw<java.lang.String, java.lang.Object>");
    }

    private void B() {
        new h(this.q, this).a(this.r);
    }

    public boolean y() {
        return E();
    }

    protected View a(LayoutInflater layoutInflater) {
        View a = super.a(layoutInflater);
        this.m = (QuoteView) a.findViewById(2131952230);
        this.l = (ShareViaDMMessageComposer) a.findViewById(2131952328);
        if (!(!this.p || C() || this.w)) {
            this.n = new aj(getContext(), (ViewGroup) a.findViewById(2131953279));
        }
        a(!this.w);
        return a;
    }

    @LayoutRes
    protected int f() {
        return 2130969389;
    }

    public void onActivityCreated(Bundle bundle) {
        List list;
        String c;
        String l;
        super.onActivityCreated(bundle);
        Collection j;
        if (bundle == null) {
            j = this.y.j();
            list = null;
            c = this.y.c();
            l = this.y.l();
        } else {
            l = null;
            c = null;
            j = null;
            list = (List) m.a((byte[]) bundle.getSerializable("suggestions"), j);
        }
        View view = (View) com.twitter.util.object.e.a(getView());
        this.u = (al) new an().a(new ar(view)).d(new a(view)).b(new ab(view)).c(this.n != null ? this.n : as.a).q();
        if (C()) {
            ak.a(view);
        }
        this.k = new aq();
        a((d) this, this.v, c, l);
        B();
        z();
        if (list != null) {
            this.k.a((k[]) list.toArray(new k[list.size()]));
        }
        if (!I()) {
            this.f.getViewTreeObserver().addOnGlobalLayoutListener(new ag(this));
        }
        this.m.setQuoteData(this.v);
        this.e.setOnFocusChangeListener(new ah(this));
        if (!CollectionUtils.b((Collection) r4)) {
            for (Object obj : r4) {
                a(BuildConfig.VERSION_NAME, obj.bf_(), obj, -1);
            }
            this.e.setEnabled(false);
        }
        G();
    }

    private void a(d dVar, as asVar, String str, String str2) {
        this.l.setMessageComposerListener(dVar);
        this.l.a(asVar, str, str2);
    }

    private boolean C() {
        return 2 == getResources().getConfiguration().orientation;
    }

    public void a() {
        super.a();
        TwitterUser f = aT().f();
        if (f != null && f.P == 0) {
            ShareTweetEmptyOverlay.a(this.v, this);
        }
    }

    protected String g() {
        return "share_tweet_user_select";
    }

    public void E_() {
        super.E_();
        if (this.t && isVisible()) {
            r.b(getActivity(), this.e, true);
        }
    }

    public void a(String str, cgu<Object> cgu_java_lang_Object) {
        this.u.a(H());
        z();
        G();
        if (F() && this.s) {
            D();
        } else {
            super.a((Object) str, (cgu) cgu_java_lang_Object);
        }
    }

    private void D() {
        int headerViewsCount = this.f.getHeaderViewsCount();
        if (this.h.getItem(headerViewsCount) != null) {
            this.f.setSelectionFromTop(headerViewsCount, 0);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ab.a(bundle, "suggestions", com.twitter.util.collection.n.a(this.k.c()), j);
    }

    public void b(String str) {
        com.twitter.library.database.dm.d g = this.k.g();
        String str2 = g == null ? null : g.b;
        String uuid = UUID.randomUUID().toString();
        Context activity = getActivity();
        long j = this.v.e;
        String str3 = this.v.m == null ? null : this.v.m.c;
        this.aa.a(new bka(activity, aT(), this.k.e()));
        az.a(activity).a(new q(activity, aT(), str2, uuid, str, this.v, this.k.f(), null, false), new ai(this));
        long g2 = aT().g();
        bbw a = ((TwitterScribeLog) new TwitterScribeLog(g2).b("messages:share_tweet_conversation:::send_tweet_dm")).a(str2, j, str3);
        if (this.w) {
            a.b(g2, null, null);
            a.i("2586390716:message_me");
            if (this.v.k != null) {
                a.d(this.v.k.c());
            }
        }
        bbu.a(a);
        Toast.makeText(activity, 2131363606, 0).show();
        biw.c(activity);
        activity.setResult(-1, null);
        activity.finish();
    }

    public void r() {
    }

    public void s() {
    }

    public void t() {
    }

    public void z() {
        this.l.setHasValidRecipients(this.k.a());
    }

    private boolean E() {
        return F();
    }

    private boolean F() {
        return aj.a(this.e.getText());
    }

    private void G() {
        if (this.n == null || !this.n.a()) {
            getActivity().setTitle(this.x);
        } else {
            getActivity().setTitle(null);
        }
    }

    private ao H() {
        return (ao) new ap().a(F()).c(aj.b(w())).e(this.o).b(this.k.a()).d(this.k.b()).f(this.s).q();
    }

    public boolean a(String str, long j, Object obj, int i) {
        super.a(str, j, obj, i);
        if (this.k.d() == 1) {
            this.l.p();
        }
        this.u.b(H());
        return true;
    }

    protected void a(LocalContactInfo localContactInfo) {
        super.a(localContactInfo);
        try {
            startActivity(Intent.createChooser(LocalContactInfo.a(localContactInfo, getString(2131364409, this.v.d, Long.valueOf(this.v.e))), getString(localContactInfo.c == Type.a ? 2131363603 : 2131363601)));
            getActivity().finish();
        } catch (ActivityNotFoundException e) {
            Toast.makeText(getContext(), getString(localContactInfo.c == Type.a ? 2131363604 : 2131363602), 0).show();
        }
    }

    protected void a(long j, TwitterUser twitterUser) {
        super.a(j, twitterUser);
        this.k.a(new k[]{(k) new o().a(twitterUser).q()});
    }

    protected void a(com.twitter.library.database.dm.d dVar) {
        a(-1, aj.a(dVar.d) ? biw.a(getActivity(), dVar.j, true, aT().g()) : dVar.d, dVar);
        this.k.a(new k[]{(k) new com.twitter.library.provider.h().a(dVar).q()});
    }

    protected void a(TwitterUser twitterUser, ad adVar) {
        super.a(twitterUser, adVar);
        if (adVar.a) {
            this.k.a(new k[]{(k) new o().a(twitterUser).q()});
        }
    }

    public void afterTextChanged(Editable editable) {
        super.afterTextChanged(editable);
        this.k.a(u());
        this.u.b(H());
    }

    private boolean I() {
        return this.k.a() && (aj.a(w()) || this.k.b());
    }

    protected boolean q() {
        return false;
    }

    protected String h() {
        if (F()) {
            return "suggested";
        }
        return super.h();
    }

    public void A() {
        String str = this.k.a() ? "cancel_with_selection" : "cancel_without_selection";
        bbu.a(new TwitterScribeLog(aT().g()).b("messages", g(), null, null, str));
    }

    public void a(l lVar, cgu<k> cgu_com_twitter_library_provider_k) {
        boolean z = true;
        this.o = true;
        if (getActivity() != null) {
            if (cgu_com_twitter_library_provider_k.aU_() != 0) {
                z = false;
            }
            this.t = z;
            this.f.setLayoutAnimation(i.a(getActivity()));
            this.u.b(H());
        }
    }
}
