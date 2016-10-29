package rx.internal.operators;

import defpackage.cyv;

/* compiled from: Twttr */
final class bw implements cyv {
    bw() {
    }

    public Object call() {
        return new UnboundedReplayBuffer(16);
    }
}
