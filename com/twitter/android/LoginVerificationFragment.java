package com.twitter.android;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.Toast;
import bdr;
import bea;
import bep;
import com.twitter.android.widget.ec;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.aa;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.widget.UserView;
import com.twitter.model.account.LoginVerificationRequest;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableList;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bdl;
import defpackage.bek;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class LoginVerificationFragment extends TwitterListFragment<Cursor, bdl<Cursor>> {
    private Session a;
    private StyleSpan[] b;
    private jb c;
    private ProgressDialog d;
    private final aa e;
    private ArrayAdapter f;

    public LoginVerificationFragment() {
        this.e = new jc(this, null);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        String f = C().f("lv_account_name");
        if (aj.a((CharSequence) f)) {
            this.a = aT();
        } else {
            this.a = this.Z.b(f);
        }
        this.b = new StyleSpan[]{new StyleSpan(1), new StyleSpan(1), new StyleSpan(1)};
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.c = new jb(this, getActivity(), 2130968962, 2131952679, new ArrayList(Arrays.asList(new String[]{getString(2131363020), getString(2131363020)})));
    }

    public void a() {
        super.a();
        aH().a(this.e);
        n();
    }

    protected void d() {
        super.d();
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.a.g()).b("login_verification::::impression");
        if (getActivity() == null || getActivity().getCallingActivity() == null || getActivity().getCallingActivity().getPackageName() == null || !getActivity().getCallingActivity().getPackageName().contains(".twitter.")) {
            bbw.i("push");
        } else {
            bbw.i("settings");
        }
        bbu.a(bbw);
    }

    public void e() {
        aH().b(this.e);
        super.e();
    }

    private void b(String str) {
        if (this.f != this.c) {
            for (int i = 0; i < this.f.getCount(); i++) {
                LoginVerificationRequest loginVerificationRequest = (LoginVerificationRequest) this.f.getItem(i);
                if (str != null && loginVerificationRequest != null && str.equals(loginVerificationRequest.b)) {
                    this.f.remove(loginVerificationRequest);
                    break;
                }
            }
            if (this.f.getCount() == 1) {
                this.f = this.c;
                ap().a.setAdapter(this.f);
            }
        }
    }

    private void n() {
        c(new bea(getActivity(), this.a), 1, 3);
        bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::::get_newer"));
    }

    protected void g() {
        n();
    }

    void a(String str) {
        Context activity = getActivity();
        if (activity != null) {
            this.d = new ProgressDialog(activity);
            this.d.setProgressStyle(0);
            this.d.setMessage(str);
            this.d.setIndeterminate(true);
            this.d.setCancelable(false);
            this.d.show();
        }
    }

    void m() {
        if (this.d != null) {
            this.d.dismiss();
        }
    }

    private static int a(int[] iArr) {
        return (iArr == null || iArr.length == 0) ? 0 : iArr[0];
    }

    private void a(int i) {
        Toast.makeText(this.T, i, 1).show();
    }

    private void c(String str) {
        if (bek.e(getActivity(), str)) {
            a(2131362997);
        } else {
            startActivity(new Intent(getActivity(), SecuritySettingsActivity.class).putExtra("SecuritySettingsActivity_account_name", str));
        }
    }

    private void b(int[] iArr) {
        switch (a(iArr)) {
            case 235:
            case 237:
                a(2131363012);
            case 236:
                ((ec) ((ec) ((ec) new ec(1).a(2131363009)).b(2131363008)).e(17039370)).i().a(getFragmentManager());
            default:
                a(2131362997);
        }
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        int i3 = ((com.twitter.library.service.aa) xVar.l().b()).g().a;
        int[] b;
        int a;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                bbw bbw;
                if (i3 == 200) {
                    bbw = (TwitterScribeLog) new TwitterScribeLog(this.a.g()).b("login_verification::get_requests::success");
                } else {
                    Object obj = (TwitterScribeLog) new TwitterScribeLog(this.a.g()).b("login_verification::get_requests::failure");
                }
                bbw.f(String.valueOf(i3));
                bea bea = (bea) xVar;
                Collection b2 = bea.b();
                if (i3 != 200 || b2 == null || b2.isEmpty()) {
                    bbw.a(0);
                    this.f = this.c;
                    if (i3 != 200) {
                        int a2 = a(bea.e());
                        if (a2 == 88) {
                            bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::get_requests::rate_limit"));
                        }
                        bbw.d(String.valueOf(a2));
                        a(2131362997);
                    }
                } else {
                    bbw.a((long) b2.size());
                    List a3 = MutableList.a();
                    a3.add(LoginVerificationRequest.a);
                    a3.addAll(b2);
                    this.f = new je(this, this.T, 2130968963, 2131952679, a3);
                }
                bbu.a(bbw);
                ap().a.setAdapter(this.f);
            case WireMessage.WIRE_CONTROL /*2*/:
                m();
                if (i3 == 200) {
                    bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::request:reject:success"));
                    a(2131363013);
                    b(((bep) xVar).a.a);
                    return;
                }
                b = ((bep) xVar).b();
                b(b);
                a = a(b);
                if (a == 88) {
                    bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::request:reject:rate_limit"));
                }
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.g()).b("login_verification::request:reject:failure")).f(String.valueOf(i3))).d(String.valueOf(a)));
            case WireMessage.WIRE_AUTH /*3*/:
                m();
                if (i3 == 200) {
                    bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::request:accept:success"));
                    a(2131363011);
                    b(((bdr) xVar).a.a);
                    return;
                }
                b = ((bdr) xVar).b();
                b(b);
                a = a(b);
                if (a == 88) {
                    bbu.a(new TwitterScribeLog(this.a.g()).b("login_verification::request:accept:rate_limit"));
                }
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.g()).b("login_verification::request:accept:failure")).f(String.valueOf(i3))).d(String.valueOf(a)));
            default:
        }
    }

    View a(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130968602, viewGroup, false);
        ((ImageView) inflate.findViewById(2131951906)).setVisibility(4);
        UserView userView = (UserView) inflate;
        userView.setUser(this.a.f());
        userView.setVerified(false);
        userView.setProtected(false);
        return inflate;
    }
}
