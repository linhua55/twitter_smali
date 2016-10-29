package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.app.common.base.t;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bpo;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class UserQueryActivity extends ListFragmentActivity implements xn {
    private xm a;
    protected long b;
    protected String c;
    boolean d;

    protected void a(TwitterUser twitterUser) {
        if (twitterUser != null) {
            this.b = twitterUser.c;
            this.c = twitterUser.k;
        }
    }

    public void b(Bundle bundle, t tVar) {
        if (bundle != null) {
            this.b = bundle.getLong("user_id");
            this.c = bundle.getString(UsernameError.USERNAME_ERROR_FIELD);
        } else {
            Intent intent = getIntent();
            this.b = intent.getLongExtra("user_id", 0);
            this.c = intent.getStringExtra("screen_name");
        }
        super.b(bundle, tVar);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("user_id", this.b);
        bundle.putString(UsernameError.USERNAME_ERROR_FIELD, this.c);
    }

    protected void c() {
        if (this.a == null) {
            this.a = new xm(this, getSupportLoaderManager(), this, 1);
            this.a.a(this.b, this.c, ab().g());
            return;
        }
        this.a.b(this.b, this.c, ab().g());
    }

    public void c(TwitterUser twitterUser) {
        if (!this.d && !isFinishing()) {
            if (twitterUser != null && twitterUser.e()) {
                a(twitterUser);
            } else if (this.b != 0 || aj.b(this.c)) {
                e();
            }
        }
    }

    protected void e() {
        if (!this.d) {
            this.d = true;
            b(new bpo((Context) this, ab(), this.b, this.c), 1);
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                int i2;
                this.d = false;
                switch (((aa) xVar.l().b()).d()) {
                    case 200:
                        TwitterUser twitterUser = ((bpo) xVar).a;
                        if (twitterUser == null) {
                            i2 = 2131364070;
                            break;
                        }
                        a(twitterUser);
                        i2 = 0;
                        break;
                    case 403:
                        if (!CollectionUtils.a(cd.a(((bpo) xVar).b), 63)) {
                            i2 = 2131364070;
                            break;
                        } else {
                            i2 = 2131363922;
                            break;
                        }
                    case 404:
                        i2 = 2131364071;
                        break;
                    default:
                        i2 = 2131364070;
                        break;
                }
                if (i2 > 0) {
                    Toast.makeText(this, i2, 1).show();
                    finish();
                }
            default:
        }
    }
}
