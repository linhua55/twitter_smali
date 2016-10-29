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
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.Toast;

/* compiled from: Twttr */
public class UmfPreference extends DialogPreference implements OnClickListener, OnCheckedChangeListener {
    RadioGroup a;
    Button b;
    private EditText c;
    private EditText d;
    private CheckBox e;
    private boolean f;
    private final SharedPreferences g;

    public UmfPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setDialogLayoutResource(2130969493);
        SharedPreferences sharedPreferences = context.getSharedPreferences("debug_prefs", 0);
        setSummary(a(sharedPreferences));
        this.g = sharedPreferences;
    }

    private String a(SharedPreferences sharedPreferences) {
        if (sharedPreferences.getBoolean("pb_force_campaign_enabled", false)) {
            return "Forced campaign " + sharedPreferences.getString("pb_force_campaign_id", "Force campaign Disabled");
        }
        return "Force campaign Disabled";
    }

    private void a(String str) {
        Toast makeText = Toast.makeText(getContext(), str, 1);
        makeText.setGravity(48, 0, 0);
        makeText.show();
    }

    private void a() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    protected void showDialog(Bundle bundle) {
        super.showDialog(bundle);
        Dialog dialog = getDialog();
        if (dialog instanceof AlertDialog) {
            this.b = ((AlertDialog) dialog).getButton(-1);
            this.b.setOnClickListener(this);
        }
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        SharedPreferences sharedPreferences = this.g;
        boolean z = sharedPreferences.getBoolean("pb_force_campaign_enabled", false);
        if (z) {
            ((RadioButton) view.findViewById(2131953346)).setChecked(true);
        } else {
            ((RadioButton) view.findViewById(2131953345)).setChecked(true);
        }
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131953344);
        radioGroup.setOnCheckedChangeListener(this);
        this.a = radioGroup;
        EditText editText = (EditText) view.findViewById(2131953347);
        if (sharedPreferences.contains("pb_force_campaign_id")) {
            editText.setText(sharedPreferences.getString("pb_force_campaign_id", TtmlNode.ANONYMOUS_REGION_ID));
        }
        EditText editText2 = (EditText) view.findViewById(2131953348);
        if (sharedPreferences.contains("pb_force_campaign_cookie")) {
            editText2.setText(sharedPreferences.getString("pb_force_campaign_cookie", TtmlNode.ANONYMOUS_REGION_ID));
        }
        CheckBox checkBox = (CheckBox) view.findViewById(2131953349);
        if (sharedPreferences.contains("pb_force_campaign_sticky")) {
            checkBox.setChecked(sharedPreferences.getBoolean("pb_force_campaign_sticky", false));
        }
        editText.setEnabled(z);
        editText2.setEnabled(z);
        checkBox.setEnabled(z);
        this.c = editText;
        this.d = editText2;
        this.e = checkBox;
        this.f = z;
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        boolean z = i == 2131953346;
        this.c.setEnabled(z);
        this.d.setEnabled(z);
        this.e.setEnabled(z);
        this.f = z;
    }

    public void onClick(View view) {
        this.a.setVisibility(8);
        this.b.setVisibility(8);
        String obj = this.c.getText().toString();
        String obj2 = this.d.getText().toString();
        Boolean valueOf = Boolean.valueOf(this.e.isChecked());
        if (this.f) {
            this.g.edit().putBoolean("pb_force_campaign_enabled", true).putString("pb_force_campaign_id", obj).putString("pb_force_campaign_cookie", obj2).putBoolean("pb_force_campaign_sticky", valueOf.booleanValue()).apply();
            obj = a(this.g);
            setSummary(obj);
            a(obj);
            a();
            return;
        }
        this.g.edit().putBoolean("pb_force_campaign_enabled", false).putString("pb_force_campaign_id", obj).putString("pb_force_campaign_cookie", obj2).putBoolean("pb_force_campaign_sticky", valueOf.booleanValue()).apply();
        obj = a(this.g);
        setSummary(obj);
        a(obj);
        a();
    }
}
