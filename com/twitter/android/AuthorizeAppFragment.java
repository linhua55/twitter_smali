package com.twitter.android;

import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;
import com.twitter.library.widget.UserView;
import defpackage.bbu;
import defpackage.bbw;
import java.util.Arrays;
import java.util.List;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class AuthorizeAppFragment extends BaseFragment implements OnAccountsUpdateListener, OnClickListener {
    private ae a;
    private UserAccount b;
    private UserView c;
    private CharSequence d;
    private CharSequence e;
    private a[] f;
    private bg g;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context activity = getActivity();
        bg a = bg.a();
        Session c = a.c();
        if (c.d()) {
            this.b = new UserAccount(b.b(c.e()).a(), c.f());
        }
        this.g = a;
        g o = o();
        this.d = o.f("app_name");
        this.e = o.f("app_consumer_key");
        if (bundle != null) {
            if (this.d == null) {
                this.d = bundle.getCharSequence("app_name");
            }
            if (this.e == null) {
                this.e = bundle.getCharSequence("app_consumer_key");
            }
        }
        AccountManager accountManager = AccountManager.get(activity);
        this.f = c();
        accountManager.addOnAccountsUpdatedListener(this, null, false);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.d != null) {
            bundle.putCharSequence("app_name", this.d);
        }
        if (this.e != null) {
            bundle.putCharSequence("app_consumer_key", this.e);
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130968635, null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((Button) view.findViewById(2131951995)).setOnClickListener(this);
        ((Button) view.findViewById(2131951994)).setOnClickListener(this);
        if (this.d != null) {
            ((TextView) view.findViewById(k.title)).setText(getString(2131361944, this.d));
            ((TextView) view.findViewById(k.message)).setText(getString(2131361943, this.d));
        }
        this.c = (UserView) view.findViewById(2131951990);
        this.c.getChildAt(0).setOnClickListener(this);
        view.findViewById(2131951989).setOnClickListener(this);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.b != null) {
            a(this.b);
        }
    }

    public void d() {
        super.d();
        b("impression");
    }

    public void onDestroy() {
        super.onDestroy();
        AccountManager.get(getActivity()).removeOnAccountsUpdatedListener(this);
    }

    public void a(ae aeVar) {
        this.a = aeVar;
    }

    public void a(UserAccount userAccount) {
        if (userAccount != null) {
            this.c.setUser(userAccount.b);
        }
        this.b = userAccount;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == 1) {
            a((UserAccount) intent.getParcelableExtra("account"));
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131951991 || id == 2131951989) {
            startActivityForResult(new Intent(getActivity(), AccountsDialogActivity.class).putExtra("authorize_account", true), 2);
        } else if (id == 2131951995) {
            if (this.a != null && this.b != null) {
                this.a.a(this.b.a);
                view.setEnabled(false);
                ((Button) view).setText(2131361934);
                b("success");
            }
        } else if (id == 2131951994 && this.a != null) {
            this.a.a();
            b("cancel");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onAccountsUpdated(android.accounts.Account[] r8) {
        /*
        r7 = this;
        r1 = 0;
        r3 = r7.c();
        r0 = r7.f;
        r0 = java.util.Arrays.equals(r3, r0);
        if (r0 != 0) goto L_0x0013;
    L_0x000d:
        r0 = r3.length;
        if (r0 != 0) goto L_0x0014;
    L_0x0010:
        r7.a(r1);
    L_0x0013:
        return;
    L_0x0014:
        r4 = r7.b;
        r5 = r3.length;
        r0 = 0;
        r2 = r0;
    L_0x0019:
        if (r2 >= r5) goto L_0x0040;
    L_0x001b:
        r0 = r3[r2];
        if (r4 == 0) goto L_0x0027;
    L_0x001f:
        r6 = r4.a;
        r6 = r0.equals(r6);
        if (r6 != 0) goto L_0x003c;
    L_0x0027:
        if (r0 == 0) goto L_0x0039;
    L_0x0029:
        r1 = new com.twitter.android.UserAccount;
        r2 = r0.a();
        r0 = com.twitter.library.util.b.c(r0);
        r1.<init>(r2, r0);
        r7.a(r1);
    L_0x0039:
        r7.f = r3;
        goto L_0x0013;
    L_0x003c:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0019;
    L_0x0040:
        r0 = r1;
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.AuthorizeAppFragment.onAccountsUpdated(android.accounts.Account[]):void");
    }

    private a[] c() {
        List c = d.a().c();
        a[] aVarArr = (a[]) c.toArray(new a[c.size()]);
        Arrays.sort(aVarArr, a.a);
        return aVarArr;
    }

    private void b(String str) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.g.c().g()).b("sso_sdk:::", str);
        if (this.e != null) {
            bbw.a(String.valueOf(5), this.e.toString());
        }
        bbu.a(bbw);
    }
}
