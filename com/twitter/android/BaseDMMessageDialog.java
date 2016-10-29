package com.twitter.android;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import bbu;
import bhc;
import com.twitter.android.dm.m;
import com.twitter.android.dm.r;
import com.twitter.android.dm.x;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.library.api.dm.requests.n;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.q;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class BaseDMMessageDialog extends PromptDialogFragment {
    private bhc a;
    private int[] c;
    private de d;

    protected abstract void a(bhc bhc);

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (this.c[i]) {
            case 2131362042:
                i();
                break;
            case 2131362332:
            case 2131362333:
                bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"messages:thread::message:copy"}));
                a(this.a);
                break;
            case 2131362399:
                f();
                break;
            case 2131362455:
                d();
                break;
            case 2131362721:
                h();
                break;
            case 2131363491:
                e();
                break;
        }
        super.onClick(dialogInterface, i);
    }

    private void d() {
        if (this.d != null) {
            this.d.d(this.a.bf_());
        }
    }

    private void e() {
        if (this.d != null) {
            this.d.c(this.a.bf_());
        }
    }

    private void f() {
        String o;
        Session c = bg.a().c();
        bbu.a(new TwitterScribeLog(c.g()).b(new String[]{"messages:thread::message:delete_dm"}));
        Context activity = getActivity();
        az a = az.a(activity);
        if (this.a.h()) {
            o = this.a.o();
            a.a(new x(activity, c, this.a.bf_()));
        } else {
            o = null;
            a.a(new n(activity, c, this.a.bf_()), new ai(this, activity));
        }
        if (this.d == null) {
            return;
        }
        if (o != null) {
            this.d.c(o);
        } else {
            this.d.y();
        }
    }

    private void h() {
        Session c = bg.a().c();
        bbu.a(new TwitterScribeLog(c.g()).b(new String[]{"messages:thread::message:forward_dm"}));
        if (this.a.t()) {
            w wVar = new w(c.h());
            com.twitter.model.dms.x xVar = (com.twitter.model.dms.x) this.a.n();
            new aj(this).execute(new a[]{((b) q.a((com.twitter.model.dms.x) e.a(xVar)).a(wVar)).a()});
            return;
        }
        a(null);
    }

    private void i() {
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"messages:thread::message:cancel_dm"}));
        Object o = this.a.o();
        if (aj.b(o) && this.d != null) {
            this.d.a(this.a.j(), o);
        }
    }

    protected void a(bhc bhc, int[] iArr, de deVar) {
        this.a = bhc;
        this.c = iArr;
        this.d = deVar;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.a = (bhc) ab.a(bundle, "message", bhc.a);
            this.c = bundle.getIntArray("dialog_items");
        }
        return super.onCreateDialog(bundle);
    }

    public void onSaveInstanceState(Bundle bundle) {
        ab.a(bundle, "message", this.a, bhc.a);
        bundle.putIntArray("dialog_items", this.c);
        super.onSaveInstanceState(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Fragment targetFragment = getTargetFragment();
        if (this.d == null) {
            this.d = (de) a(de.class, new Object[]{targetFragment, activity});
        }
    }

    public void a(FragmentManager fragmentManager) {
        if (this.c != null && this.c.length != 0) {
            super.a(fragmentManager);
        }
    }

    private void a(Uri uri) {
        m c = ((m) new m().f(true).a(this.a.k())).c(true);
        if (uri != null) {
            ((m) c.a("android.intent.extra.STREAM", uri)).d(true);
        }
        startActivity(r.a(getContext(), c.d()));
    }
}
