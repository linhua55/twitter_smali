package com.twitter.android.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import com.twitter.internal.network.HttpOperation;
import com.twitter.util.aj;
import java.net.URI;

/* compiled from: Twttr */
public abstract class DebugUrlPreference extends DialogPreference implements OnClickListener, OnCheckedChangeListener {
    protected LinearLayout a;
    protected RadioGroup b;
    protected Button c;
    protected EditText d;
    protected boolean e;
    private final SharedPreferences f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;

    protected abstract URI a(String str);

    public DebugUrlPreference(Context context, AttributeSet attributeSet, String str, String str2, String str3, String str4, String str5, String str6) {
        super(context, attributeSet);
        setDialogLayoutResource(2130968808);
        this.e = false;
        this.g = str;
        this.h = str2;
        this.i = str3;
        this.j = str4;
        this.k = str5;
        this.l = str6;
        SharedPreferences sharedPreferences = context.getSharedPreferences("debug_prefs", 0);
        setSummary(sharedPreferences.getBoolean(str, false) ? sharedPreferences.getString(str3, "Production") : "Production");
        this.f = sharedPreferences;
    }

    protected void showDialog(Bundle bundle) {
        super.showDialog(bundle);
        Dialog dialog = getDialog();
        if (dialog instanceof AlertDialog) {
            this.c = ((AlertDialog) dialog).getButton(-1);
            this.c.setOnClickListener(this);
        }
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        SharedPreferences sharedPreferences = this.f;
        RadioButton radioButton = (RadioButton) view.findViewById(2131952443);
        radioButton.setText(this.j);
        ((TextView) view.findViewById(2131952444)).setText(this.k);
        boolean z = sharedPreferences.getBoolean(this.g, false);
        if (z) {
            radioButton.setChecked(true);
        } else {
            ((RadioButton) view.findViewById(2131952442)).setChecked(true);
        }
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131952441);
        radioGroup.setOnCheckedChangeListener(this);
        this.b = radioGroup;
        this.a = (LinearLayout) view.findViewById(2131952446);
        EditText editText = (EditText) view.findViewById(2131952445);
        if (aj.b(this.l)) {
            editText.setHint(this.l);
        }
        if (aj.b(this.h) && sharedPreferences.contains(this.h)) {
            editText.setText(sharedPreferences.getString(this.h, TtmlNode.ANONYMOUS_REGION_ID));
        } else if (sharedPreferences.contains(this.i)) {
            editText.setText(sharedPreferences.getString(this.i, TtmlNode.ANONYMOUS_REGION_ID));
        } else if (aj.b(this.l)) {
            editText.setText(this.l);
        }
        editText.setEnabled(z);
        this.d = editText;
        this.e = z;
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        boolean z = i == 2131952443;
        this.d.setEnabled(z);
        this.e = z;
    }

    public void onClick(View view) {
        if (aj.b(this.d.getText().toString())) {
            new ae().execute(new String[]{r0});
        }
    }

    protected void a(Boolean bool) {
    }

    protected URI a(URI uri) {
        return uri;
    }

    protected boolean a() {
        return false;
    }

    protected boolean a(HttpOperation httpOperation) {
        return httpOperation.j();
    }
}
