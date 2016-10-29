package com.twitter.android.moments.ui.fullscreen;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.twitter.util.al;

/* compiled from: Twttr */
public class gd implements SensorEventListener {
    private int a;
    private long b;
    private ge c;
    private final SensorManager d;

    public gd(SensorManager sensorManager) {
        this.d = sensorManager;
    }

    public void a(ge geVar) {
        this.c = geVar;
    }

    public void a() {
        this.d.registerListener(this, this.d.getDefaultSensor(1), 3);
    }

    public void b() {
        this.d.unregisterListener(this);
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        float f = sensorEvent.values[0];
        f /= 9.80665f;
        float f2 = sensorEvent.values[1] / 9.80665f;
        float f3 = sensorEvent.values[2] / 9.80665f;
        double sqrt = Math.sqrt((double) (((f * f) + (f2 * f2)) + (f3 * f3)));
        long b = al.b();
        long j = b - this.b;
        if (sqrt > 1.7999999523162842d && (this.b == 0 || j < 500)) {
            this.b = b;
            this.a++;
        } else if (j >= 500) {
            c();
        }
        if (this.a >= 15 && this.c != null) {
            this.c.c();
            c();
        }
    }

    private void c() {
        this.a = 0;
        this.b = 0;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }
}
