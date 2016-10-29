package com.google.android.exoplayer.text.eia608;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSourceTrackRenderer;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.TextRenderer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.util.Collections;
import java.util.TreeSet;

/* compiled from: Twttr */
public final class Eia608TrackRenderer extends SampleSourceTrackRenderer implements Callback {
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    private static final int MAX_SAMPLE_READAHEAD_US = 5000000;
    private static final int MSG_INVOKE_RENDERER = 0;
    private String caption;
    private int captionMode;
    private int captionRowCount;
    private final StringBuilder captionStringBuilder;
    private final Eia608Parser eia608Parser;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private String lastRenderedCaption;
    private final TreeSet<ClosedCaptionList> pendingCaptionLists;
    private ClosedCaptionCtrl repeatableControl;
    private final SampleHolder sampleHolder;
    private final TextRenderer textRenderer;
    private final Handler textRendererHandler;

    public Eia608TrackRenderer(SampleSource sampleSource, TextRenderer textRenderer, Looper looper) {
        SampleSource[] sampleSourceArr = new SampleSource[CC_MODE_ROLL_UP];
        sampleSourceArr[CC_MODE_UNKNOWN] = sampleSource;
        super(sampleSourceArr);
        this.textRenderer = (TextRenderer) Assertions.checkNotNull(textRenderer);
        this.textRendererHandler = looper == null ? null : new Handler(looper, this);
        this.eia608Parser = new Eia608Parser();
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(CC_MODE_ROLL_UP);
        this.captionStringBuilder = new StringBuilder();
        this.pendingCaptionLists = new TreeSet();
    }

    protected boolean handlesTrack(MediaFormat mediaFormat) {
        return this.eia608Parser.canParse(mediaFormat.mimeType);
    }

    protected void onEnabled(int i, long j, boolean z) throws ExoPlaybackException {
        super.onEnabled(i, j, z);
    }

    protected void onDiscontinuity(long j) {
        this.inputStreamEnded = false;
        this.repeatableControl = null;
        this.pendingCaptionLists.clear();
        clearPendingSample();
        this.captionRowCount = DEFAULT_CAPTIONS_ROW_COUNT;
        setCaptionMode(CC_MODE_UNKNOWN);
        invokeRenderer(null);
    }

    protected void doSomeWork(long j, long j2, boolean z) throws ExoPlaybackException {
        int i;
        if (isSamplePending()) {
            maybeParsePendingSample(j);
        }
        if (this.inputStreamEnded) {
            i = -1;
        } else {
            i = -3;
        }
        while (!isSamplePending() && r0 == -3) {
            i = readSource(j, this.formatHolder, this.sampleHolder);
            if (i == -3) {
                maybeParsePendingSample(j);
            } else if (i == -1) {
                this.inputStreamEnded = true;
            }
        }
        while (!this.pendingCaptionLists.isEmpty() && ((ClosedCaptionList) this.pendingCaptionLists.first()).timeUs <= j) {
            ClosedCaptionList closedCaptionList = (ClosedCaptionList) this.pendingCaptionLists.pollFirst();
            consumeCaptionList(closedCaptionList);
            if (!closedCaptionList.decodeOnly) {
                invokeRenderer(this.caption);
            }
        }
    }

    protected long getBufferedPositionUs() {
        return -3;
    }

    protected boolean isEnded() {
        return this.inputStreamEnded;
    }

    protected boolean isReady() {
        return true;
    }

