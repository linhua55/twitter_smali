package rx.internal.operators;

import defpackage.cyv;

/* compiled from: Twttr */
final class bx implements cyv<bz<T>> {
    final /* synthetic */ int a;

    bx(int i) {
        this.a = i;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public bz<T> a() {
        return new SizeBoundReplayBuffer(this.a);
    }
}
