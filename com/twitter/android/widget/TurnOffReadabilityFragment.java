package com.twitter.android.widget;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import com.twitter.app.common.base.BaseDialogFragment;

/* compiled from: Twttr */
public class TurnOffReadabilityFragment extends BaseDialogFragment {
    private static String a;
    private static Activity c;

    public static TurnOffReadabilityFragment a(String str, Activity activity) {
        TurnOffReadabilityFragment turnOffReadabilityFragment = new TurnOffReadabilityFragment();
        a = str;
        c = activity;
        return turnOffReadabilityFragment;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new Builder(c).setTitle(2131363975).setMessage(2131363974).setNeutralButton(c.getResources().getString(2131362321), new ff(this)).create();
    }

    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
