package com.twitter.android.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.TextView;
import com.twitter.util.object.e;
import defpackage.bcu;

/* compiled from: Twttr */
public class AddressbookTakeoverDialogFragment extends TakeoverDialogFragment {
    protected void a(Dialog dialog, Bundle bundle) {
        super.a(dialog, bundle);
        c.a(getContext(), (TextView) e.a(b(2131951643)), bcu.link_selected, "contacts_sync_prompt");
    }
}
