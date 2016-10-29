package com.twitter.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.library.client.bg;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

@Deprecated
/* compiled from: Twttr */
public class DialogActivity extends BaseFragmentActivity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (bg.a().c().d()) {
            OnDismissListener dzVar = new dz(this);
            String action = intent.getAction();
            String stringExtra = intent.getStringExtra("scribe_page");
            OnClickListener eaVar;
            AlertDialog create;
            if ("twitter".equals(intent.getScheme())) {
                Uri data = intent.getData();
                action = data.getHost();
                if ("follow".equals(action)) {
                    try {
                        eaVar = new ea(this, Long.parseLong(data.getQueryParameter("user_id")));
                        create = new Builder(this).setTitle(2131362705).setMessage(2131364103).setPositiveButton(2131364205, eaVar).setNegativeButton(2131363158, eaVar).create();
                        create.setOnDismissListener(dzVar);
                        create.show();
                        return;
                    } catch (NumberFormatException e) {
                        finish();
                        return;
                    }
                } else if ("unfollow".equals(action)) {
                    try {
                        eaVar = new eb(this, Long.parseLong(data.getQueryParameter("user_id")));
                        create = new Builder(this).setTitle(2131364091).setMessage(2131364093).setPositiveButton(2131364205, eaVar).setNegativeButton(2131363158, eaVar).create();
                        create.setOnDismissListener(dzVar);
                        create.show();
                        return;
                    } catch (NumberFormatException e2) {
                        finish();
                        return;
                    }
                } else {
                    finish();
                    return;
                }
            } else if ("find_friends".equals(action)) {
                eaVar = new ec(this, bg.a().c().g(), stringExtra);
                create = new Builder(this).setTitle(2131364382).setMessage(2131363533).setPositiveButton(2131363218, eaVar).setNegativeButton(2131362041, eaVar).create();
                create.setOnDismissListener(dzVar);
                create.show();
                return;
            } else if ("blocked_suspended".equals(action)) {
                OnClickListener edVar = new ed(this);
                create = new Builder(this).setTitle(2131363921).setMessage(getString(2131363920, new Object[]{intent.getStringExtra(UsernameError.USERNAME_ERROR_FIELD)})).setPositiveButton(2131362748, edVar).setNegativeButton(2131361988, edVar).create();
                create.setOnDismissListener(dzVar);
                create.show();
                return;
            } else {
                eaVar = new ee(this);
                Builder negativeButton = new Builder(this).setTitle(2131363872).setNegativeButton(2131361988, eaVar);
                if ("blocked_spammer_tweet".equals(action)) {
                    create = negativeButton.setMessage(2131363875).setPositiveButton(2131364044, eaVar).create();
                    create.setOnDismissListener(dzVar);
                    create.show();
                    return;
                } else if ("blocked_spammer_follow".equals(action)) {
                    create = negativeButton.setMessage(2131363874).setPositiveButton(2131364044, eaVar).create();
                    create.setOnDismissListener(dzVar);
                    create.show();
                    return;
                } else if ("blocked_automated_spammer".equals(action)) {
                    create = negativeButton.setMessage(2131363873).create();
                    create.setOnDismissListener(dzVar);
                    create.show();
                    return;
                } else {
                    finish();
                    return;
                }
            }
        }
        DispatchActivity.a(this, intent);
    }
}
