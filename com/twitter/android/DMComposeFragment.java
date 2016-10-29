package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.LayoutRes;
import android.support.v4.app.FragmentActivity;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Toast;
import com.twitter.android.autocomplete.adapters.DMRecipientAdapter;
import com.twitter.android.autocomplete.d;
import com.twitter.android.dm.l;
import com.twitter.android.dm.widget.DMRecipientSearch;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.library.api.dm.requests.k;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.provider.LocalContactInfo;
import com.twitter.library.provider.LocalContactInfo.Type;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.ad;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.big;
import defpackage.boe;
import defpackage.sw;
import java.util.Set;
import st;
import te;

/* compiled from: Twttr */
public class DMComposeFragment extends SelectionFragment<String, Object> implements d<String> {
    protected boolean a;
    protected DMRecipientSearch b;
    private String j;
    private boolean k;
    private boolean l;
    private boolean m;
    private int n;
    private boolean o;
    private boolean p;
    private String q;
    private Uri r;
    private boolean s;

    public /* synthetic */ g o() {
        return j();
    }

    public DMComposeFragment() {
        super(new cb(null));
    }

    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        l j = j();
        this.k = j.k();
        this.q = j.c();
        this.o = j.i();
        this.p = j.j();
        this.r = this.o ? (Uri) j.h("android.intent.extra.STREAM") : null;
        this.s = j.l();
        long g = aT().g();
        if (this.o) {
            str = "external_share";
        } else {
            str = null;
        }
        bbu.a(new TwitterScribeLog(g).b("messages", g(), null, str, "impression"));
        Context activity = getActivity();
        this.g = b();
        this.h = new DMRecipientAdapter(activity, this);
    }

    public void onStart() {
        super.onStart();
        p();
    }

    protected sw<String, Object> b() {
        Session aT = aT();
        long g = aT.g();
        Context activity = getActivity();
        return new st(activity, new te(activity, aT, "compose_message"), g);
    }

    public int c() {
        return big.g() - 1;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Context activity = getActivity();
        if (this.k) {
            activity.setTitle(2131362423);
        } else if (this.a) {
            activity.setTitle(2131362486);
        } else if (this.p) {
            activity.setTitle(2131362456);
        } else {
            activity.setTitle(2131362485);
        }
        long b = m.b();
        Session aT = aT();
        com.twitter.library.client.l lVar = new com.twitter.library.client.l(activity, aT.e(), "dm");
        if (lVar.getLong("followers_timestamp", 0) + 86400000 < b) {
            lVar.a().a("followers_timestamp", b).apply();
            az.a(activity).a(new boe(activity, aT, 1).a(400));
        }
    }

    protected View a(LayoutInflater layoutInflater) {
        View a = super.a(layoutInflater, f());
        this.b = (DMRecipientSearch) a.findViewById(2131952326);
        this.e.setLongClickable(true);
        this.e.setQueryTransformer(this);
        return a;
    }

    @LayoutRes
    protected int f() {
        return 2130968751;
    }

    protected String g() {
        return "compose";
    }

    protected String h() {
        return "user_list";
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.beforeTextChanged(charSequence, i, i2, i3);
        this.n = u().size();
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        s();
    }

    public void afterTextChanged(Editable editable) {
        super.afterTextChanged(editable);
        if (this.n > u().size()) {
            r();
        }
        t();
        y();
        this.b.a(v());
    }

    private void r() {
        bbu.a(new TwitterScribeLog(aT().g()).b("messages", g(), null, null, "remove"));
    }

    private void s() {
        this.j = BuildConfig.VERSION_NAME;
    }

    public boolean a(String str, long j, Object obj, int i) {
        String h;
        String str2 = null;
        long g = aT().g();
        boolean b_ = b_(j);
        if (obj instanceof TwitterUser) {
            h = h();
            str2 = "user";
            a(j, (TwitterUser) obj);
        } else if (obj instanceof String) {
            h = "typeahead";
            str2 = "query";
            b((String) obj);
        } else if (obj instanceof com.twitter.library.database.dm.d) {
            h = h();
            str2 = "conversation";
            a((com.twitter.library.database.dm.d) obj);
        } else if (obj instanceof LocalContactInfo) {
            LocalContactInfo localContactInfo = (LocalContactInfo) obj;
            h = "address_book";
            str2 = Type.a == localContactInfo.c ? "sms" : NotificationCompatApi21.CATEGORY_EMAIL;
            a(localContactInfo);
        } else {
            h = null;
        }
        if (b_) {
            r();
        } else if (!(h == null || str2 == null)) {
            bbu.a(new TwitterScribeLog(g).b("messages", g(), h, str2, "select"));
        }
        return true;
    }

    protected void a(LocalContactInfo localContactInfo) {
    }

    protected void a(long j, TwitterUser twitterUser) {
        a(j, e.b(twitterUser.d), twitterUser);
    }

    protected void a(com.twitter.library.database.dm.d dVar) {
        FragmentActivity activity = getActivity();
        if (activity instanceof DMActivity) {
            ((DMActivity) activity).a(dVar.b, this.q, this.r, n());
        }
    }

    private void b(String str) {
        x kVar = new k(getActivity(), aT(), n.b((Object) str));
        this.j = kVar.d;
        az.a(getActivity()).a(kVar, new cc(this, null));
    }

    public boolean i() {
        return this.e != null && aj.b(this.e.getText());
    }

    public String a(String str) {
        boolean z = this.m || this.k || !(!aj.a((CharSequence) str) || this.a || this.o);
        return st.a(str, z);
    }

    public l j() {
        return l.b(getArguments());
    }

    protected void a(TwitterUser twitterUser, ad adVar) {
        if (adVar.a) {
            a(twitterUser.c, e.b(twitterUser.d), twitterUser);
        } else {
            new Builder(getActivity()).setMessage(2131362452).setNeutralButton(2131363218, null).create().show();
        }
    }

    protected void a(long j, String str, Object obj) {
        if (c(j) <= c()) {
            if (!this.i.contains(Long.valueOf(j))) {
                super.a(j, str, obj);
            }
            y();
            t();
            this.b.a(v());
            return;
        }
        Toast.makeText(getActivity(), getResources().getString(2131362531), 0).show();
    }

    public boolean k() {
        return this.l;
    }

    private void t() {
        this.m = !((Set) ar.d().b(this.i).b(u()).q()).isEmpty();
        this.e.b();
    }

    private void y() {
        this.l = !CollectionUtils.b(u());
        FragmentActivity activity = getActivity();
        if (activity instanceof TwitterFragmentActivity) {
            ((TwitterFragmentActivity) activity).Y().h();
        }
    }

    private int c(long j) {
        ar b = ar.d().b(u());
        if (this.i != null) {
            b.b(this.i);
        }
        if (j != -1) {
            b.c(Long.valueOf(j));
        }
        b.d(Long.valueOf(aT().g()));
        return b.h();
    }

    public String l() {
        return this.q;
    }

    public Uri m() {
        return this.r;
    }

    public boolean n() {
        return this.s;
    }
}
