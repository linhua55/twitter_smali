package com.twitter.android.communities;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.util.TreeMap;
import rx.subjects.c;

/* compiled from: Twttr */
public class CommunityLaunchDebugPreference extends DialogPreference {
    public static final TreeMap<String, Long> a;
    private final c<Long> b;
    private final OnClickListener c;
    private EditText d;
    private final OnItemSelectedListener e;

    static {
        a = new TreeMap();
        a.put("Sausage dogs", Long.valueOf(1));
        a.put("Sausage dogs party", Long.valueOf(692367706226425858L));
    }

    private void a(long j) {
        Intent intent = new Intent(getContext(), CommunityActivity.class);
        intent.putExtra("community_id", j);
        getContext().startActivity(intent);
    }

    public CommunityLaunchDebugPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new h(this);
        this.e = new i(this);
        setDialogLayoutResource(2130968707);
        this.b = c.e(a.firstEntry().getValue());
    }

    protected void showDialog(Bundle bundle) {
        super.showDialog(bundle);
        Dialog dialog = getDialog();
        if (dialog instanceof AlertDialog) {
            ((AlertDialog) dialog).getButton(-1).setOnClickListener(this.c);
        }
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        SpinnerAdapter arrayAdapter = new ArrayAdapter(getContext(), 17367048);
        arrayAdapter.setDropDownViewResource(17367049);
        arrayAdapter.addAll(a.keySet());
        Spinner spinner = (Spinner) view.findViewById(2131952218);
        spinner.setAdapter(arrayAdapter);
        spinner.setOnItemSelectedListener(this.e);
        this.d = (EditText) view.findViewById(2131952219);
        this.b.c(new j(this));
    }
}
