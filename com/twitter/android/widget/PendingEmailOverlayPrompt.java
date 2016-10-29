package com.twitter.android.widget;

import android.content.Intent;
import android.support.v4.app.Fragment;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.l;
import com.twitter.android.dialog.p;
import com.twitter.android.settings.AccountActivity;
import com.twitter.app.common.base.d;
import defpackage.bcw;

/* compiled from: Twttr */
public class PendingEmailOverlayPrompt extends TakeoverDialogFragment {
    public /* synthetic */ p e() {
        return a();
    }

    public /* synthetic */ l f() {
        return a();
    }

    public /* synthetic */ d g() {
        return a();
    }

    public dh a() {
        return dh.a(getArguments());
    }

    public static void a(String str, Fragment fragment) {
        ((di) ((di) ((di) new di(0).a(fragment.getString(2131361867, new Object[]{str}))).c(2131361868)).b(str).a(bcw.twitter_logo_white)).i().a(fragment.getFragmentManager());
    }

    protected void d() {
        super.d();
        m();
    }

    protected void c() {
        super.c();
        m();
    }

    private void m() {
        String a = a().a();
        startActivity(new Intent(getActivity(), AccountActivity.class).putExtra("pending_email", a).putExtra("extra_account_id", l().g()).addFlags(67108864));
        getActivity().finish();
    }
}
