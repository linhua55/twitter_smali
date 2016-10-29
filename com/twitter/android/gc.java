package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.twitter.android.FlowPresenter.Direction;

/* compiled from: Twttr */
public interface gc {
    void a(Flow$Options flow$Options);

    void a(Flow$Step flow$Step, Direction direction, Bundle bundle);

    void g(String str);

    FragmentManager getSupportFragmentManager();

    void h();

    void i();
}
