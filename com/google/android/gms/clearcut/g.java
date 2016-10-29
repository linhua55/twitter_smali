package com.google.android.gms.clearcut;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import java.util.concurrent.TimeUnit;

public interface g {
    t<Status> a(n nVar, LogEventParcelable logEventParcelable);

    boolean a(n nVar, long j, TimeUnit timeUnit);
}
