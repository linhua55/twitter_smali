package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* compiled from: Twttr */
public class DefaultTrackOutput implements TrackOutput {
    private volatile MediaFormat format;
    private volatile long largestParsedTimestampUs;
    private long lastReadTimeUs;
    private boolean needKeyframe;
    private final RollingSampleBuffer rollingBuffer;
    private final SampleHolder sampleInfoHolder;
    private long spliceOutTimeUs;

    public DefaultTrackOutput(Allocator allocator) {
        this.rollingBuffer = new RollingSampleBuffer(allocator);
        this.sampleInfoHolder = new SampleHolder(0);
        this.needKeyframe = true;
        this.lastReadTimeUs = Long.MIN_VALUE;
        this.spliceOutTimeUs = Long.MIN_VALUE;
        this.largestParsedTimestampUs = Long.MIN_VALUE;
    }

    public void clear() {
        this.rollingBuffer.clear();
        this.needKeyframe = true;
        this.lastReadTimeUs = Long.MIN_VALUE;
        this.spliceOutTimeUs = Long.MIN_VALUE;
        this.largestParsedTimestampUs = Long.MIN_VALUE;
    }

    public int getWriteIndex() {
        return this.rollingBuffer.getWriteIndex();
    }

    public void discardUpstreamSamples(int i) {
        this.rollingBuffer.discardUpstreamSamples(i);
        this.largestParsedTimestampUs = this.rollingBuffer.peekSample(this.sampleInfoHolder) ? this.sampleInfoHolder.timeUs : Long.MIN_VALUE;
    }

    public int getReadIndex() {
        return this.rollingBuffer.getReadIndex();
    }

    public boolean hasFormat() {
        return this.format != null;
    }

    public MediaFormat getFormat() {
        return this.format;
    }

    public long getLargestParsedTimestampUs() {
        return this.largestParsedTimestampUs;
    }

    public boolean isEmpty() {
        return !advanceToEligibleSample();
    }

    public boolean getSample(SampleHolder sampleHolder) {
        if (!advanceToEligibleSample()) {
            return false;
        }
        this.rollingBuffer.readSample(sampleHolder);
        this.needKeyframe = false;
        this.lastReadTimeUs = sampleHolder.timeUs;
        return true;
    }

    public void discardUntil(long j) {
        while (this.rollingBuffer.peekSample(this.sampleInfoHolder) && this.sampleInfoHolder.timeUs < j) {
            this.rollingBuffer.skipSample();
            this.needKeyframe = true;
        }
        this.lastReadTimeUs = Long.MIN_VALUE;
    }

    public boolean skipToKeyframeBefore(long j) {
        return this.rollingBuffer.skipToKeyframeBefore(j);
    }

    public boolean configureSpliceTo(DefaultTrackOutput defaultTrackOutput) {
        if (this.spliceOutTimeUs != Long.MIN_VALUE) {
            return true;
        }
        long j;
        if (this.rollingBuffer.peekSample(this.sampleInfoHolder)) {
            j = this.sampleInfoHolder.timeUs;
        } else {
            j = this.lastReadTimeUs + 1;
        }
        RollingSampleBuffer rollingSampleBuffer = defaultTrackOutput.rollingBuffer;
        while (rollingSampleBuffer.peekSample(this.sampleInfoHolder) && (this.sampleInfoHolder.timeUs < r0 || !this.sampleInfoHolder.isSyncFrame())) {
            rollingSampleBuffer.skipSample();
        }
        if (!rollingSampleBuffer.peekSample(this.sampleInfoHolder)) {
            return false;
        }
        this.spliceOutTimeUs = this.sampleInfoHolder.timeUs;
        return true;
    }

    private boolean advanceToEligibleSample() {
        boolean peekSample = this.rollingBuffer.peekSample(this.sampleInfoHolder);
        if (this.needKeyframe) {
            while (peekSample && !this.sampleInfoHolder.isSyncFrame()) {
                this.rollingBuffer.skipSample();
                peekSample = this.rollingBuffer.peekSample(this.sampleInfoHolder);
            }
        }
        if (!peekSample) {
            return false;
        }
        if (this.spliceOutTimeUs == Long.MIN_VALUE || this.sampleInfoHolder.timeUs < this.spliceOutTimeUs) {
            return true;
        }
        return false;
    }

    public int sampleData(DataSource dataSource, int i, boolean z) throws IOException {
        return this.rollingBuffer.appendData(dataSource, i, z);
    }

    public void format(MediaFormat mediaFormat) {
        this.format = mediaFormat;
    }

    public int sampleData(ExtractorInput extractorInput, int i, boolean z) throws IOException, InterruptedException {
        return this.rollingBuffer.appendData(extractorInput, i, z);
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        this.rollingBuffer.appendData(parsableByteArray, i);
    }

    public void sampleMetadata(long j, int i, int i2, int i3, byte[] bArr) {
        this.largestParsedTimestampUs = Math.max(this.largestParsedTimestampUs, j);
        this.rollingBuffer.commitSample(j, i, (this.rollingBuffer.getWritePosition() - ((long) i2)) - ((long) i3), i2, bArr);
    }
}
