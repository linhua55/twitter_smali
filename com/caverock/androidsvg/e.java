package com.caverock.androidsvg;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class e {
    public List<f> a;
    public int b;

    public e() {
        this.a = null;
        this.b = 0;
    }

    public void a(f fVar) {
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.add(fVar);
    }

    public int a() {
        return this.a == null ? 0 : this.a.size();
    }

    public f a(int i) {
        return (f) this.a.get(i);
    }

    public boolean b() {
        return this.a == null ? true : this.a.isEmpty();
    }

    public void c() {
        this.b += AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS;
    }

    public void d() {
        this.b += 100;
    }

    public void e() {
        this.b++;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (f append : this.a) {
            stringBuilder.append(append).append(' ');
        }
        return stringBuilder.append('(').append(this.b).append(')').toString();
    }
}
