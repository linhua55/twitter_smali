package com.twitter.android;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import java.util.ArrayList;

/* compiled from: Twttr */
class jb extends ArrayAdapter<String> {
    final /* synthetic */ LoginVerificationFragment a;

    jb(LoginVerificationFragment loginVerificationFragment, Context context, int i, int i2, ArrayList<String> arrayList) {
        this.a = loginVerificationFragment;
        super(context, i, i2, arrayList);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (i == 0) {
            return this.a.a(viewGroup);
        }
        return super.getView(i, null, viewGroup);
    }
}
