package com.twitter.android;

import android.os.Bundle;
import java.util.List;

/* compiled from: Twttr */
public interface FlowPresenter {

    /* compiled from: Twttr */
    public enum Direction {
        Forward,
        Backward
    }

    void a();

    void a(int i, boolean z);

    void a(Bundle bundle);

    void a(Flow$Step flow$Step, gb gbVar);

    void a(Direction direction);

    void a(ValidationState validationState);

    void a(gb gbVar);

    void a(List<Flow$Step> list, FlowData flowData);

    void a(boolean z);

    FlowData b();

    void b(Bundle bundle);

    void b(Direction direction);

    String c();

    void d();

    void e();

    ValidationState f();
}
