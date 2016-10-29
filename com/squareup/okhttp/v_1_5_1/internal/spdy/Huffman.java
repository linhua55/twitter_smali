package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import defpackage.bdd;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
class Huffman {
    private static final int[] REQUEST_CODES;
    private static final byte[] REQUEST_CODE_LENGTHS;
    private static final int[] RESPONSE_CODES;
    private static final byte[] RESPONSE_CODE_LENGTHS;

    /* compiled from: Twttr */
    enum Codec {
        REQUEST(Huffman.REQUEST_CODES, Huffman.REQUEST_CODE_LENGTHS),
        RESPONSE(Huffman.RESPONSE_CODES, Huffman.RESPONSE_CODE_LENGTHS);
        
        private final int[] codes;
        private final byte[] lengths;
        private final Node root;

        private Codec(int[] iArr, byte[] bArr) {
            this.root = new Node();
            buildTree(iArr, bArr);
            this.codes = iArr;
            this.lengths = bArr;
        }

        void encode(byte[] bArr, OutputStream outputStream) throws IOException {
            int i = 0;
            long j = 0;
            int i2 = 0;
            while (i < bArr.length) {
                int i3 = bArr[i] & NalUnitUtil.EXTENDED_SAR;
                int i4 = this.codes[i3];
                byte b = this.lengths[i3];
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
                j += (long) this.lengths[b & NalUnitUtil.EXTENDED_SAR];
            }
            return (int) ((7 + j) >> 3);
        }

        ByteString decode(ByteString byteString) throws IOException {
            return ByteString.of(decode(byteString.toByteArray()));
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
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.spdy.Huffman.Codec.decode(byte[]):byte[]");
        }

