package com.twitter.android.widget;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.app.common.base.d;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class PromptDialogFragment extends BaseDialogFragment implements OnClickListener {
    public /* synthetic */ d g() {
        return c();
    }

    public ea c() {
        return ea.b(getArguments());
    }

    public void a(FragmentManager fragmentManager, String str) {
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add((Fragment) this, str);
        beginTransaction.commitAllowingStateLoss();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        ea c = c();
        Builder builder = new Builder(getActivity());
        if (c.b()) {
            builder.setIcon(c.p());
        }
        if (c.c()) {
            builder.setTitle(c.q());
        }
        if (c.n()) {
            builder.setTitle(c.B());
        }
        if (c.d()) {
            builder.setMessage(c.r());
        }
        if (c.o()) {
            builder.setMessage(c.C());
        }
        if (c.e()) {
            builder.setPositiveButton(c.s(), this);
        }
        if (c.f()) {
            builder.setNeutralButton(c.u(), this);
        }
        if (c.g()) {
            builder.setNegativeButton(c.t(), this);
        }
        if (c.h()) {
            builder.setCancelable(c.v());
        }
        if (c.j()) {
            builder.setItems(getResources().getTextArray(c.x()), this);
        } else if (c.m()) {
            builder.setItems(c.A(), this);
        } else if (c.i()) {
            int[] w = c.w();
            if (w != null && w.length > 0) {
                n a = n.a(w.length);
                Resources resources = getResources();
                for (int string : w) {
                    a.c(resources.getString(string));
                }
                builder.setItems((CharSequence[]) ((List) a.q()).toArray(new String[w.length]), this);
            }
        }
        if (c.k()) {
            builder.setSingleChoiceItems(getResources().getTextArray(c.y()), c.a(-1), this);
        }
        if (c.l()) {
            builder.setView(((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(c().z(), null));
        }
        return builder.create();
    }

    public void onActivityCreated(Bundle bundle) {
        if (c().l()) {
            getDialog().show();
        }
        super.onActivityCreated(bundle);
    }

    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        c(i);
    }
}
