package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.google.android.gms.maps.model.f;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.library.platform.c;
import com.twitter.util.aj;
import defpackage.bvx;

/* compiled from: Twttr */
class gu extends BaseDialogFragment implements OnItemSelectedListener {
    private final f a;
    private final Location c;
    private TextView d;
    private EditText e;
    private Spinner f;
    private Spinner g;
    private final OnClickListener h;

    gu(f fVar, Location location, OnClickListener onClickListener) {
        this.a = fVar;
        this.c = location;
        this.h = onClickListener;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Builder builder = new Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(2130968847, null);
        builder.setView(inflate);
        this.d = (TextView) inflate.findViewById(2131952516);
        this.d.setText(bvx.a(this.c));
        this.e = (EditText) inflate.findViewById(2131952518);
        this.e.addTextChangedListener(new gv(this));
        SpinnerAdapter arrayAdapter = new ArrayAdapter(getActivity(), 17367048);
        arrayAdapter.setDropDownViewResource(17367049);
        arrayAdapter.add("gps");
        arrayAdapter.add("network");
        if (VERSION.SDK_INT >= 17 || c.a(getActivity())) {
            arrayAdapter.add("fused");
        }
        this.f = (Spinner) inflate.findViewById(2131952519);
        this.f.setAdapter(arrayAdapter);
        this.f.setOnItemSelectedListener(this);
        arrayAdapter = new ArrayAdapter(getActivity(), 17367048);
        arrayAdapter.setDropDownViewResource(17367049);
        arrayAdapter.add("Latitude");
        arrayAdapter.add("Longitude");
        arrayAdapter.add("H-Accuracy");
        arrayAdapter.add("Altitude");
        arrayAdapter.add("Speed");
        arrayAdapter.add("Bearing");
        arrayAdapter.add("Timestamp");
        arrayAdapter.add("Source");
        this.g = (Spinner) inflate.findViewById(2131952517);
        this.g.setAdapter(arrayAdapter);
        this.g.setOnItemSelectedListener(this);
        builder.setMessage(2131364308).setPositiveButton(2131364315, this.h).setNeutralButton(2131362398, this.h).setNegativeButton(2131362041, null);
        return builder.create();
    }

    void a(String str) {
        String str2 = (String) this.g.getSelectedItem();
        if (str2 != null) {
            try {
                if (str2.equals("H-Accuracy")) {
                    if (aj.a(str)) {
                        this.c.removeAccuracy();
                    } else {
                        this.c.setAccuracy(Float.parseFloat(str));
                    }
                } else if (str2.equals("Altitude")) {
                    if (aj.a(str)) {
                        this.c.removeAltitude();
                    } else {
                        this.c.setAltitude((double) Float.parseFloat(str));
                    }
                } else if (str2.equals("Speed")) {
                    if (aj.a(str)) {
                        this.c.removeSpeed();
                    } else {
                        this.c.setSpeed(Float.parseFloat(str));
                    }
                } else if (str2.equals("Bearing")) {
                    if (aj.a(str)) {
                        this.c.removeBearing();
                    } else {
                        this.c.setBearing(Float.parseFloat(str));
                    }
                } else if (str2.equals("Timestamp")) {
                    this.c.setTime(Long.parseLong(str));
                }
                this.d.setText(bvx.a(this.c));
            } catch (NumberFormatException e) {
            } catch (Exception e2) {
            }
        }
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int i2 = 8;
        int i3 = 0;
        String str;
        switch (adapterView.getId()) {
            case 2131952517:
                str = (String) adapterView.getItemAtPosition(i);
                if (str != null) {
                    this.e.setEnabled(true);
                    if (str.equals("Source")) {
                        int i4 = 0;
                        while (i4 < this.f.getAdapter().getCount()) {
                            if (this.c.getProvider().equals(this.f.getItemAtPosition(i4))) {
                                this.f.setSelection(i4);
                            } else {
                                i4++;
                            }
                        }
                    } else if (str.equals("Latitude")) {
                        this.e.setText(String.valueOf(this.c.getLatitude()));
                        this.e.setEnabled(false);
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("Longitude")) {
                        this.e.setText(String.valueOf(this.c.getLongitude()));
                        this.e.setEnabled(false);
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("H-Accuracy")) {
                        this.e.setText(String.valueOf(this.c.getAccuracy()));
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("Altitude")) {
                        if (this.c.hasAltitude()) {
                            this.e.setText(String.valueOf(this.c.getAltitude()));
                        } else {
                            this.e.setText(null);
                        }
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("Speed")) {
                        if (this.c.hasSpeed()) {
                            this.e.setText(String.valueOf(this.c.getSpeed()));
                        } else {
                            this.e.setText(null);
                        }
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("Bearing")) {
                        if (this.c.hasBearing()) {
                            this.e.setText(String.valueOf(this.c.getBearing()));
                        } else {
                            this.e.setText(null);
                        }
                        i2 = 0;
                        i3 = 8;
                    } else if (str.equals("Timestamp")) {
                        this.e.setText(String.valueOf(this.c.getTime()));
                        i2 = 0;
                        i3 = 8;
                    } else {
                        i3 = 8;
                    }
                    this.e.setVisibility(i2);
                    this.f.setVisibility(i3);
                }
            case 2131952519:
                str = (String) adapterView.getSelectedItem();
                if (str != null) {
                    this.c.setProvider(str);
                    this.d.setText(bvx.a(this.c));
                }
            default:
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
