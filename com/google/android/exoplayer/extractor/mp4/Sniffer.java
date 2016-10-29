package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* compiled from: Twttr */
final class Sniffer {
    private static final int[] COMPATIBLE_BRANDS;
    private static final int SEARCH_LENGTH = 4096;

    static {
        COMPATIBLE_BRANDS = new int[]{Util.getIntegerCodeForString("isom"), Util.getIntegerCodeForString("iso2"), Util.getIntegerCodeForString("iso3"), Util.getIntegerCodeForString("iso4"), Util.getIntegerCodeForString("iso5"), Util.getIntegerCodeForString("iso6"), Util.getIntegerCodeForString("avc1"), Util.getIntegerCodeForString("hvc1"), Util.getIntegerCodeForString("hev1"), Util.getIntegerCodeForString("mp41"), Util.getIntegerCodeForString("mp42"), Util.getIntegerCodeForString("3g2a"), Util.getIntegerCodeForString("3g2b"), Util.getIntegerCodeForString("3gr6"), Util.getIntegerCodeForString("3gs6"), Util.getIntegerCodeForString("3ge6"), Util.getIntegerCodeForString("3gg6"), Util.getIntegerCodeForString("M4V "), Util.getIntegerCodeForString("M4A "), Util.getIntegerCodeForString("f4v "), Util.getIntegerCodeForString("kddi"), Util.getIntegerCodeForString("M4VP"), Util.getIntegerCodeForString("qt  "), Util.getIntegerCodeForString("MSNV")};
    }

    public static boolean sniffFragmented(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return sniffInternal(extractorInput, true);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) throws IOException, InterruptedException {
        return sniffInternal(extractorInput, false);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z) throws IOException, InterruptedException {
        long length = extractorInput.getLength();
        if (length == -1 || length > 4096) {
            length = 4096;
        }
        int i = (int) length;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        Object obj = null;
        boolean z2 = false;
        int i2 = 0;
        while (i2 < i) {
            int i3 = 8;
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int readInt = parsableByteArray.readInt();
            if (readUnsignedInt == 1) {
                i3 = 16;
                extractorInput.peekFully(parsableByteArray.data, 8, 8);
                readUnsignedInt = parsableByteArray.readUnsignedLongToLong();
            }
            if (readUnsignedInt >= ((long) i3)) {
                i2 += i3;
                if (readInt != Atom.TYPE_moov) {
                    if (readInt != Atom.TYPE_moof && readInt != Atom.TYPE_mvex) {
                        if ((((long) i2) + readUnsignedInt) - ((long) i3) >= ((long) i)) {
                            break;
                        }
                        int i4 = (int) (readUnsignedInt - ((long) i3));
                        int i5 = i2 + i4;
                        if (readInt == Atom.TYPE_ftyp) {
                            if (i4 < 8) {
                                return false;
                            }
                            if (parsableByteArray.capacity() < i4) {
                                parsableByteArray.reset(new byte[i4], i4);
                            }
                            extractorInput.peekFully(parsableByteArray.data, 0, i4);
                            i3 = i4 / 4;
                            for (i4 = 0; i4 < i3; i4++) {
                                if (i4 == 1) {
                                    parsableByteArray.skipBytes(4);
                                } else if (isCompatibleBrand(parsableByteArray.readInt())) {
                                    obj = 1;
                                    break;
                                }
                            }
                            if (obj == null) {
                                return false;
                            }
                        } else if (i4 != 0) {
                            extractorInput.advancePeekPosition(i4);
                        }
                        i2 = i5;
                    } else {
                        z2 = true;
                        break;
                    }
                }
            } else {
                return false;
            }
        }
        if (obj == null || z != r1) {
            return false;
        }
        return true;
    }

    private static boolean isCompatibleBrand(int i) {
        if ((i >>> 8) == Util.getIntegerCodeForString("3gp")) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
