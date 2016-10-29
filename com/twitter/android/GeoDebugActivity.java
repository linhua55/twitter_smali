package com.twitter.android;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.location.Geocoder;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;
import bvv;
import com.google.android.exoplayer.SampleSource;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.k;
import com.google.android.gms.maps.m;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.e;
import com.google.android.gms.maps.model.f;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.util.aj;
import com.twitter.util.al;
import defpackage.bdc;
import defpackage.bwc;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
public class GeoDebugActivity extends TwitterFragmentActivity implements OnClickListener, View.OnClickListener, OnCheckedChangeListener, bvv, k, m {
    private Map<f, gx> a;
    private bwc b;
    private SupportMapFragment c;
    private c d;
    private f e;
    private Dialog f;
    private gu g;
    private CheckBox h;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968845);
        tVar.c(false);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(2131364314);
        this.a = new HashMap();
        this.b = bwc.a((Context) this);
        ImageButton imageButton = (ImageButton) findViewById(2131952514);
        if (Geocoder.isPresent()) {
            imageButton.setOnClickListener(this);
        } else {
            imageButton.setVisibility(8);
        }
        ((Button) findViewById(2131952513)).setOnClickListener(this);
        this.h = (CheckBox) findViewById(2131952512);
        this.h.setChecked(this.b.c());
        this.h.setOnCheckedChangeListener(this);
        c();
    }

    public void onStart() {
        super.onStart();
        e();
        f();
        Toast.makeText(this, 2131364309, 1).show();
    }

    private void c() {
        if (this.c == null) {
            this.c = (SupportMapFragment) getSupportFragmentManager().findFragmentById(2131952511);
        }
        if (this.c == null) {
            this.c = SupportMapFragment.a();
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.add(2131952511, this.c, "map");
            beginTransaction.commit();
        }
    }

    private void e() {
        if (this.d == null && this.c != null) {
            c c = this.c.c();
            if (c != null) {
                this.d = c;
                c.a((m) this);
                c.a(false);
                c.c().b(false);
                c.c().c(false);
                c.c().d(false);
                c.c().a(false);
                c.a((k) this);
                if (!this.b.d()) {
                    P().a(this);
                }
            }
        }
    }

    private void f() {
        if (this.d != null) {
            Location location;
            e eVar = new e();
            List<Location> e = this.b.e();
            for (Location location2 : e) {
                LatLng latLng = new LatLng(location2.getLatitude(), location2.getLongitude());
                eVar.a(latLng);
                a(latLng, location2);
            }
            if (!e.isEmpty()) {
                if (e.size() == 1) {
                    location2 = (Location) e.get(0);
                    this.d.a(b.a(new LatLng(location2.getLatitude(), location2.getLongitude()), 12.0f));
                    return;
                }
                this.d.a(b.a(eVar.a(), getResources().getDisplayMetrics().widthPixels / 2, getResources().getDisplayMetrics().heightPixels / 2, 0));
            }
        }
    }

    private gx a(LatLng latLng, Location location) {
        MarkerOptions markerOptions = new MarkerOptions();
        markerOptions.a(latLng);
        markerOptions.a(b(latLng));
        f a = this.d.a(markerOptions);
        if (a == null) {
            return null;
        }
        gx gxVar = new gx();
        gxVar.a = location;
        gxVar.b = this.d.a(new CircleOptions().a(latLng).a((double) gxVar.a.getAccuracy()).b(861252846).a(3.0f).a(-867851291));
        this.a.put(a, gxVar);
        return gxVar;
    }

    private String b(LatLng latLng) {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.ENGLISH);
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
        decimalFormat.setMaximumFractionDigits(7);
        StringBuilder stringBuilder = new StringBuilder("(");
        stringBuilder.append(decimalFormat.format(latLng.a));
        stringBuilder.append(", ");
        stringBuilder.append(decimalFormat.format(latLng.b));
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private Location c(LatLng latLng) {
        Location location = new Location("gps");
        location.setLatitude(latLng.a);
        location.setLongitude(latLng.b);
        location.setAccuracy(20.0f);
        location.setTime(al.b());
        c(location);
        return location;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (dialogInterface == this.f) {
            if (aj.b(((EditText) this.f.findViewById(2131952515)).getText().toString())) {
                new gw().execute(new String[]{r0});
                Toast.makeText(this, 2131362928, 0).show();
            }
        } else if (dialogInterface == this.g.getDialog()) {
            f a = this.g.a;
            gx gxVar;
            switch (i) {
                case SampleSource.SAMPLE_READ /*-3*/:
                    if (this.a.containsKey(a)) {
                        gxVar = (gx) this.a.remove(a);
                        this.b.b(gxVar.a);
                        this.b.a();
                        gxVar.b.a();
                        a.a();
                    }
                case TtmlStyle.UNSPECIFIED /*-1*/:
                    if (this.a.containsKey(a)) {
                        Location b = this.g.c;
                        gxVar = (gx) this.a.get(a);
                        this.b.a(gxVar.a, b);
                        gxVar.a = b;
                        gxVar.b.a((double) gxVar.a.getAccuracy());
                    }
                default:
            }
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952513:
                if (this.d != null) {
                    this.d.b();
                }
                this.a.clear();
                this.b.b();
                this.h.setChecked(false);
            case 2131952514:
                this.f = new Builder(this).setView(View.inflate(this, 2130968846, null)).setPositiveButton(bdc.button_search, this).setNegativeButton(2131362041, null).create();
                this.f.show();
            default:
        }
    }

    public void a(f fVar) {
        if (this.a.containsKey(fVar)) {
            this.g = new gu(fVar, ((gx) this.a.get(fVar)).a, this);
            this.g.show(getSupportFragmentManager(), "EditLocation");
        }
    }

    public void a(Location location) {
        if (location != null) {
            LatLng latLng = new LatLng(location.getLatitude(), location.getLongitude());
            this.d.a(b.a(latLng, 15.0f), ExoPlayerImplInternal.MSG_SEEK_COMPLETE, null);
            if (this.e != null) {
                this.e.a();
            }
            MarkerOptions markerOptions = new MarkerOptions();
            markerOptions.a(latLng);
            markerOptions.a(false);
            markerOptions.a(com.google.android.gms.maps.model.b.a(240.0f));
            this.e = this.d.a(markerOptions);
            P().b(this);
        }
    }

    public void b(Location location) {
    }

    public void a(LatLng latLng) {
        if (this.d != null) {
            this.b.a(a(latLng, c(latLng)).a);
            this.b.a();
        }
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.a(z);
    }

    @TargetApi(17)
    private void c(Location location) {
        if (VERSION.SDK_INT >= 17) {
            location.setElapsedRealtimeNanos(SystemClock.elapsedRealtimeNanos());
        }
    }
}
