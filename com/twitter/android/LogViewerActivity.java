package com.twitter.android;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class LogViewerActivity extends TwitterFragmentActivity {
    private TextView a;
    private Spinner b;
    private Collection<String> c;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968956);
        tVar.c(false);
        tVar.a(false);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.c = (Collection) h.a(new ij(this));
        Spinner spinner = (Spinner) findViewById(2131952666);
        spinner.setOnItemSelectedListener(new ik(this));
        List arrayList = new ArrayList();
        arrayList.add(new in("All", "."));
        arrayList.add(new in("Error", "^E"));
        arrayList.add(new in("Warning", "^W"));
        arrayList.add(new in("Info", "^I"));
        arrayList.add(new in("Debug", "^D"));
        SpinnerAdapter arrayAdapter = new ArrayAdapter(this, 17367048, arrayList);
        arrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter(arrayAdapter);
        spinner.setSelection(1);
        this.b = spinner;
        this.a = (TextView) findViewById(2131952667);
        ((Button) findViewById(2131952668)).setOnClickListener(new il(this));
        c();
    }

    private void c() {
        Iterable iterable;
        in inVar = (in) this.b.getSelectedItem();
        Pattern pattern = inVar != null ? inVar.b : null;
        if (pattern == null) {
            iterable = this.c;
        } else {
            iterable = CollectionUtils.a(this.c, new im(this, pattern));
        }
        this.a.setText(aj.a("\n", iterable));
    }
}
