package com.google.android.exoplayer.text.webvtt;

import android.text.Layout.Alignment;
import android.util.Log;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
final class WebvttCue extends Cue {
    public final long endTime;
    public final long startTime;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.text.webvtt.WebvttCue.1 */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$text$Layout$Alignment;

        static {
            $SwitchMap$android$text$Layout$Alignment = new int[Alignment.values().length];
            try {
                $SwitchMap$android$text$Layout$Alignment[Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$text$Layout$Alignment[Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* compiled from: Twttr */
    public final class Builder {
        private static final String TAG = "WebvttCueBuilder";
        private long endTime;
        private float line;
        private int lineAnchor;
        private int lineType;
        private float position;
        private int positionAnchor;
        private long startTime;
        private CharSequence text;
        private Alignment textAlignment;
        private float width;

        public Builder() {
            reset();
        }

        public void reset() {
            this.startTime = 0;
            this.endTime = 0;
            this.text = null;
            this.textAlignment = null;
            this.line = Cue.DIMEN_UNSET;
            this.lineType = Cue.TYPE_UNSET;
            this.lineAnchor = Cue.TYPE_UNSET;
            this.position = Cue.DIMEN_UNSET;
            this.positionAnchor = Cue.TYPE_UNSET;
            this.width = Cue.DIMEN_UNSET;
        }

        public WebvttCue build() {
            if (this.position != Cue.DIMEN_UNSET && this.positionAnchor == Cue.TYPE_UNSET) {
                derivePositionAnchorFromAlignment();
            }
            return new WebvttCue(this.startTime, this.endTime, this.text, this.textAlignment, this.line, this.lineType, this.lineAnchor, this.position, this.positionAnchor, this.width);
        }

        public Builder setStartTime(long j) {
            this.startTime = j;
            return this;
        }

        public Builder setEndTime(long j) {
            this.endTime = j;
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            this.text = charSequence;
            return this;
        }

        public Builder setTextAlignment(Alignment alignment) {
            this.textAlignment = alignment;
            return this;
        }

        public Builder setLine(float f) {
            this.line = f;
            return this;
        }

        public Builder setLineType(int i) {
            this.lineType = i;
            return this;
        }

        public Builder setLineAnchor(int i) {
            this.lineAnchor = i;
            return this;
        }

        public Builder setPosition(float f) {
            this.position = f;
            return this;
        }

        public Builder setPositionAnchor(int i) {
            this.positionAnchor = i;
            return this;
        }

        public Builder setWidth(float f) {
            this.width = f;
            return this;
        }

        private Builder derivePositionAnchorFromAlignment() {
            if (this.textAlignment != null) {
                switch (AnonymousClass1.$SwitchMap$android$text$Layout$Alignment[this.textAlignment.ordinal()]) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        this.positionAnchor = 0;
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        this.positionAnchor = 1;
                        break;
                    case Util.TYPE_OTHER /*3*/:
                        this.positionAnchor = 2;
                        break;
                    default:
                        Log.w(TAG, "Unrecognized alignment: " + this.textAlignment);
                        this.positionAnchor = 0;
                        break;
                }
            }
            this.positionAnchor = Cue.TYPE_UNSET;
            return this;
        }
    }

    public WebvttCue(CharSequence charSequence) {
        this(0, 0, charSequence);
    }

    public WebvttCue(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Cue.DIMEN_UNSET, Cue.TYPE_UNSET, Cue.TYPE_UNSET, Cue.DIMEN_UNSET, Cue.TYPE_UNSET, Cue.DIMEN_UNSET);
    }

    public WebvttCue(long j, long j2, CharSequence charSequence, Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        super(charSequence, alignment, f, i, i2, f2, i3, f3);
        this.startTime = j;
        this.endTime = j2;
    }

    public boolean isNormalCue() {
        return this.line == Cue.DIMEN_UNSET && this.position == Cue.DIMEN_UNSET;
    }
}
