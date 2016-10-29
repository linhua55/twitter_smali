package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import android.widget.Toast;
import cgt;
import com.twitter.android.autocomplete.a;
import com.twitter.android.autocomplete.adapters.l;
import com.twitter.android.dm.b;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.x;
import com.twitter.android.provider.y;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.u;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.dm.requests.aa;
import com.twitter.library.api.dm.requests.o;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.database.dm.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.r;
import com.twitter.util.collection.ar;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bcx;
import defpackage.buc;
import defpackage.cca;
import defpackage.cgu;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;
import xd;

/* compiled from: Twttr */
public class DMInboxFragment extends TwitterListFragment<cca, df> implements LoaderCallbacks<Cursor>, OnClickListener, OnItemLongClickListener, a<Cursor>, ni, m, r {
    private static final Set<Integer> a;
    private final OnItemClickListener b;
    private ListView c;
    private l d;
    private String e;
    private boolean f;
    private boolean g;
    private PromptView h;
    private boolean i;
    private boolean j;

    public DMInboxFragment() {
        this.b = new di(this);
        this.g = true;
    }

    public /* synthetic */ h C() {
        return m();
    }

    public /* synthetic */ g o() {
        return m();
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = ar.a(Integer.valueOf(3), Integer.valueOf(2));
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!as()) {
            bbu.a(new TwitterScribeLog(this.Y).b("messages:inbox:::impression"));
        }
        if (bundle != null) {
            this.j = bundle.getBoolean("scribed_ref_event");
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("scribed_ref_event", this.j);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        Context activity = getActivity();
        ListView listView = (ListView) a.findViewById(2131951676);
        listView.setOnItemClickListener(this.b);
        listView.setEmptyView(a.findViewById(bcx.prompt_btn));
        listView.setScrollbarFadingEnabled(true);
        listView.setVisibility(8);
        this.h = new PromptView(activity);
        this.h.setIsHeader(true);
        listView.addHeaderView(this.h, null, false);
        View inflate = View.inflate(activity, 2130968760, null);
        listView.addFooterView(inflate, null, false);
        this.h.setOnPromptClickListener(this);
        inflate.findViewById(2131952331).setOnClickListener(this);
        this.c = listView;
        return a;
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.c(2130968761);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (!as()) {
            getActivity().setTitle(2131362794);
        }
        if (bundle == null) {
            a(3);
        }
        ap().a(new df(getActivity(), bg.a().c().g()));
        ap().a.setOnItemLongClickListener(this);
        if (this.d == null) {
            this.d = new l(getActivity());
        }
        this.c.setAdapter(this.d);
        this.i = true;
    }

    public void d() {
        super.d();
        if (as()) {
            bbu.a(new TwitterScribeLog(this.Y).b("messages:inbox:::impression"));
        }
        Object f = m().f("ref_event");
        if (TextUtils.isEmpty(f) || this.j) {
            bbu.a(new TwitterScribeLog(this.Y).b("messages::::impression"));
        } else {
            bbu.a(new TwitterScribeLog(this.Y, "messages::::impression").a((String) f));
            this.j = true;
        }
        p();
    }

    protected void a() {
        super.a();
        ac_();
        if (this.d.h().g()) {
            getLoaderManager().initLoader(1, null, this);
        }
    }

    public void onStart() {
        super.onStart();
        a(false);
    }