        private void buildTree(int[] iArr, byte[] bArr) {
            for (int i = 0; i < bArr.length; i++) {
                addCode(i, iArr[i], bArr[i]);
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

    Huffman() {
    }

    static {
        REQUEST_CODES = new int[]{134217658, 134217659, 134217660, 134217661, 134217662, 134217663, 134217664, 134217665, 134217666, 134217667, 134217668, 134217669, 134217670, 134217671, 134217672, 134217673, 134217674, 134217675, 134217676, 134217677, 134217678, 134217679, 134217680, 134217681, 134217682, 134217683, 134217684, 134217685, 134217686, 134217687, 134217688, 134217689, 232, 4092, 16378, 32764, 32765, 36, bdd.AppCompatTheme_spinnerStyle, 32766, 2042, 2043, 1018, 2044, 233, 37, 4, 0, 5, 6, 7, 38, 39, 40, 41, 42, 43, 44, 492, 234, 262142, 45, 131068, 493, 16379, bdd.AppCompatTheme_switchStyle, 235, 236, 237, 238, 112, 494, 495, 496, 497, 1019, 498, 239, 499, 500, 501, 502, 503, PsExtractor.VIDEO_STREAM_MASK, 241, 504, 505, 506, 507, 508, 1020, 16380, 134217690, 8188, 16381, 46, 524286, 8, 47, 9, 48, 1, 49, 50, 51, 10, 113, 114, 11, 52, 12, 13, 14, 242, 15, 16, 17, 53, 115, 54, 243, 244, 245, 131069, 2045, 131070, 4093, 134217691, 134217692, 134217693, 134217694, 134217695, 134217696, 134217697, 134217698, 134217699, 134217700, 134217701, 134217702, 134217703, 134217704, 134217705, 134217706, 134217707, 134217708, 134217709, 134217710, 134217711, 134217712, 134217713, 134217714, 134217715, 134217716, 134217717, 134217718, 134217719, 134217720, 134217721, 134217722, 134217723, 134217724, 134217725, 134217726, 134217727, 67108736, 67108737, 67108738, 67108739, 67108740, 67108741, 67108742, 67108743, 67108744, 67108745, 67108746, 67108747, 67108748, 67108749, 67108750, 67108751, 67108752, 67108753, 67108754, 67108755, 67108756, 67108757, 67108758, 67108759, 67108760, 67108761, 67108762, 67108763, 67108764, 67108765, 67108766, 67108767, 67108768, 67108769, 67108770, 67108771, 67108772, 67108773, 67108774, 67108775, 67108776, 67108777, 67108778, 67108779, 67108780, 67108781, 67108782, 67108783, 67108784, 67108785, 67108786, 67108787, 67108788, 67108789, 67108790, 67108791, 67108792, 67108793, 67108794, 67108795, 67108796, 67108797, 67108798, 67108799, 67108800, 67108801, 67108802, 67108803, 67108804, 67108805, 67108806, 67108807, 67108808, 67108809, 67108810, 67108811, 67108812, 67108813, 67108814, 67108815, 67108816, 67108817, 67108818, 67108819, 67108820, 67108821, 67108822, 67108823, 67108824, 67108825, 67108826, 67108827};
        REQUEST_CODE_LENGTHS = new byte[]{(byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 8, (byte) 12, (byte) 14, (byte) 15, (byte) 15, (byte) 6, (byte) 7, (byte) 15, (byte) 11, (byte) 11, (byte) 10, (byte) 11, (byte) 8, (byte) 6, (byte) 5, (byte) 4, (byte) 5, (byte) 5, (byte) 5, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 9, (byte) 8, (byte) 18, (byte) 6, ClosedCaptionCtrl.MID_ROW_CHAN_1, (byte) 9, (byte) 14, (byte) 7, (byte) 8, (byte) 8, (byte) 8, (byte) 8, (byte) 7, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 10, (byte) 9, (byte) 8, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 8, (byte) 8, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 10, (byte) 14, (byte) 27, (byte) 13, (byte) 14, (byte) 6, (byte) 19, (byte) 5, (byte) 6, (byte) 5, (byte) 6, (byte) 4, (byte) 6, (byte) 6, (byte) 6, (byte) 5, (byte) 7, (byte) 7, (byte) 5, (byte) 6, (byte) 5, (byte) 5, (byte) 5, (byte) 8, (byte) 5, (byte) 5, (byte) 5, (byte) 6, (byte) 7, (byte) 6, (byte) 8, (byte) 8, (byte) 8, ClosedCaptionCtrl.MID_ROW_CHAN_1, (byte) 11, ClosedCaptionCtrl.MID_ROW_CHAN_1, (byte) 12, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 27, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26, (byte) 26};
        RESPONSE_CODES = new int[]{33554364, 33554365, 33554366, 33554367, 33554368, 33554369, 33554370, 33554371, 33554372, 33554373, 33554374, 33554375, 33554376, 33554377, 33554378, 33554379, 33554380, 33554381, 33554382, 33554383, 33554384, 33554385, 33554386, 33554387, 33554388, 33554389, 33554390, 33554391, 33554392, 33554393, 33554394, 33554395, 0, 4090, bdd.AppCompatTheme_ratingBarStyle, 8186, 16380, 492, 1016, 8187, 493, 494, 4091, 2042, 34, 35, 36, bdd.AppCompatTheme_ratingBarStyleIndicator, 1, 2, 3, 8, 9, 10, 37, 38, 11, 12, 13, 495, 65530, bdd.AppCompatTheme_ratingBarStyleSmall, 8188, 4092, 65531, bdd.AppCompatTheme_seekBarStyle, 234, 235, 236, 237, 238, 39, 496, 239, PsExtractor.VIDEO_STREAM_MASK, 1017, 497, 40, 241, 242, 498, 1018, 499, 41, 14, 500, 501, 243, 1019, 502, 1020, 2043, 8189, 2044, 32764, 503, 131070, 15, bdd.AppCompatTheme_spinnerStyle, 42, 43, 16, bdd.AppCompatTheme_switchStyle, 112, 113, 44, 504, 505, 114, 45, 46, 47, 48, 506, 49, 50, 51, 52, 115, 244, 116, 245, 507, 65532, 16381, 65533, 65534, 33554396, 33554397, 33554398, 33554399, 33554400, 33554401, 33554402, 33554403, 33554404, 33554405, 33554406, 33554407, 33554408, 33554409, 33554410, 33554411, 33554412, 33554413, 33554414, 33554415, 33554416, 33554417, 33554418, 33554419, 33554420, 33554421, 33554422, 33554423, 33554424, 33554425, 33554426, 33554427, 33554428, 33554429, 33554430, 33554431, 16777088, 16777089, 16777090, 16777091, 16777092, 16777093, 16777094, 16777095, 16777096, 16777097, 16777098, 16777099, 16777100, 16777101, 16777102, 16777103, 16777104, 16777105, 16777106, 16777107, 16777108, 16777109, 16777110, 16777111, 16777112, 16777113, 16777114, 16777115, 16777116, 16777117, 16777118, 16777119, 16777120, 16777121, 16777122, 16777123, 16777124, 16777125, 16777126, 16777127, 16777128, 16777129, 16777130, 16777131, 16777132, 16777133, 16777134, 16777135, 16777136, 16777137, 16777138, 16777139, 16777140, 16777141, 16777142, 16777143, 16777144, 16777145, 16777146, 16777147, 16777148, 16777149, 16777150, 16777151, 16777152, 16777153, 16777154, 16777155, 16777156, 16777157, 16777158, 16777159, 16777160, 16777161, 16777162, 16777163, 16777164, 16777165, 16777166, 16777167, 16777168, 16777169, 16777170, 16777171, 16777172, 16777173, 16777174, 16777175, 16777176, 16777177, 16777178, 16777179, 16777180};
        RESPONSE_CODE_LENGTHS = new byte[]{ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, (byte) 4, (byte) 12, (byte) 7, (byte) 13, (byte) 14, (byte) 9, (byte) 10, (byte) 13, (byte) 9, (byte) 9, (byte) 12, (byte) 11, (byte) 6, (byte) 6, (byte) 6, (byte) 7, (byte) 4, (byte) 4, (byte) 4, (byte) 5, (byte) 5, (byte) 5, (byte) 6, (byte) 6, (byte) 5, (byte) 5, (byte) 5, (byte) 9, (byte) 16, (byte) 7, (byte) 13, (byte) 12, (byte) 16, (byte) 7, (byte) 8, (byte) 8, (byte) 8, (byte) 8, (byte) 8, (byte) 6, (byte) 9, (byte) 8, (byte) 8, (byte) 10, (byte) 9, (byte) 6, (byte) 8, (byte) 8, (byte) 9, (byte) 10, (byte) 9, (byte) 6, (byte) 5, (byte) 9, (byte) 9, (byte) 8, (byte) 10, (byte) 9, (byte) 10, (byte) 11, (byte) 13, (byte) 11, (byte) 15, (byte) 9, ClosedCaptionCtrl.MID_ROW_CHAN_1, (byte) 5, (byte) 7, (byte) 6, (byte) 6, (byte) 5, (byte) 7, (byte) 7, (byte) 7, (byte) 6, (byte) 9, (byte) 9, (byte) 7, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 9, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 7, (byte) 8, (byte) 7, (byte) 8, (byte) 9, (byte) 16, (byte) 14, (byte) 16, (byte) 16, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, ClosedCaptionCtrl.MID_ROW_CHAN_2, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24, (byte) 24};
    }
}
