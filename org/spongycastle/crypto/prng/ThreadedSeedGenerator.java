package org.spongycastle.crypto.prng;

/* compiled from: Twttr */
public class ThreadedSeedGenerator {

    /* compiled from: Twttr */
    class SeedGenerator implements Runnable {
        private volatile int a;
        private volatile boolean b;

        public void run() {
            while (!this.b) {
                this.a++;
            }
        }
    }
}
