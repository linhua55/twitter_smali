package com.twitter.android.settings;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.network.narc.h;
import com.twitter.library.network.narc.i;

/* compiled from: Twttr */
public class ReportProblemDialogPreference extends DialogPreference {
    private static final String[] a;
    private Spinner b;
    private EditText c;

    static {
        a = new String[]{"General", "Network", "Photos and videos", "Tweets and timelines"};
    }

    public ReportProblemDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setPersistent(false);
        setDialogTitle(2131363482);
        setDialogLayoutResource(2130969283);
        setPositiveButtonText(2131363370);
        setNegativeButtonText(2131362041);
    }

    protected void showDialog(Bundle bundle) {
        super.showDialog(bundle);
        Dialog dialog = getDialog();
        this.c = (EditText) dialog.findViewById(2131953239);
        this.b = (Spinner) dialog.findViewById(2131953238);
        SpinnerAdapter createFromResource = ArrayAdapter.createFromResource(getContext(), 2131427335, 17367048);
        createFromResource.setDropDownViewResource(17367049);
        this.b.setAdapter(createFromResource);
    }

    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (z) {
            Session c = bg.a().c();
            h a = i.a();
            String obj = this.c.getText().toString();
            int selectedItemPosition = this.b.getSelectedItemPosition();
            String str = (selectedItemPosition < 0 || selectedItemPosition >= a.length) ? null : a[selectedItemPosition];
            Context context = getContext();
            az.a(context).a(new v(context, c, a, obj, str));
        }
    }

    protected void onPrepareDialogBuilder(Builder builder) {
        builder.setIconAttribute(16843605);
    }
}
