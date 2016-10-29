package com.google.android.exoplayer.text;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
final class SubtitleParserHelper implements Callback {
    private static final int MSG_FORMAT = 0;
    private static final int MSG_SAMPLE = 1;
    private IOException error;
    private final Handler handler;
    private final SubtitleParser parser;
    private boolean parsing;
    private PlayableSubtitle result;
    private RuntimeException runtimeError;
    private SampleHolder sampleHolder;
    private long subtitleOffsetUs;
    private boolean subtitlesAreRelative;

    public SubtitleParserHelper(Looper looper, SubtitleParser subtitleParser) {
        this.handler = new Handler(looper, this);
        this.parser = subtitleParser;
        flush();
    }

    public synchronized void flush() {
        this.sampleHolder = new SampleHolder(MSG_SAMPLE);
        this.parsing = false;
        this.result = null;
        this.error = null;
        this.runtimeError = null;
    }

    public synchronized boolean isParsing() {
        return this.parsing;
    }

    public synchronized SampleHolder getSampleHolder() {
        return this.sampleHolder;
    }

    public void setFormat(MediaFormat mediaFormat) {
        this.handler.obtainMessage(MSG_FORMAT, mediaFormat).sendToTarget();
    }

    public synchronized void startParseOperation() {
        boolean z = true;
        synchronized (this) {
            if (this.parsing) {
                z = false;
            }
            Assertions.checkState(z);
            this.parsing = true;
            this.result = null;
            this.error = null;
            this.runtimeError = null;
            this.handler.obtainMessage(MSG_SAMPLE, Util.getTopInt(this.sampleHolder.timeUs), Util.getBottomInt(this.sampleHolder.timeUs), this.sampleHolder).sendToTarget();
        }
    }

    public synchronized PlayableSubtitle getAndClearResult() throws IOException {
        PlayableSubtitle playableSubtitle;
        try {
            if (this.error != null) {
                throw this.error;
            } else if (this.runtimeError != null) {
                throw this.runtimeError;
            } else {
                playableSubtitle = this.result;
                this.result = null;
                this.error = null;
                this.runtimeError = null;
            }
        } catch (Throwable th) {
            this.result = null;
            this.error = null;
            this.runtimeError = null;
        }
        return playableSubtitle;
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case MSG_FORMAT /*0*/:
                handleFormat((MediaFormat) message.obj);
                break;
            case MSG_SAMPLE /*1*/:
                handleSample(Util.getLong(message.arg1, message.arg2), (SampleHolder) message.obj);
                break;
        }
        return true;
    }

    private void handleFormat(MediaFormat mediaFormat) {
        this.subtitlesAreRelative = mediaFormat.subsampleOffsetUs == PtsTimestampAdjuster.DO_NOT_OFFSET;
        this.subtitleOffsetUs = this.subtitlesAreRelative ? 0 : mediaFormat.subsampleOffsetUs;
    }

    private void handleSample(long j, SampleHolder sampleHolder) {
        RuntimeException runtimeException = null;
        try {
            Subtitle parse = this.parser.parse(sampleHolder.data.array(), MSG_FORMAT, sampleHolder.size);
            IOException iOException = null;
        } catch (IOException e) {
            iOException = e;
            parse = null;
        } catch (RuntimeException e2) {
            iOException = null;
            parse = null;
            runtimeException = e2;
        }
        synchronized (this) {
            if (this.sampleHolder == sampleHolder) {
                this.result = new PlayableSubtitle(parse, this.subtitlesAreRelative, j, this.subtitleOffsetUs);
                this.error = iOException;
                this.runtimeError = runtimeException;
                this.parsing = false;
            }
        }
    }
}
