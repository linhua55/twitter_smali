package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
final class Mp4WebvttSubtitle implements Subtitle {
    private final List<Cue> cues;

    public Mp4WebvttSubtitle(List<Cue> list) {
        this.cues = Collections.unmodifiableList(list);
    }

    public int getNextEventTimeIndex(long j) {
        return j < 0 ? 0 : -1;
    }

    public int getEventTimeCount() {
        return 1;
    }

    public long getEventTime(int i) {
        Assertions.checkArgument(i == 0);
        return 0;
    }

    public long getLastEventTime() {
        return 0;
    }

    public List<Cue> getCues(long j) {
        return j >= 0 ? this.cues : Collections.emptyList();
    }
}
