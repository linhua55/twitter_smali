package com.twitter.android.initialization;

import android.app.Activity;
import android.os.Debug;
import android.util.Pair;
import bbn;
import bbq;
import bbs;
import com.twitter.util.c;
import csv;
import java.text.NumberFormat;

/* compiled from: Twttr */
class i implements bbs {
    final /* synthetic */ StringBuilder a;
    final /* synthetic */ NumberFormat b;
    final /* synthetic */ OomeReporterInitializer c;

    i(OomeReporterInitializer oomeReporterInitializer, StringBuilder stringBuilder, NumberFormat numberFormat) {
        this.c = oomeReporterInitializer;
        this.a = stringBuilder;
        this.b = numberFormat;
    }

    public void a(OutOfMemoryError outOfMemoryError, bbq bbq, boolean z) {
        if (z || !c.a()) {
            bbq.a("OutOfMemoryErrorLog.android_report", a());
        }
    }

    private String a() {
        this.a.setLength(0);
        try {
            this.a.append("Activity Count: ").append(csv.a(Activity.class)).append("\nFile Descriptor Count: ").append(csv.a()).append("\nActive Cursor Count: ").append(csv.b());
            Pair c = csv.c();
            this.a.append("\nCursor Memory in KBs: ").append(this.b.format(c.first)).append("\nOther Shared Memory in KBs: ").append(this.b.format(c.second)).append("\nHeap Total: ").append(this.b.format(Debug.getNativeHeapSize())).append("\nHeap Used: ").append(this.b.format(Debug.getNativeHeapAllocatedSize())).append("\nHeap Free: ").append(this.b.format(Debug.getNativeHeapFreeSize()));
        } catch (OutOfMemoryError e) {
        } catch (Throwable e2) {
            bbn.a(e2);
        }
        return OomeReporterInitializer.b(this.a);
    }
}
