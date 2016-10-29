package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;
import com.google.android.exoplayer.dash.DashSegmentIndex;
import com.google.android.exoplayer.dash.mpd.SegmentBase.MultiSegmentBase;
import com.google.android.exoplayer.dash.mpd.SegmentBase.SingleSegmentBase;

/* compiled from: Twttr */
public abstract class Representation implements FormatWrapper {
    private final String cacheKey;
    public final String contentId;
    public final Format format;
    private final RangedUri initializationUri;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    /* compiled from: Twttr */
    public class MultiSegmentRepresentation extends Representation implements DashSegmentIndex {
        private final MultiSegmentBase segmentBase;

        public MultiSegmentRepresentation(String str, long j, Format format, MultiSegmentBase multiSegmentBase, String str2) {
            super(j, format, multiSegmentBase, str2, null);
            this.segmentBase = multiSegmentBase;
        }

        public RangedUri getIndexUri() {
            return null;
        }

        public DashSegmentIndex getIndex() {
            return this;
        }

        public RangedUri getSegmentUrl(int i) {
            return this.segmentBase.getSegmentUrl(this, i);
        }

        public int getSegmentNum(long j, long j2) {
            return this.segmentBase.getSegmentNum(j, j2);
        }

        public long getTimeUs(int i) {
            return this.segmentBase.getSegmentTimeUs(i);
        }

        public long getDurationUs(int i, long j) {
            return this.segmentBase.getSegmentDurationUs(i, j);
        }

        public int getFirstSegmentNum() {
            return this.segmentBase.getFirstSegmentNum();
        }

        public int getLastSegmentNum(long j) {
            return this.segmentBase.getLastSegmentNum(j);
        }

        public boolean isExplicit() {
            return this.segmentBase.isExplicit();
        }
    }

    /* compiled from: Twttr */
    public class SingleSegmentRepresentation extends Representation {
        public final long contentLength;
        private final RangedUri indexUri;
        private final DashSingleSegmentIndex segmentIndex;
        public final Uri uri;

        public static SingleSegmentRepresentation newInstance(String str, long j, Format format, String str2, long j2, long j3, long j4, long j5, String str3, long j6) {
            return new SingleSegmentRepresentation(str, j, format, new SingleSegmentBase(new RangedUri(str2, null, j2, 1 + (j3 - j2)), 1, 0, str2, j4, (j5 - j4) + 1), str3, j6);
        }

        public SingleSegmentRepresentation(String str, long j, Format format, SingleSegmentBase singleSegmentBase, String str2, long j2) {
            super(j, format, singleSegmentBase, str2, null);
            this.uri = Uri.parse(singleSegmentBase.uri);
            this.indexUri = singleSegmentBase.getIndex();
            this.contentLength = j2;
            this.segmentIndex = this.indexUri != null ? null : new DashSingleSegmentIndex(new RangedUri(singleSegmentBase.uri, null, 0, j2));
        }

        public RangedUri getIndexUri() {
            return this.indexUri;
        }

        public DashSegmentIndex getIndex() {
            return this.segmentIndex;
        }
    }

    public abstract DashSegmentIndex getIndex();

    public abstract RangedUri getIndexUri();

    public static Representation newInstance(String str, long j, Format format, SegmentBase segmentBase) {
        return newInstance(str, j, format, segmentBase, null);
    }

    public static Representation newInstance(String str, long j, Format format, SegmentBase segmentBase, String str2) {
        if (segmentBase instanceof SingleSegmentBase) {
            return new SingleSegmentRepresentation(str, j, format, (SingleSegmentBase) segmentBase, str2, -1);
        } else if (segmentBase instanceof MultiSegmentBase) {
            return new MultiSegmentRepresentation(str, j, format, (MultiSegmentBase) segmentBase, str2);
        } else {
            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
        }
    }

    private Representation(String str, long j, Format format, SegmentBase segmentBase, String str2) {
        this.contentId = str;
        this.revisionId = j;
        this.format = format;
        if (str2 == null) {
            str2 = str + "." + format.id + "." + j;
        }
        this.cacheKey = str2;
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    public Format getFormat() {
        return this.format;
    }

    public RangedUri getInitializationUri() {
        return this.initializationUri;
    }

    public String getCacheKey() {
        return this.cacheKey;
    }
}