    protected Loader<Cursor> q_() {
        return new xd(getActivity(), aT().g());
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new bu(getActivity(), SuggestionsProvider.e, y.a, null, null, null);
            default:
                return null;
        }
    }

    private void n() {
        PromptView promptView = this.h;
        View findViewById = getView().findViewById(2131952331);
        if (this.d.isEmpty()) {
            findViewById.setVisibility(8);
            promptView.setButtonText(2131362698);
            if (com.twitter.library.util.l.a(getActivity()).b()) {
                promptView.setTitle(2131362443);
                return;
            }
            am a = aq.a(getActivity());
            if (a.d() || a.c()) {
                promptView.setTitle(2131362442);
                return;
            } else {
                promptView.setTitle(2131362441);
                return;
            }
        }
        findViewById.setVisibility(0);
        promptView.setButtonText(null);
        promptView.setTitle(2131362440);
    }

    protected void a(cgu<cca> cgu_cca) {
        super.a((cgu) cgu_cca);
        b(!((df) az()).isEmpty());
        p();
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.d.a(null, cursor != null ? new cgt(cursor, new x()) : cgu.f());
                n();
            default:
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.d.a(null, cgu.f());
            default:
        }
    }

    private void p() {
        if (!as() || ai()) {
            c(new aa(getActivity(), aT()), 7, 0);
        }
    }

    private void b(boolean z) {
        this.g = z;
        aE().h();
    }

    public boolean a(w wVar) {
        wVar.a(2132017178);
        return true;
    }

    public int b(w wVar) {
        boolean z = false;
        super.b(wVar);
        ToolBar j = wVar.j();
        bca a = j.a(2131953463);
        if (as()) {
            j.a(2131953462).b(false);
        }
        if (!as() && this.g) {
            z = true;
        }
        a.b(z);
        return 2;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        Session aT = aT();
        long g = aT.g();
        if (a == 2131953462) {
            bbu.a(new TwitterScribeLog(g).b("messages:navigation_bar::compose:click"));
            startActivity(com.twitter.android.dm.r.a(getActivity(), new com.twitter.android.dm.m().d()));
            return true;
        } else if (a != 2131953463) {
            return super.a(acVar);
        } else {
            bbu.a(new TwitterScribeLog(g).b("messages:inbox::mark_all_as_read:click"));
            c(new o(getActivity(), aT), 6, 0);
            return true;
        }
    }

    protected void a(boolean z) {
        super.a(z);
        getLoaderManager().restartLoader(1, null, this);
    }

    protected void ac_() {
        super.ac_();
        if (ao() && ((df) az()).isEmpty()) {
            a(3);
        }
    }

    public void g() {
        a(2);
    }

    protected boolean a(int i) {
        Session aT = aT();
        if (a.contains(Integer.valueOf(i))) {
            com.twitter.library.service.x lVar = new com.twitter.library.api.dm.requests.l(getActivity(), aT);
            if (i == 3) {
                i = 0;
            }
            c(lVar, 3, i);
        } else {
            c(new com.twitter.library.api.dm.requests.h(getActivity(), aT), 2, i);
        }
        return true;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952331) {
            bbu.a(new TwitterScribeLog(aT().g()).b("messages:inbox:user_list:import:click"));
            c(false);
        }
    }

    public void a(PromptView promptView) {
        bbu.a(new TwitterScribeLog(aT().g()).b("messages:inbox::import:click"));
        Context activity = getActivity();
        am a = aq.a(activity);
        c(a.c());
        if (a.d()) {
            dy.a("messages", activity.getApplicationContext()).a();
        }
    }

    private void c(boolean z) {
        Activity activity = getActivity();
        if (buc.a()) {
            startActivity(new Intent(activity, AddressbookHelperActivity.class));
        } else {
            new FollowFlowController("messages").a(true).e(z).a(com.twitter.android.dm.r.d(activity)).c(activity);
        }
    }

    public void b(PromptView promptView) {
    }

    public void a(ListView listView, View view, int i, long j) {
        cca cca = (cca) listView.getItemAtPosition(i);
        if (cca != null) {
            d dVar = new d(cca);
            startActivity(u.a(com.twitter.android.dm.r.a(getActivity(), new com.twitter.android.dm.o().b(dVar.b).c(dVar.d).d(dVar.e).d()), as()));
        }
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        cca cca = (cca) adapterView.getItemAtPosition(i);
        if (cca == null) {
            return false;
        }
        d dVar = new d(cca);
        this.e = e.a(dVar.b);
        this.f = dVar.i;
        boolean z = !dVar.k;
        int[] iArr = new int[3];
        iArr[0] = 2131363077;
        iArr[1] = z ? 2131362533 : 2131362534;
        iArr[2] = 2131362455;
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) new ec(1).a(iArr)).i();
        promptDialogFragment.a((m) new dj(this, z));
        promptDialogFragment.a((Fragment) this).a(getActivity().getSupportFragmentManager());
        return true;
    }

    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        com.twitter.library.service.aa aaVar = (com.twitter.library.service.aa) xVar.l().b();
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!aaVar.b()) {
                    Toast.makeText(this.T, 2131362324, 1).show();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (aaVar.b()) {
                    this.i = ((com.twitter.library.api.dm.requests.h) xVar).e();
                } else {
                    Toast.makeText(this.T, 2131363076, 1).show();
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (!aaVar.b()) {
                    Toast.makeText(this.T, 2131363076, 1).show();
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (aaVar.b()) {
                    Toast.makeText(this.T, 2131362483, 0).show();
                }
            default:
        }
    }

    protected void h() {
        if (ar() && this.i) {
            a(1);
        }
    }

    public boolean b_(long j) {
        return false;
    }

    public boolean b(long j) {
        return true;
    }

    public void G_() {
    }

    public void H_() {
        ((ec) ((ec) ((ec) new ec(4).b(this.f ? 2131363029 : 2131363030)).d(2131364205)).f(2131363158)).i().a((Fragment) this).a(getActivity().getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 4 && i2 == -1) {
            startActivity(new Intent(getActivity(), WebViewActivity.class).setData(Uri.parse(getString(2131364411))));
        }
    }

    public b m() {
        return b.a(getArguments());
    }
}
