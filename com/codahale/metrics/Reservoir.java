package com.codahale.metrics;

/* compiled from: Twttr */
public interface Reservoir {
    Snapshot getSnapshot();

    int size();

    void update(long j);
}
