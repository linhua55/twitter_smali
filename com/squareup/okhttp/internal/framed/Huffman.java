package com.squareup.okhttp.internal.framed;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.util.NalUnitUtil;
import defpackage.bdd;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
class Huffman {
    private static final int[] CODES;
    private static final byte[] CODE_LENGTHS;
    private static final Huffman INSTANCE;
    private final Node root;

    /* compiled from: Twttr */
    final class Node {
        private final Node[] children;
        private final int symbol;
        private final int terminalBits;

        Node() {
            this.children = new Node[256];
            this.symbol = 0;
            this.terminalBits = 0;
        }

        Node(int i, int i2) {
            this.children = null;
            this.symbol = i;
            int i3 = i2 & 7;
            if (i3 == 0) {
                i3 = 8;
            }
            this.terminalBits = i3;
        }
    }

    static {
        CODES = new int[]{8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, bdd.AppCompatTheme_buttonStyleSmall, bdd.AppCompatTheme_checkboxStyle, bdd.AppCompatTheme_checkedTextViewStyle, bdd.AppCompatTheme_editTextStyle, bdd.AppCompatTheme_radioButtonStyle, bdd.AppCompatTheme_ratingBarStyle, bdd.AppCompatTheme_ratingBarStyleIndicator, bdd.AppCompatTheme_ratingBarStyleSmall, bdd.AppCompatTheme_seekBarStyle, bdd.AppCompatTheme_spinnerStyle, bdd.AppCompatTheme_switchStyle, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};
        CODE_LENGTHS = new byte[]{(byte) 13, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 24, (byte) 30, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 30, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 30, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 6, (byte) 10, (byte) 10, (byte) 12, (byte) 13, (byte) 6, (byte) 8, (byte) 11, (byte) 10, (byte) 10, (byte) 8, (byte) 11, (byte) 8, (byte) 6, (byte) 6, (byte) 6, (byte) 5, (byte) 5, (byte) 5, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 7, (byte) 8, (byte) 15, (byte) 6, (byte) 12, (byte) 10, (byte) 13, (byte) 6, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 8, (byte) 7, (byte) 8, (byte) 13, (byte) 19, (byte) 13, (byte) 14, (byte) 6, (byte) 15, (byte) 5, (byte) 6, (byte) 5, (byte) 6, (byte) 5, (byte) 6, (byte) 6, (byte) 6, (byte) 5, (byte) 7, (byte) 7, (byte) 6, (byte) 6, (byte) 6, (byte) 5, (byte) 6, (byte) 7, (byte) 6, (byte) 5, (byte) 5, (byte) 6, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 7, (byte) 15, (byte) 11, (byte) 14, (byte) 13, ClosedCaptionCtrl.MISC_CHAN_2, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 22, ClosedCaptionCtrl.MISC_CHAN_1, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 22, (byte) 22, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 24, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 24, (byte) 24, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 24, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 21, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 24, (byte) 22, (byte) 21, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 22, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 21, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, (byte) 22, (byte) 24, (byte) 21, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 21, (byte) 21, (byte) 22, (byte) 21, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 22, (byte) 22, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 26, (byte) 26, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 19, (byte) 22, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, ClosedCaptionCtrl.MID_ROW_CHAN_2, (byte) 26, (byte) 26, (byte) 26, (byte) 27, (byte) 27, (byte) 26, (byte) 24, ClosedCaptionCtrl.MID_ROW_CHAN_2, (byte) 19, (byte) 21, (byte) 26, (byte) 27, (byte) 27, (byte) 26, (byte) 27, (byte) 24, (byte) 21, (byte) 21, (byte) 26, (byte) 26, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 27, (byte) 27, (byte) 27, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 24, ClosedCaptionCtrl.MISC_CHAN_1, (byte) 21, (byte) 22, (byte) 21, (byte) 21, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 22, (byte) 22, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, (byte) 24, (byte) 24, (byte) 26, ClosedCaptionCtrl.TAB_OFFSET_CHAN_1, (byte) 26, (byte) 27, (byte) 26, (byte) 26, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, ClosedCaptionCtrl.MISC_CHAN_2, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 26};
        INSTANCE = new Huffman();
    }

