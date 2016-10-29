package com.twitter.android.moments.ui.fullscreen;

import android.app.Dialog;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.util.c;

/* compiled from: Twttr */
public class BlockedMomentDialogFragment extends TakeoverDialogFragment {
    public BlockedMomentDialogFragment() {
        setStyle(0, 2131558780);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        if (VERSION.SDK_INT >= 19) {
            c.a(onCreateDialog.getWindow().getDecorView());
        }
        return onCreateDialog;
    }
}
