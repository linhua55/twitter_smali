package com.twitter.android.dialog;

import android.widget.Toast;
import com.twitter.library.api.UserSettings;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bpi;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class v extends z {
    private final WeakReference<UpdatePhoneDialogActivity> a;

    v(UpdatePhoneDialogActivity updatePhoneDialogActivity) {
        this.a = new WeakReference(updatePhoneDialogActivity);
    }

    public void a(x xVar) {
        UpdatePhoneDialogActivity updatePhoneDialogActivity = (UpdatePhoneDialogActivity) this.a.get();
        if (updatePhoneDialogActivity != null) {
            if (updatePhoneDialogActivity.a != null) {
                updatePhoneDialogActivity.a.b();
            }
            if (((aa) ((bpi) xVar).l().b()).b()) {
                UserSettings j = updatePhoneDialogActivity.c.j();
                if (j != null) {
                    j.p = null;
                }
                updatePhoneDialogActivity.b("remove::success");
                updatePhoneDialogActivity.a();
                return;
            }
            updatePhoneDialogActivity.b("remove:error:generic");
            Toast.makeText(updatePhoneDialogActivity, 2131363724, 1).show();
            updatePhoneDialogActivity.finish();
        }
    }
}