    public static Huffman get() {
        return INSTANCE;
    }

    private Huffman() {
        this.root = new Node();
        buildTree();
    }

    void encode(byte[] bArr, OutputStream outputStream) throws IOException {
        int i = 0;
        long j = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = bArr[i] & NalUnitUtil.EXTENDED_SAR;
            int i4 = CODES[i3];
            byte b = CODE_LENGTHS[i3];
            j = (j << b) | ((long) i4);
            i2 += b;
            while (i2 >= 8) {
                i2 -= 8;
                outputStream.write((int) (j >> i2));
            }
            i++;
        }
        if (i2 > 0) {
            outputStream.write((int) (((long) (NalUnitUtil.EXTENDED_SAR >>> i2)) | (j << (8 - i2))));
        }
    }

    int encodedLength(byte[] bArr) {
        long j = 0;
        for (byte b : bArr) {
            j += (long) CODE_LENGTHS[b & NalUnitUtil.EXTENDED_SAR];
        }
        return (int) ((7 + j) >> 3);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    byte[] decode(byte[] r7) throws java.io.IOException {
        /*
        r6 = this;
        r0 = 0;
        r4 = new java.io.ByteArrayOutputStream;
        r4.<init>();
        r1 = r6.root;
        r2 = r0;
        r3 = r1;
        r1 = r0;
    L_0x000b:
        r5 = r7.length;
        if (r0 >= r5) goto L_0x0050;
    L_0x000e:
        r5 = r7[r0];
        r5 = r5 & 255;
        r2 = r2 << 8;
        r2 = r2 | r5;
        r1 = r1 + 8;
    L_0x0017:
        r5 = 8;
        if (r1 < r5) goto L_0x003f;
    L_0x001b:
        r5 = r1 + -8;
        r5 = r2 >>> r5;
        r5 = r5 & 255;
        r3 = r3.children;
        r3 = r3[r5];
        r5 = r3.children;
        if (r5 != 0) goto L_0x003c;
    L_0x002d:
        r5 = r3.symbol;
        r4.write(r5);
        r3 = r3.terminalBits;
        r1 = r1 - r3;
        r3 = r6.root;
        goto L_0x0017;
    L_0x003c:
        r1 = r1 + -8;
        goto L_0x0017;
    L_0x003f:
        r0 = r0 + 1;
        goto L_0x000b;
    L_0x0042:
        r3 = r0.symbol;
        r4.write(r3);
        r0 = r0.terminalBits;
        r1 = r1 - r0;
        r3 = r6.root;
    L_0x0050:
        if (r1 <= 0) goto L_0x006a;
    L_0x0052:
        r0 = 8 - r1;
        r0 = r2 << r0;
        r0 = r0 & 255;
        r3 = r3.children;
        r0 = r3[r0];
        r3 = r0.children;
        if (r3 != 0) goto L_0x006a;
    L_0x0064:
        r3 = r0.terminalBits;
        if (r3 <= r1) goto L_0x0042;
    L_0x006a:
        r0 = r4.toByteArray();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.Huffman.decode(byte[]):byte[]");
    }

    private void buildTree() {
        for (int i = 0; i < CODE_LENGTHS.length; i++) {
            addCode(i, CODES[i], CODE_LENGTHS[i]);
        }
    }

    private void addCode(int i, int i2, byte b) {
        int i3;
        Node node = new Node(i, b);
        Node node2 = this.root;
        while (b > 8) {
            b = (byte) (b - 8);
            i3 = (i2 >>> b) & NalUnitUtil.EXTENDED_SAR;
            if (node2.children == null) {
                throw new IllegalStateException("invalid dictionary: prefix not unique");
            }
            if (node2.children[i3] == null) {
                node2.children[i3] = new Node();
            }
            node2 = node2.children[i3];
        }
        i3 = 8 - b;
        int i4 = (i2 << i3) & NalUnitUtil.EXTENDED_SAR;
        int i5 = 1 << i3;
        for (i3 = i4; i3 < i4 + i5; i3++) {
            node2.children[i3] = node;
        }
    }
}
