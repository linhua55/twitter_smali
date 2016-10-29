package com.twitter.android.eventtimelines.tv.show;

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
public class TvShowLaunchDebugPreference extends DialogPreference {
    public static final TreeMap<String, Long> a;
    private final c<Long> b;
    private final OnClickListener c;
    private EditText d;
    private final OnItemSelectedListener e;

    static {
        a = new TreeMap();
        a.put("Blindspot", Long.valueOf(10037586544L));
        a.put("Gotham", Long.valueOf(10029975143L));
        a.put("Minority Report", Long.valueOf(10037586656L));
        a.put("Mr. Robot", Long.valueOf(10038117678L));
        a.put("Quantico", Long.valueOf(10037636605L));
        a.put("Supergirl", Long.valueOf(10037616087L));
        a.put("iZombie", Long.valueOf(10032436428L));
    }

    private void a(long j) {
        Intent intent = new Intent(getContext(), TvShowActivity.class);
        intent.putExtra("entity_id", j);
        getContext().startActivity(intent);
    }

    public TvShowLaunchDebugPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new v(this);
        this.e = new w(this);
        setDialogLayoutResource(2130969472);
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
        Spinner spinner = (Spinner) view.findViewById(2131953323);
        spinner.setAdapter(arrayAdapter);
        spinner.setOnItemSelectedListener(this.e);
        this.d = (EditText) view.findViewById(2131953324);
        this.b.c(new x(this));
    }
}
