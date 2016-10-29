package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.twitter.android.client.TwitterListActivity;
import com.twitter.android.client.c;
import com.twitter.android.util.bi;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.util.ae;
import com.twitter.library.util.b;
import com.twitter.model.core.TwitterUser;
import defpackage.bcx;
import defpackage.cne;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AccountsDialogActivity extends TwitterListActivity implements OnClickListener {
    private Uri b;
    private f c;
    private boolean d;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.d = intent.getBooleanExtra("authorize_account", false);
        this.b = (Uri) intent.getParcelableExtra("page");
        if (intent.getBooleanExtra("AccountsDialogActivity_add_account", false)) {
            d();
        } else if (intent.getBooleanExtra("AccountsDialogActivity_new_account", false)) {
            e();
        } else {
            setContentView(2130968604);
            this.c = new f(this, b.a(d.a().c()), intent.getStringExtra("AccountsDialogActivity_account_name"));
            getListView().setAdapter(this.c);
            findViewById(bcx.new_account).setOnClickListener(this);
            findViewById(bcx.add_account).setOnClickListener(this);
        }
        c.a((Context) this).c((Context) this);
    }

    protected void onResume() {
        super.onResume();
        if (!bg.a().c().d()) {
            DispatchActivity.a((Activity) this);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_AUTH /*3*/:
                if (-1 == i2) {
                    a b = b.b(intent.getStringExtra("AbsFragmentActivity_account_name"));
                    TwitterUser c = b == null ? null : b.c(b);
                    if (PushRegistration.c(this) && c != null && PushRegistration.e(this, b.a().name)) {
                        c.a((Context) this).a(b.a().name, cne.a, false);
                    }
                    if (this.b != null) {
                        a(this.b, intent.getStringExtra("AbsFragmentActivity_account_name"));
                    }
                    if (this.d && c != null) {
                        setResult(1, new Intent().putExtra("account", new UserAccount(b.a(), c)));
                    }
                }
                finish();
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    protected void onListItemClick(ListView listView, View view, int i, long j) {
        UserAccount userAccount = (UserAccount) this.c.getItem(i);
        ae.a(getApplicationContext()).a();
        setResult(1, new Intent().putExtra("account", userAccount));
        finish();
    }

    private void a(Uri uri, String str) {
        startActivity(new Intent(this, MainActivity.class).putExtra("AbsFragmentActivity_account_name", str).putExtra("page", uri).setFlags(67108864));
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case bcx.add_account /*2131951627*/:
                d();
            case bcx.new_account /*2131951685*/:
                e();
            default:
        }
    }

    private void d() {
        startActivityForResult(new Intent(this, LoginActivity.class).putExtra("add_account", true).putExtra("authorize_account", this.d), 3);
    }

    private void e() {
        startActivityForResult(new Intent(this, FlowActivity.class).putExtra("flow_data", bi.a(this).a(true, this.d, !this.d)), 3);
    }
}
