package com.google.android.exoplayer.text.subrip;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
final class SubripSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;

    public SubripSubtitle(Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }

    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.cueTimesUs, j, false, false);
        return binarySearchCeil < this.cueTimesUs.length ? binarySearchCeil : -1;
    }

    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    public long getEventTime(int i) {
        boolean z;
        boolean z2 = true;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z);
        if (i >= this.cueTimesUs.length) {
            z2 = false;
        }
        Assertions.checkArgument(z2);
        return this.cueTimesUs[i];
    }

    public long getLastEventTime() {
        if (getEventTimeCount() == 0) {
            return -1;
        }
        return this.cueTimesUs[this.cueTimesUs.length - 1];
    }

    public List<Cue> getCues(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.cueTimesUs, j, true, false);
        if (binarySearchFloor == -1 || this.cues[binarySearchFloor] == null) {
            return Collections.emptyList();
        }
        return Collections.singletonList(this.cues[binarySearchFloor]);
    }
}
