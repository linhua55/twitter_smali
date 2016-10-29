package com.twitter.android.nativecards.pollcompose;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;
import com.google.android.exoplayer.SampleSource;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class j extends AlertDialog implements OnClickListener, OnValueChangeListener {
    private final k a;
    private final k b;
    private final k c;
    private final NumberPicker d;
    private final NumberPicker e;
    private final NumberPicker f;
    private final l g;

    protected j(Context context, l lVar, long j, long j2, long j3) {
        super(context);
        if (j < 0 || j2 < 0 || j3 < 0 || j < j2 || j > j3) {
            throw new IllegalArgumentException("check duration arguments for domain and range!");
        }
        this.g = lVar;
        this.a = new k(j);
        this.b = new k(j2);
        this.c = new k(j3);
        setTitle(context.getString(2131362575));
        setButton(-1, context.getString(2131362578), this);
        setButton(-2, context.getString(17039360), this);
        View inflate = LayoutInflater.from(context).inflate(2130968785, null);
        this.d = (NumberPicker) inflate.findViewById(2131952380);
        this.e = (NumberPicker) inflate.findViewById(2131952381);
        this.f = (NumberPicker) inflate.findViewById(2131952382);
        this.d.setOnValueChangedListener(this);
        this.e.setOnValueChangedListener(this);
        this.f.setOnValueChangedListener(this);
        this.d.setMinValue(0);
        this.d.setMaxValue((int) this.c.b);
        this.d.setWrapSelectorWheel(false);
        this.d.setValue(this.a.a);
        this.e.setMinValue(0);
        this.e.setMaxValue(23);
        this.e.setWrapSelectorWheel(true);
        this.e.setValue(this.a.c);
        this.f.setMinValue(0);
        this.f.setMaxValue(59);
        this.f.setWrapSelectorWheel(true);
        this.f.setValue(this.a.e);
        setView(inflate);
    }

    public void onValueChange(NumberPicker numberPicker, int i, int i2) {
        switch (numberPicker.getId()) {
            case 2131952380:
                if (b() > this.c.f) {
                    a();
                } else if (b() < this.b.f) {
                    this.e.setValue((int) Math.max(this.b.d, 1));
                }
            case 2131952381:
                if (b() > this.c.f) {
                    a();
                } else if (b() < this.b.f) {
                    this.f.setValue((int) this.b.f);
                }
            case 2131952382:
                if (b() > this.c.f) {
                    a();
                } else if (b() < this.b.f) {
                    this.f.setValue(this.b.e);
                }
            default:
        }
    }

    private void a() {
        this.d.setValue(this.c.a);
        this.e.setValue(this.c.c);
        this.f.setValue(this.c.e);
    }

    private long b() {
        return (TimeUnit.DAYS.toMinutes((long) this.d.getValue()) + TimeUnit.HOURS.toMinutes((long) this.e.getValue())) + ((long) this.f.getValue());
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case SampleSource.NOTHING_READ /*-2*/:
                cancel();
            case TtmlStyle.UNSPECIFIED /*-1*/:
                if (this.g != null) {
                    this.g.a(b());
                }
            default:
        }
    }
}
