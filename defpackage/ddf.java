package defpackage;

import java.util.Random;

/* compiled from: Twttr */
/* renamed from: ddf */
public abstract class ddf<Result> implements Runnable {
    private final double mJitterPercent;
    private final long mMaxInterval;
    private final int mMaxRetries;
    private int mNumRetries;
    private final Random mRandom;
    private long mRetryBackoff;
    private final long mRetryInterval;

    protected abstract boolean canRetry(Result result);

    protected abstract Result execute();

    protected abstract void finish(Result result);

    protected abstract void noRetriesLeft(Result result);

    protected abstract void retry(Result result);

    protected ddf(int i, long j, long j2) {
        this.mRandom = new Random();
        this.mJitterPercent = 0.2d;
        this.mMaxRetries = i;
        this.mRetryInterval = j;
        this.mMaxInterval = j2;
    }

    public void run() {
        Object execute = execute();
        if (!canRetry(execute)) {
            finish(execute);
        } else if (this.mNumRetries >= this.mMaxRetries) {
            noRetriesLeft(execute);
        } else {
            this.mNumRetries++;
            this.mRetryBackoff = Math.min(this.mMaxInterval, (long) ((randomJitter() * ((double) this.mRetryInterval)) * ((double) (1 << this.mNumRetries))));
            retry(execute);
        }
    }

    protected double randomJitter() {
        return 0.8d + (0.3999999999999999d * this.mRandom.nextDouble());
    }

    public long currentBackoff() {
        return this.mRetryBackoff;
    }

    public int numRetries() {
        return this.mNumRetries;
    }
}
