package com.twitter.app.common.list;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.os.EnvironmentCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import apa;
import aua;
import cgq;
import cgs;
import com.twitter.android.av.s;
import com.twitter.android.bu;
import com.twitter.android.client.c;
import com.twitter.android.client.w;
import com.twitter.android.io;
import com.twitter.android.mx;
import com.twitter.android.revenue.aj;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.inject.v;
import com.twitter.library.av.ac;
import com.twitter.library.av.ad;
import com.twitter.library.av.ae;
import com.twitter.library.av.b;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.aw;
import com.twitter.library.client.navigation.x;
import com.twitter.library.client.navigation.y;
import com.twitter.library.client.navigation.z;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.refresh.widget.a;
import com.twitter.refresh.widget.h;
import com.twitter.util.object.ObjectUtils;
import defpackage.aov;
import defpackage.aoz;
import defpackage.aru;
import defpackage.bdl;
import defpackage.cgu;
import defpackage.chk;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TwitterListFragment<T, A extends bdl<T>> extends AbsFragment implements q, x, y {
    protected boolean U;
    protected boolean V;
    protected boolean W;
    protected s X;
    private final Set<r> a;
    private final Set<WeakReference<w>> b;
    private final Handler c;
    private TwitterScribeAssociation d;
    private final LoaderCallbacks<Cursor> e;
    private z f;
    private c g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private TwitterFragmentActivity m;
    private h n;
    private b o;
    private aj p;
    private aoz<cgu<T>> q;
    private final aov<cgu<T>> r;

    public TwitterListFragment() {
        this.a = new LinkedHashSet();
        this.b = new LinkedHashSet();
        this.c = new Handler(Looper.getMainLooper());
        this.e = new a(this);
        this.f = z.a;
        this.k = true;
        this.r = new b(this);
    }

    public /* synthetic */ g o() {
        return C();
    }

    public boolean an() {
        return aj();
    }

    public boolean ao() {
        return ay() && az().j();
    }

    public k<T, A> ap() {
        return (k) ObjectUtils.a(ak());
    }

    public int aq() {
        return an() ? ap().k() : 0;
    }

    public void n(int i) {
        if (an()) {
            ap().a(i);
        }
    }

    public boolean ar() {
        return an() && ap().d;
    }

    protected boolean as() {
        return !ae();
    }

    protected void a() {
        super.a();
        for (aw awVar : aS()) {
            c(awVar.c);
        }
        J_();
        if (!this.k || aT().d()) {
            d(true);
        }
        this.X.d();
        if (!ao()) {
            c();
        }
    }

    protected void e() {
        aB();
        this.X.c();
        super.e();
    }

    protected boolean j() {
        return true;
    }

    protected final boolean d(boolean z) {
        if (!ay() || !j()) {
            return false;
        }
        if (!ao()) {
            this.l = true;
            return false;
        } else if (!this.l && !z) {
            return false;
        } else {
            k();
            this.l = false;
            return true;
        }
    }

    protected void k() {
    }

    protected void c() {
        if (this.q != null) {
            this.q.a(this.r);
        } else {
            getLoaderManager().initLoader(0, null, this.e);
        }
    }

    protected Loader<Cursor> q_() {
        return null;
    }

    @CallSuper
    protected void a(cgu<T> cgu_T) {
        ListView listView = ap().a;
        a d = ap().d();
        b((cgu) cgu_T);
        a(d);
        if (this.W) {
            a(Q(), true);
            this.W = false;
        } else if (d.b > 0) {
            int a = a(d.b);
            if (a == -1) {
                x();
                listView.setSelectionFromTop(0, 0);
            } else {
                listView.setSelectionFromTop(a, d.c);
            }
        } else {
            J_();
        }
        com.twitter.util.ui.a.a(listView);
    }

    @CallSuper
    protected void at() {
        S();
    }

    protected void au() {
        a(true);
    }

    protected void a(boolean z) {
        if (z) {
            S();
        }
        if (this.q != null) {
            if (this.q instanceof apa) {
                ((apa) ObjectUtils.a(this.q)).a();
            }
            aL();
        } else if (getLoaderManager().getLoader(0) != null) {
            getLoaderManager().restartLoader(0, null, this.e);
        }
    }

    protected void ac_() {
    }

    protected boolean av() {
        if (!ad()) {
            return false;
        }
        Loader loader = getLoaderManager().getLoader(0);
        if ((loader instanceof bu) && ((bu) loader).a()) {
            return true;
        }
        return false;
    }

    protected a Q() {
        return new a(-1, Long.MIN_VALUE, 0);
    }

    public void b(cgu<T> cgu_T) {
        if (ao() || !cgu_T.g()) {
            ap().a((cgu) cgu_T);
        } else {
            p();
        }
    }

    public void S() {
        if (an()) {
            ap().a(null);
        }
    }

    protected void a(ListView listView, View view, int i, long j) {
    }

    public h C() {
        return h.d(getArguments());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.g = c.a(getActivity());
        boolean z = aI() == null || aI().ac() == null;
        this.j = z;
        if (bundle != null) {
            this.h = bundle.getInt("scroll_pos");
            this.i = bundle.getInt("scroll_off");
            this.W = true;
        } else {
            this.h = 0;
            this.i = 0;
            this.W = false;
        }
        this.Y = C().a(aT().g());
        this.V = z();
    }

    public final boolean aw() {
        return this.j;
    }

    @CallSuper
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (aI() != null) {
            z Y = aI().Y();
            if (Y.a((y) this)) {
                Y.a((x) this);
            }
            this.f = Y;
        }
        if (this.V) {
            this.o = new b(this.T);
        }
        this.q = f();
    }

    protected void o(int i) {
        if (i == 0 && this.V) {
            ax();
        }
    }

    protected void ax() {
        if (an()) {
            ListView listView = ap().a;
            int selectedItemPosition = listView.getSelectedItemPosition();
            if (selectedItemPosition == -1) {
                selectedItemPosition = listView.getFirstVisiblePosition();
            }
            a(selectedItemPosition - listView.getHeaderViewsCount());
        }
    }

    private void a(int i) {
        if (ao() && this.o != null) {
            Cursor aA = aA();
            if (aA != null) {
                this.o.a(new ac(aA), Math.min(aA.getCount() - 1, Math.max(0, i)));
            }
        }
    }

    protected void a(List<ad> list, int i) {
        this.o.a(new ae(list), i);
    }

    protected final boolean ay() {
        return an() && ap().f();
    }

    protected final A az() {
        return ap().g();
    }

    protected Cursor aA() {
        if (ay()) {
            bdl az = az();
            if (az instanceof chk) {
                return ((cgs) az.h()).a();
            }
            cgu h = az.h();
            if (h instanceof cgq) {
                return h.g() ? aua.a() : ((cgq) h).a();
            }
        }
        return null;
    }

    protected boolean z() {
        return false;
    }

    protected boolean A() {
        return false;
    }

    protected v b(LayoutInflater layoutInflater, Bundle bundle) {
        t tVar = new t();
        a(tVar);
        return k.b(layoutInflater, tVar, bundle);
    }

    protected void a(v vVar) {
        super.a(vVar);
        k kVar = (k) ObjectUtils.a((Object) vVar);
        if (kVar.a.getOnItemClickListener() == null) {
            kVar.a.setOnItemClickListener(new c(this));
        }
        kVar.a((q) this);
        kVar.a(this.n);
        this.X = new s(this.T);
        this.X.a(kVar);
        for (r a : this.a) {
            kVar.a(a);
        }
        this.a.clear();
        kVar.a(new d(this));
        kVar.a(new e(this, kVar));
        if (A()) {
            this.p = aj.a(this.T, com.twitter.android.revenue.y.b(), com.twitter.android.revenue.y.c(), com.twitter.android.revenue.y.d(), com.twitter.android.revenue.y.e());
            kVar.a(this.p);
        }
    }

    protected void a(t tVar) {
        int i;
        h C = C();
        t e = tVar.a(getClass().getSimpleName()).a(C.t()).b(C.u()).c(2130968943).d(2130969280).e(C.v());
        if (tVar.d()) {
            i = 2130968805;
        } else {
            i = 2130968803;
        }
        e.f(i).a(C.y()).g(C.s()).h(C.w()).i(C.x()).b(C.r());
    }

    public void onDestroy() {
        if (this.o != null) {
            this.o.a();
        }
        if (this.X != null) {
            this.X.e();
        }
        if (this.p != null) {
            this.p.a();
        }
        this.f.b((y) this);
        super.onDestroy();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("scroll_pos", this.h);
        bundle.putInt("scroll_off", this.i);
    }

    protected void g() {
    }

    protected void h() {
    }

    protected boolean a_(int i) {
        return i == 0 || !l(i);
    }

    public TwitterListFragment a(h hVar) {
        if (an()) {
            ap().a(hVar);
        } else {
            this.n = hVar;
        }
        return this;
    }

    public void G() {
        g();
    }

    protected int a(long j) {
        if (j == Long.MIN_VALUE || !an()) {
            return -1;
        }
        ListAdapter adapter = ap().a.getAdapter();
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            if (adapter.getItemId(i) == j) {
                return i;
            }
        }
        return -1;
    }

    protected void x() {
    }

    protected void a(a aVar, boolean z) {
    }

    protected void J_() {
        if (an()) {
            ap().a(this.h, this.i);
        }
    }

    protected void aB() {
        if (an()) {
            ListView listView = ap().a;
            View childAt = listView.getChildAt(0);
            if (childAt != null) {
                this.i = childAt.getTop();
                this.h = listView.getFirstVisiblePosition();
            }
        }
    }

    public final TwitterListFragment a(r rVar) {
        if (an()) {
            ap().a(rVar);
        } else {
            this.a.add(rVar);
        }
        return this;
    }

    public final void g(long j) {
        long j2 = this.Y;
        this.Y = j;
        if (an()) {
            ap().a(false);
        }
        a(j2, j);
        if (!this.k || aT().d()) {
            au();
        }
    }

    protected void a(long j, long j2) {
    }

    public final boolean aC() {
        return this.k;
    }

    public final void e(boolean z) {
        this.k = z;
    }

    protected final void a(TwitterScribeAssociation twitterScribeAssociation) {
        this.d = twitterScribeAssociation;
    }

    protected TwitterScribeAssociation aD() {
        return this.d;
    }

    public z aE() {
        return this.f;
    }

    public boolean a(com.twitter.library.client.navigation.w wVar) {
        return false;
    }

    public int b(com.twitter.library.client.navigation.w wVar) {
        return 2;
    }

    public void c(com.twitter.library.client.navigation.w wVar) {
    }

    public boolean a(com.twitter.library.client.navigation.ac acVar) {
        return false;
    }

    public int aF() {
        return ay() ? az().getCount() : 0;
    }

    protected aru aG() {
        return aru.b();
    }

    protected TwitterListFragment a(w wVar) {
        this.b.add(new WeakReference(wVar));
        return this;
    }

    protected void f(boolean z) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            w wVar = (w) ((WeakReference) it.next()).get();
            if (wVar != null) {
                wVar.b(z);
            } else {
                it.remove();
            }
        }
    }

    protected void b(com.twitter.library.service.x xVar, int i, int i2) {
        super.b(xVar, i, i2);
        c(i2);
    }

    @CallSuper
    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i2 == 1) {
            ap().t();
        } else if (i2 == 2) {
            aK();
        }
        if (!ao() && i2 != 0) {
            p();
        }
    }

    private void c(int i) {
        k ap = ap();
        if (i == 1) {
            ap.s();
        } else if (i == 2) {
            ap.n();
        }
    }

    protected String i() {
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    protected static String a(String str, String str2, int i) {
        String str3;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                str3 = "get_older";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str3 = "get_newer";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str3 = "get_initial";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                str3 = "get_middle";
                break;
            default:
                return null;
        }
        return ScribeLog.a(str, str2, null, null, str3);
    }

    protected final c aH() {
        return this.g;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof TwitterFragmentActivity) {
            this.m = (TwitterFragmentActivity) activity;
        }
        this.U = io.a();
    }

    public TwitterFragmentActivity aI() {
        return this.m;
    }

    public void aJ() {
        if (an()) {
            ap().u();
        }
    }

    protected void a(a aVar) {
        if (!l(2)) {
            ap().a(a(aVar.b) == aVar.a);
        }
    }

    protected void aK() {
        this.c.post(new f(this));
    }

    private void p() {
        if (ay()) {
            this.c.post(new g(this));
        }
    }

    protected aoz<cgu<T>> f() {
        return null;
    }

    protected void aL() {
    }
}
