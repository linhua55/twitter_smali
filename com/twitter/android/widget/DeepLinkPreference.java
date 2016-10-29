package com.twitter.android.widget;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.client.bg;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class DeepLinkPreference extends DialogPreference {
    protected EditText a;

    public DeepLinkPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDialogLayoutResource(2130968731);
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        this.a = (EditText) view.findViewById(2131952310);
        int length = this.a.getText().length();
        this.a.setSelection(length, length);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        super.onClick(dialogInterface, i);
        if (i == -1) {
            Context context = getContext();
            Object trim = this.a.getText().toString().trim();
            long g = bg.a().c().g();
            if (aj.b(trim)) {
                try {
                    OpenUriHelper.a(context, trim, g);
                } catch (ActivityNotFoundException e) {
                    Toast.makeText(context, "Not a valid URI", 0).show();
                }
            }
        }
    }
}
