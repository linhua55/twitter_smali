package com.twitter.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.view.View;
import com.twitter.android.client.z;
import com.twitter.android.dm.b;
import com.twitter.android.dm.e;
import com.twitter.android.dm.l;
import com.twitter.android.dm.m;
import com.twitter.android.dm.n;
import com.twitter.android.dm.o;
import com.twitter.android.dm.r;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.library.widget.ToolbarWrapperLayout;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.ark;
import defpackage.aru;
import defpackage.asa;
import defpackage.bbu;
import defpackage.bca;
import defpackage.biw;
import defpackage.bus;
import defpackage.cni;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class DMActivity extends TwitterFragmentActivity implements xj, xk {
    private by a;
    private String b;
    private boolean c;
    private int d;
    private DMConversationFragment e;
    private DMComposeFragment f;
    private xf g;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968747);
        tVar.a(false);
        tVar.a(0);
        if (this.d == 1) {
            tVar.d(true);
        }
        return tVar;
    }

    public boolean a(w wVar) {
        if (this.d == 2) {
            wVar.a(2132017164);
        }
        return super.a(wVar);
    }

    public int b(w wVar) {
        bca a = wVar.j().a(2131953429);
        if (a != null) {
            boolean z = this.d == 2 && this.f.k();
            a.b(z);
            if (z && VERSION.SDK_INT <= 19) {
                wVar.f();
            }
        }
        return super.b(wVar);
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953429) {
            return super.a(acVar);
        }
        bbu.a(new TwitterScribeLog(ab().g()).b("messages:compose:::next"));
        a(this.f.u(), this.f.l(), this.f.m(), this.f.n());
        return true;
    }

    private void a(Set<Long> set, String str, Uri uri, boolean z) {
        a(this.b, set, str, uri, z);
    }

    protected void a(String str, String str2, Uri uri, boolean z) {
        a(str, null, str2, uri, z);
    }

    private void a(String str, Set<Long> set, String str2, Uri uri, boolean z) {
        startActivity(r.a((Context) this, ((o) ((o) new o().b(str).a(CollectionUtils.e(set)).a(true)).a(str2)).a(uri).d(), z));
        if (z) {
            finish();
        }
    }

    public void b(Bundle bundle, t tVar) {
        f();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (bundle != null) {
            this.d = bundle.getInt("optional_current_fragment", 1);
            switch (this.d) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    this.f = (DMComposeFragment) supportFragmentManager.findFragmentByTag("mthread");
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    this.e = (DMConversationFragment) supportFragmentManager.findFragmentByTag("mthread");
                    this.b = bundle.getString("conversation_id");
                    this.e.a((xk) this);
                    break;
                default:
                    break;
            }
        }
        Intent intent = getIntent();
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        if (a(b.a(extras))) {
            a(extras, intent.getAction(), true);
            b(extras);
        } else if (!(a(extras) || a(extras, intent.getAction(), false))) {
            e();
        }
        this.a = new by();
        aa().a(this.a);
        if (this.d == 2) {
            ((ToolbarWrapperLayout) findViewById(2131952322)).a();
        }
    }

    private boolean a(Bundle bundle) {
        n b = n.b(bundle);
        String j = b.j();
        this.c = b.o();
        if (j != null) {
            if (b.n()) {
                asa.a("dm:conversation_load", aru.b(), ark.m).i();
            }
            a(j, b.c(), b.k());
            return true;
        }
        long[] i = b.i();
        if (i == null) {
            return false;
        }
        a(i, b.c(), b.k());
        return true;
    }

    private boolean a(Bundle bundle, String str, boolean z) {
        l b = l.b(bundle);
        boolean z2 = "android.intent.action.SEND".equals(str) || b.i();
        String c = b.c();
        if (!z && !a(c, b.d(), z2)) {
            return false;
        }
        this.f = new DMComposeFragment();
        this.f.a(((m) new m(bundle).a(c)).d(z2).d());
        getSupportFragmentManager().beginTransaction().add(2131951923, this.f, "mthread").commit();
        this.d = 2;
        return true;
    }

    private void e() {
        getSupportFragmentManager().beginTransaction().add(2131951923, new DMInboxFragment(), "mthread").commit();
        this.d = 1;
    }

    @VisibleForTesting
    protected static boolean a(b bVar) {
        return bVar.a() && bVar.g() && aj.a(n.b(bVar.h()).j());
    }

    private void b(Bundle bundle) {
        n b = n.b(bundle);
        long[] i = b.i();
        if (i != null && i.length == 1) {
            ProgressDialog progressDialog = new ProgressDialog(this);
            progressDialog.setProgressStyle(0);
            progressDialog.setMessage(getString(2131362928));
            progressDialog.setIndeterminate(true);
            progressDialog.setCancelable(true);
            progressDialog.show();
            e.a(this, i[0], new bv(this, progressDialog, i, b));
        }
    }

    private boolean a(String str, boolean z, boolean z2) {
        return aj.b((CharSequence) str) || z2 || (z && !l());
    }

    private void f() {
        SlidingPanel slidingPanel = (SlidingPanel) findViewById(2131952321);
        this.g = new dr(this, ab(), slidingPanel);
        this.g.a((xj) this);
        slidingPanel.a(1);
        slidingPanel.setPanelSlideListener(this.g);
        slidingPanel.setClipChildren(false);
        slidingPanel.setFadeMode(1);
        slidingPanel.setCoveredFadeColor(ContextCompat.getColor(this, 17170444));
    }

    public void onResume() {
        super.onResume();
        z.a((Context) this).a(ab().e(), this.b);
    }

    protected void onDestroy() {
        r();
        aa().b(this.a);
        super.onDestroy();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.d == 3) {
            this.e.onActivityResult(i, i2, intent);
        }
        if (this.g != null) {
            this.g.a(i, i2, intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    public void a(long[] jArr) {
        this.g.a(getSupportLoaderManager(), jArr);
    }

    public void a() {
        this.g.a(true);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("conversation_id", this.b);
        bundle.putInt("optional_current_fragment", this.d);
        if (this.g != null) {
            this.g.b(bundle);
        }
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (this.g != null) {
            this.g.a(bundle);
        }
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                return new Builder(this).setTitle(2131363132).setMessage(2131361844).setPositiveButton(2131362419, new bw(this)).setNegativeButton(2131362041, null).create();
            default:
                return null;
        }
    }

    public void onBackPressed() {
        if (m()) {
            showDialog(1);
        } else {
            i();
        }
    }

    protected void o() {
        if (m()) {
            showDialog(2);
        } else {
            i();
        }
    }

    private void i() {
        Object obj = null;
        if (this.d == 2) {
            j();
        } else if (this.d == 3) {
            r();
            if (this.e.u()) {
                j();
                r0 = 1;
            }
        } else {
            r0 = 1;
        }
        if (S() || r0 == null) {
            super.onBackPressed();
        } else {
            k_();
        }
    }

    protected void k_() {
        if (bus.a().c()) {
            MainActivity.a((Activity) this, MainActivity.e);
        } else {
            super.k_();
        }
    }

    private void j() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            com.twitter.util.ui.r.b(this, currentFocus, false);
        }
    }

    private boolean l() {
        return this.b != null;
    }

    private void a(long[] jArr, String str, Uri uri) {
        a(biw.a(ab().g(), jArr), jArr, str, uri);
    }

    private void a(String str, String str2, Uri uri) {
        a(str, null, str2, uri);
    }

    private void a(String str, long[] jArr, String str2, Uri uri) {
        if (!str.equals(this.b)) {
            this.b = str;
            b(jArr, str2, uri);
        }
    }

    private void b(long[] jArr, String str, Uri uri) {
        if (this.e == null) {
            this.e = new DMConversationFragment();
            this.e.a(((o) ((o) new o().a(uri).b(this.b).a(jArr).a(true)).a(str)).d(this.c).d());
        } else {
            this.e.a(this.b);
        }
        this.e.a((xk) this);
        if (this.d != 3) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            if (this.d == 2) {
                beginTransaction.replace(2131951923, this.e, "mthread");
            } else {
                beginTransaction.add(2131951923, this.e, "mthread");
            }
            beginTransaction.commit();
            this.d = 3;
        }
    }

    private boolean m() {
        return (this.d == 2 && this.f.i()) || (this.d == 3 && this.e.n());
    }

    private void r() {
        if (this.d == 3 && this.e.p()) {
            b(new com.twitter.library.api.dm.requests.m((Context) this, ab(), this.b, true), 0);
        }
    }

    public void c() {
        bbu.a(new TwitterScribeLog(ab().g()).b("messages:view_participants:user_list:user:click"));
    }

    public void a(boolean z) {
    }

    public void a(boolean z, long j, String str, cni cni) {
        if (!z) {
            bbu.a(new TwitterScribeLog(ab().g()).b("messages:view_participants:user_list:user:follow"));
        }
    }
}
