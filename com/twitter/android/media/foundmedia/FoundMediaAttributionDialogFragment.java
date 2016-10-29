package com.twitter.android.media.foundmedia;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v4.app.FragmentManager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.TextView;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class FoundMediaAttributionDialogFragment extends BaseDialogFragment {
    String a;
    private FoundMediaProvider c;
    private c d;

    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            if (this.a == null) {
                this.a = (String) e.a(bundle.getString("uri"));
            }
            if (this.c == null) {
                this.c = (FoundMediaProvider) e.a(bundle.getParcelable("provider"));
            }
        }
        View inflate = getActivity().getLayoutInflater().inflate(2130968744, null);
        ((TextView) inflate.findViewById(2131952319)).setText(getString(2131362725, ((FoundMediaProvider) e.a(this.c)).c));
        inflate.findViewById(2131952320).setOnClickListener(new a(this));
        inflate.findViewById(2131951994).setOnClickListener(new b(this));
        return new Builder(getActivity(), 2131559223).setView(inflate).create();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("uri", this.a);
        bundle.putParcelable("provider", this.c);
    }

    @CallSuper
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.d != null) {
            this.d.a();
        }
    }

    public static void a(FragmentManager fragmentManager, String str, FoundMediaProvider foundMediaProvider, c cVar) {
        FoundMediaAttributionDialogFragment foundMediaAttributionDialogFragment = new FoundMediaAttributionDialogFragment();
        foundMediaAttributionDialogFragment.a = str;
        foundMediaAttributionDialogFragment.c = foundMediaProvider;
        foundMediaAttributionDialogFragment.d = cVar;
        foundMediaAttributionDialogFragment.show(fragmentManager, BuildConfig.VERSION_NAME);
    }
}
