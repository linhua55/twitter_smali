package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.AppConfig;
import com.twitter.library.client.d;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import com.twitter.util.c;
import defpackage.bbn;
import java.util.ArrayList;

/* compiled from: Twttr */
public class BugReporterActivity extends TwitterFragmentActivity implements TextWatcher, OnItemSelectedListener {
    private static final be[] a;
    private View b;
    private EditText c;
    private int d;
    private ImageView e;

    public BugReporterActivity() {
        this.d = 0;
    }

    static {
        r0 = new be[28];
        r0[0] = new be("Where did we go wrong?").a("** New Bugs / Triage **");
        r0[1] = new be("Tweet Anatomy").a("Tweet Anatomy");
        r0[2] = new be("Tweet Detail").a("Tweet Detail");
        r0[3] = new be("DMs").a("DM");
        r0[4] = new be("Profiles").a("Profiles");
        r0[5] = new be("Find People/Connect").a("People Discovery");
        r0[6] = new be("Search & Trends").a("Search & Trends");
        r0[7] = new be("Notifications & Badging").a("Notifications");
        r0[8] = new be("Notifications Tab").a("Notifications");
        r0[9] = new be("Photos").a("Expression");
        r0[10] = new be("Composer").a("Composer");
        r0[11] = new be("Cards").a("Cards");
        r0[12] = new be("Translation/Localization").a("** New Bugs / Triage **");
        r0[13] = new be("Geo/Geotagging").a("Geo");
        r0[14] = new be("Moments").a("Moments");
        r0[15] = new be("Onboarding").a("Onboarding");
        r0[16] = new be("Lists").a("Lists & Collections");
        r0[17] = new be("Product Safety").a("CUP");
        r0[18] = new be("Promoted").a("REVFMTS");
        r0[19] = new be("Video").a("Media Consumption");
        r0[20] = new be("Audio").a("Media Consumption");
        r0[21] = new be("Home Timeline").a("Home Timeline");
        r0[22] = new be("Highlights").a("Highlights");
        r0[23] = new be("Modern Android").a("Modern Android");
        r0[24] = new be("Design Feedback").a("Modern Android");
        r0[25] = new be("Periscope Integration").a("PSCP");
        r0[26] = new be("Live Video").a("LV").a("Android");
        r0[27] = new be("Crash/Other").a("** New Bugs / Triage **");
        a = r0;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.c(false);
        tVar.d(2130968655);
        tVar.a(true);
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        setTitle("File a bug");
        if (!AppConfig.m().p()) {
            bbn.a(new IllegalStateException("BugReporterActivity should not be created in release builds."));
        }
        Spinner spinner = (Spinner) findViewById(2131952027);
        this.c = (EditText) findViewById(2131952026);
        this.b = findViewById(2131952028);
        this.e = (ImageView) findViewById(2131952029);
        this.c.addTextChangedListener(this);
        SpinnerAdapter arrayAdapter = new ArrayAdapter(this, 17367048, a);
        arrayAdapter.setDropDownViewResource(17367049);
        spinner.setAdapter(arrayAdapter);
        spinner.setOnItemSelectedListener(this);
    }

    protected void onResume() {
        super.onResume();
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("android.intent.extra.STREAM");
        if (parcelableArrayListExtra.isEmpty()) {
            this.b.setVisibility(8);
            this.e.setVisibility(8);
            return;
        }
        this.e.setImageURI(null);
        this.e.setAdjustViewBounds(true);
        this.e.setImageURI((Uri) parcelableArrayListExtra.get(0));
    }

    public boolean a(w wVar) {
        wVar.a(2132017196);
        return true;
    }

    public int b(w wVar) {
        wVar.j().a(2131953494).c(aj.b(this.c.getText().toString().trim()));
        return 2;
    }

    private void c() {
        String str = "Your bug report has been generated. Make sure to use your @twitter.com email address when sending!";
        Toast.makeText(this, "Your bug report has been generated. Make sure to use your @twitter.com email address when sending!", 1).show();
        Intent intent = new Intent(getIntent());
        intent.setComponent(null);
        String b = a[this.d].b(this.c.getText().toString().trim());
        intent.putExtra("android.intent.extra.SUBJECT", String.format("%s #build=%s", new Object[]{b, e()}));
        startActivityForResult(Intent.createChooser(intent, null), 8000);
    }

    private String e() {
        String c = c.c(this);
        int indexOf = c.indexOf(45);
        return indexOf == -1 ? c : c.substring(0, indexOf);
    }

    public boolean a(ac acVar) {
        if (acVar.a() != 2131953494) {
            return super.a(acVar);
        }
        if (aq.a((Context) this)) {
            c();
            return true;
        }
        new Builder(this).setTitle("Twitter bug reporter").setMessage("Setup your phone with your @twitter.com email address so we can follow up on your bug report.").setInverseBackgroundForced(true).setNegativeButton("Skip", new bd(this)).setPositiveButton("Setup", new bc(this)).create().show();
        return true;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 8000) {
            finish();
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        Y().h();
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.d = i;
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