    private void invokeRenderer(String str) {
        if (!Util.areEqual(this.lastRenderedCaption, str)) {
            this.lastRenderedCaption = str;
            if (this.textRendererHandler != null) {
                this.textRendererHandler.obtainMessage(CC_MODE_UNKNOWN, str).sendToTarget();
            } else {
                invokeRendererInternal(str);
            }
        }
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case CC_MODE_UNKNOWN /*0*/:
                invokeRendererInternal((String) message.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(String str) {
        if (str == null) {
            this.textRenderer.onCues(Collections.emptyList());
        } else {
            this.textRenderer.onCues(Collections.singletonList(new Cue(str)));
        }
    }

    private void maybeParsePendingSample(long j) {
        if (this.sampleHolder.timeUs <= 5000000 + j) {
            ClosedCaptionList parse = this.eia608Parser.parse(this.sampleHolder);
            clearPendingSample();
            if (parse != null) {
                this.pendingCaptionLists.add(parse);
            }
        }
    }

    private void consumeCaptionList(ClosedCaptionList closedCaptionList) {
        int length = closedCaptionList.captions.length;
        if (length != 0) {
            int i = CC_MODE_UNKNOWN;
            Object obj = CC_MODE_UNKNOWN;
            while (i < length) {
                Object obj2;
                ClosedCaption closedCaption = closedCaptionList.captions[i];
                if (closedCaption.type == 0) {
                    ClosedCaptionCtrl closedCaptionCtrl = (ClosedCaptionCtrl) closedCaption;
                    if (length == CC_MODE_ROLL_UP && closedCaptionCtrl.isRepeatable()) {
                        obj = CC_MODE_ROLL_UP;
                    } else {
                        obj = CC_MODE_UNKNOWN;
                    }
                    if (obj == null || this.repeatableControl == null || this.repeatableControl.cc1 != closedCaptionCtrl.cc1 || this.repeatableControl.cc2 != closedCaptionCtrl.cc2) {
                        if (obj != null) {
                            this.repeatableControl = closedCaptionCtrl;
                        }
                        if (closedCaptionCtrl.isMiscCode()) {
                            handleMiscCode(closedCaptionCtrl);
                        } else if (closedCaptionCtrl.isPreambleAddressCode()) {
                            handlePreambleAddressCode();
                        }
                        obj2 = obj;
                    } else {
                        this.repeatableControl = null;
                        obj2 = obj;
                    }
                } else {
                    handleText((ClosedCaptionText) closedCaption);
                    obj2 = obj;
                }
                i += CC_MODE_ROLL_UP;
                obj = obj2;
            }
            if (obj == null) {
                this.repeatableControl = null;
            }
            if (this.captionMode == CC_MODE_ROLL_UP || this.captionMode == CC_MODE_PAINT_ON) {
                this.caption = getDisplayCaption();
            }
        }
    }

    private void handleText(ClosedCaptionText closedCaptionText) {
        if (this.captionMode != 0) {
            this.captionStringBuilder.append(closedCaptionText.text);
        }
    }

    private void handleMiscCode(ClosedCaptionCtrl closedCaptionCtrl) {
        switch (closedCaptionCtrl.cc2) {
            case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                setCaptionMode(CC_MODE_POP_ON);
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                this.captionRowCount = CC_MODE_POP_ON;
                setCaptionMode(CC_MODE_ROLL_UP);
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                this.captionRowCount = CC_MODE_PAINT_ON;
                setCaptionMode(CC_MODE_ROLL_UP);
            case bdd.AppCompatTheme_actionModePopupWindowStyle /*39*/:
                this.captionRowCount = DEFAULT_CAPTIONS_ROW_COUNT;
                setCaptionMode(CC_MODE_ROLL_UP);
            case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                setCaptionMode(CC_MODE_PAINT_ON);
            default:
                if (this.captionMode != 0) {
                    switch (closedCaptionCtrl.cc2) {
                        case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                            if (this.captionStringBuilder.length() > 0) {
                                this.captionStringBuilder.setLength(this.captionStringBuilder.length() - 1);
                            }
                        case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                            this.caption = null;
                            if (this.captionMode == CC_MODE_ROLL_UP || this.captionMode == CC_MODE_PAINT_ON) {
                                this.captionStringBuilder.setLength(CC_MODE_UNKNOWN);
                            }
                        case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                            maybeAppendNewline();
                        case bdd.AppCompatTheme_dropdownListPreferredItemHeight /*46*/:
                            this.captionStringBuilder.setLength(CC_MODE_UNKNOWN);
                        case bdd.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                            this.caption = getDisplayCaption();
                            this.captionStringBuilder.setLength(CC_MODE_UNKNOWN);
                        default:
                    }
                }
        }
    }

    private void handlePreambleAddressCode() {
        maybeAppendNewline();
    }

    private void setCaptionMode(int i) {
        if (this.captionMode != i) {
            this.captionMode = i;
            this.captionStringBuilder.setLength(CC_MODE_UNKNOWN);
            if (i == CC_MODE_ROLL_UP || i == 0) {
                this.caption = null;
            }
        }
    }

    private void maybeAppendNewline() {
        int length = this.captionStringBuilder.length();
        if (length > 0 && this.captionStringBuilder.charAt(length - 1) != '\n') {
            this.captionStringBuilder.append('\n');
        }
    }

    private String getDisplayCaption() {
        int length = this.captionStringBuilder.length();
        if (length == 0) {
            return null;
        }
        int i;
        if (this.captionStringBuilder.charAt(length - 1) == '\n') {
            i = CC_MODE_ROLL_UP;
        } else {
            i = CC_MODE_UNKNOWN;
        }
        if (length == CC_MODE_ROLL_UP && i != 0) {
            return null;
        }
        if (i != 0) {
            length--;
        }
        if (this.captionMode != CC_MODE_ROLL_UP) {
            return this.captionStringBuilder.substring(CC_MODE_UNKNOWN, length);
        }
        int i2;
        i = length;
        for (i2 = CC_MODE_UNKNOWN; i2 < this.captionRowCount && i != -1; i2 += CC_MODE_ROLL_UP) {
            i = this.captionStringBuilder.lastIndexOf("\n", i - 1);
        }
        if (i != -1) {
            i2 = i + CC_MODE_ROLL_UP;
        } else {
            i2 = CC_MODE_UNKNOWN;
        }
        this.captionStringBuilder.delete(CC_MODE_UNKNOWN, i2);
        return this.captionStringBuilder.substring(CC_MODE_UNKNOWN, length - i2);
    }

    private void clearPendingSample() {
        this.sampleHolder.timeUs = -1;
        this.sampleHolder.clearData();
    }

    private boolean isSamplePending() {
        return this.sampleHolder.timeUs != -1;
    }
}
