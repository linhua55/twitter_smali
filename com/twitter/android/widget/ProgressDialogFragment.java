package com.twitter.android.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class ProgressDialogFragment extends BaseDialogFragment {
    private boolean a;
    private boolean c;
    private boolean d;

    public ProgressDialogFragment() {
        this.a = false;
        this.c = false;
        this.d = false;
    }

    public /* synthetic */ d g() {
        return a();
    }

    public static ProgressDialogFragment a(int i) {
        return (ProgressDialogFragment) ((dr) new dr(0).a(i)).i();
    }

    public dp a() {
        return dp.a(getArguments());
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog progressDialog = new ProgressDialog(getActivity());
        progressDialog.setProgressStyle(0);
        progressDialog.setMessage(getText(a().a()));
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        setCancelable(false);
        return progressDialog;
    }

    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.d = false;
    }

    public void a(FragmentManager fragmentManager) {
        show(fragmentManager, null);
    }

    public void a(FragmentManager fragmentManager, String str) {
        this.d = true;
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add((Fragment) this, str);
        beginTransaction.commitAllowingStateLoss();
    }

    public void onStart() {
        super.onStart();
        this.c = true;
        if (this.a) {
            b();
        }
    }

    public void onStop() {
        super.onStop();
        this.c = false;
    }

    public void b() {
        this.a = true;
        if (!this.c) {
            return;
        }
        if (this.d) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }
}
