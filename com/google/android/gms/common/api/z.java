package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;

public abstract class z<R extends w, S extends w> {
    @NonNull
    public Status a(@NonNull Status status) {
        return status;
    }

    @Nullable
    @WorkerThread
    public abstract t<S> a(@NonNull R r);
}
