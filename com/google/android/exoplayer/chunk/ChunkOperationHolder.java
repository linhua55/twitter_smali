package com.google.android.exoplayer.chunk;

/* compiled from: Twttr */
public final class ChunkOperationHolder {
    public Chunk chunk;
    public boolean endOfStream;
    public int queueSize;

    public void clear() {
        this.queueSize = 0;
        this.chunk = null;
        this.endOfStream = false;
    }
}
