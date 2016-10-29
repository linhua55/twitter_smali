package com.google.android.exoplayer.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.GaplessInfo;
import com.google.android.exoplayer.extractor.mp4.FixedSampleSizeRechunker.Results;
import com.google.android.exoplayer.util.Ac3Util;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
final class AtomParsers {

    /* compiled from: Twttr */
    final class AvcCData {
        public final List<byte[]> initializationData;
        public final int nalUnitLengthFieldLength;
        public final float pixelWidthAspectRatio;

        public AvcCData(List<byte[]> list, int i, float f) {
            this.initializationData = list;
            this.nalUnitLengthFieldLength = i;
            this.pixelWidthAspectRatio = f;
        }
    }

    /* compiled from: Twttr */
    final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            boolean z2 = true;
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            if (parsableByteArray.readInt() != 1) {
                z2 = false;
            }
            Assertions.checkState(z2, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                i = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i;
                this.nextSamplesPerChunkChangeIndex = i > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    /* compiled from: Twttr */
    final class StsdData {
        public MediaFormat mediaFormat;
        public int nalUnitLengthFieldLength;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
            this.nalUnitLengthFieldLength = -1;
        }
    }

    /* compiled from: Twttr */
    final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    public static Track parseTrak(ContainerAtom containerAtom, LeafAtom leafAtom, long j, boolean z) {
        ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int parseHdlr = parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data);
        if (parseHdlr != Track.TYPE_soun && parseHdlr != Track.TYPE_vide && parseHdlr != Track.TYPE_text && parseHdlr != Track.TYPE_sbtl && parseHdlr != Track.TYPE_subt) {
            return null;
        }
        long access$000;
        long j2;
        TkhdData parseTkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        if (j == -1) {
            access$000 = parseTkhd.duration;
        } else {
            access$000 = j;
        }
        long parseMvhd = parseMvhd(leafAtom.data);
        if (access$000 == -1) {
            j2 = -1;
        } else {
            j2 = Util.scaleLargeTimestamp(access$000, C.MICROS_PER_SECOND, parseMvhd);
        }
        ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair parseMdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData parseStsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, parseTkhd.id, j2, parseTkhd.rotationDegrees, (String) parseMdhd.second, z);
        Pair parseEdts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
        if (parseStsd.mediaFormat == null) {
            return null;
        }
        return new Track(parseTkhd.id, parseHdlr, ((Long) parseMdhd.first).longValue(), parseMvhd, j2, parseStsd.mediaFormat, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, (long[]) parseEdts.first, (long[]) parseEdts.second);
    }

    public static TrackSampleTable parseStbl(Track track, ContainerAtom containerAtom) throws ParserException {
        ParsableByteArray parsableByteArray = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz).data;
        boolean z = false;
        LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType == null) {
            z = true;
            leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType.data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray5 = leafAtomOfType != null ? leafAtomOfType.data : null;
        LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray6 = leafAtomOfType2 != null ? leafAtomOfType2.data : null;
        parsableByteArray.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        int readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt2 == 0) {
            return new TrackSampleTable(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        Object obj;
        long[] jArr;
        Object obj2;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray3, parsableByteArray2, z);
        parsableByteArray4.setPosition(12);
        int readUnsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt4 = parsableByteArray4.readUnsignedIntToInt();
        int readUnsignedIntToInt5 = parsableByteArray4.readUnsignedIntToInt();
        int i5 = 0;
        if (parsableByteArray6 != null) {
            parsableByteArray6.setPosition(12);
            i5 = parsableByteArray6.readUnsignedIntToInt();
        }
        int i6 = -1;
        int i7 = 0;
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            i7 = parsableByteArray5.readUnsignedIntToInt();
            i6 = parsableByteArray5.readUnsignedIntToInt() - 1;
        }
        Object obj3 = (readUnsignedIntToInt != 0 && MimeTypes.AUDIO_RAW.equals(track.mediaFormat.mimeType) && readUnsignedIntToInt3 == 0 && i5 == 0 && i7 == 0) ? 1 : null;
        int i8 = 0;
        if (obj3 == null) {
            boolean z2;
            Object obj4 = new long[readUnsignedIntToInt2];
            Object obj5 = new int[readUnsignedIntToInt2];
            long[] jArr2 = new long[readUnsignedIntToInt2];
            Object obj6 = new int[readUnsignedIntToInt2];
            j = 0;
            int i9 = 0;
            long j2 = 0;
            i = readUnsignedIntToInt5;
            i2 = readUnsignedIntToInt3;
            readUnsignedIntToInt3 = readUnsignedIntToInt4;
            readUnsignedIntToInt4 = 0;
            i3 = 0;
            i4 = i5;
            i5 = 0;
            while (readUnsignedIntToInt4 < readUnsignedIntToInt2) {
                long j3 = j;
                int i10 = i9;
                while (i10 == 0) {
                    Assertions.checkState(chunkIterator.moveNext());
                    j3 = chunkIterator.offset;
                    i10 = chunkIterator.numSamples;
                }
                if (parsableByteArray6 != null) {
                    while (i5 == 0 && i4 > 0) {
                        i5 = parsableByteArray6.readUnsignedIntToInt();
                        i3 = parsableByteArray6.readInt();
                        i4--;
                    }
                    i5--;
                }
                obj4[readUnsignedIntToInt4] = j3;
                obj5[readUnsignedIntToInt4] = readUnsignedIntToInt == 0 ? parsableByteArray.readUnsignedIntToInt() : readUnsignedIntToInt;
                if (obj5[readUnsignedIntToInt4] > i8) {
                    i9 = obj5[readUnsignedIntToInt4];
                } else {
                    i9 = i8;
                }
                jArr2[readUnsignedIntToInt4] = ((long) i3) + j2;
                obj6[readUnsignedIntToInt4] = parsableByteArray5 == null ? 1 : 0;
                if (readUnsignedIntToInt4 == i6) {
                    obj6[readUnsignedIntToInt4] = 1;
                    i8 = i7 - 1;
                    if (i8 > 0) {
                        i6 = parsableByteArray5.readUnsignedIntToInt() - 1;
                        i7 = i8;
                    } else {
                        i7 = i8;
                    }
                }
                j2 += (long) i;
                i8 = readUnsignedIntToInt3 - 1;
                if (i8 != 0 || i2 <= 0) {
                    int i11 = i;
                    i = i8;
                    i8 = i11;
                } else {
                    i = parsableByteArray4.readUnsignedIntToInt();
                    i8 = parsableByteArray4.readUnsignedIntToInt();
                    i2--;
                }
                long j4 = (long) obj5[readUnsignedIntToInt4];
                readUnsignedIntToInt4++;
                readUnsignedIntToInt3 = i;
                i = i8;
                i8 = i9;
                i9 = i10 - 1;
                j = j3 + r0;
            }
            Assertions.checkArgument(i5 == 0);
            while (i4 > 0) {
                Assertions.checkArgument(parsableByteArray6.readUnsignedIntToInt() == 0);
                parsableByteArray6.readInt();
                i4--;
            }
            Assertions.checkArgument(i7 == 0);
            Assertions.checkArgument(readUnsignedIntToInt3 == 0);
            Assertions.checkArgument(i9 == 0);
            if (i2 == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            Assertions.checkArgument(z2);
            obj = obj6;
            jArr = jArr2;
            i4 = i8;
            obj2 = obj5;
            obj3 = obj4;
        } else {
            long[] jArr3 = new long[chunkIterator.length];
            int[] iArr = new int[chunkIterator.length];
            while (chunkIterator.moveNext()) {
                jArr3[chunkIterator.index] = chunkIterator.offset;
                iArr[chunkIterator.index] = chunkIterator.numSamples;
            }
            Results rechunk = FixedSampleSizeRechunker.rechunk(readUnsignedIntToInt, jArr3, iArr, (long) readUnsignedIntToInt5);
            obj3 = rechunk.offsets;
            obj2 = rechunk.sizes;
            i4 = rechunk.maximumSize;
            jArr = rechunk.timestamps;
            obj = rechunk.flags;
        }
        if (track.editListDurations == null) {
            Util.scaleLargeTimestampsInPlace(jArr, C.MICROS_PER_SECOND, track.timescale);
            return new TrackSampleTable(obj3, obj2, i4, jArr, obj);
        } else if (track.editListDurations.length == 1 && track.editListDurations[0] == 0) {
            for (r2 = 0; r2 < jArr.length; r2++) {
                jArr[r2] = Util.scaleLargeTimestamp(jArr[r2] - track.editListMediaTimes[0], C.MICROS_PER_SECOND, track.timescale);
            }
            return new TrackSampleTable(obj3, obj2, i4, jArr, obj);
        } else {
            long scaleLargeTimestamp;
            Object obj7;
            Object obj8;
            Object obj9;
            r2 = 0;
            int i12 = 0;
            int i13 = 0;
            i7 = 0;
            while (r2 < track.editListDurations.length) {
                j = track.editListMediaTimes[r2];
                if (j != -1) {
                    scaleLargeTimestamp = Util.scaleLargeTimestamp(track.editListDurations[r2], track.timescale, track.movieTimescale);
                    i2 = Util.binarySearchCeil(jArr, j, true, true);
                    i8 = Util.binarySearchCeil(jArr, scaleLargeTimestamp + j, true, false);
                    i = i7 + (i8 - i2);
                    if (i13 != i2) {
                        readUnsignedIntToInt = 1;
                    } else {
                        readUnsignedIntToInt = 0;
                    }
                    readUnsignedIntToInt |= i12;
                } else {
                    readUnsignedIntToInt = i12;
                    i8 = i13;
                    i = i7;
                }
                r2++;
                i12 = readUnsignedIntToInt;
                i13 = i8;
                i7 = i;
            }
            readUnsignedIntToInt3 = i12 | (i7 != readUnsignedIntToInt2 ? 1 : 0);
            if (readUnsignedIntToInt3 != 0) {
                obj7 = new long[i7];
            } else {
                obj7 = obj3;
            }
            if (readUnsignedIntToInt3 != 0) {
                obj8 = new int[i7];
            } else {
                obj8 = obj2;
            }
            if (readUnsignedIntToInt3 != 0) {
                i = 0;
            } else {
                i = i4;
            }
            if (readUnsignedIntToInt3 != 0) {
                obj9 = new int[i7];
            } else {
                obj9 = obj;
            }
            long[] jArr4 = new long[i7];
            r2 = 0;
            i12 = 0;
            j = 0;
            i4 = i;
            while (r2 < track.editListDurations.length) {
                long j5 = track.editListMediaTimes[r2];
                scaleLargeTimestamp = track.editListDurations[r2];
                if (j5 != -1) {
                    long scaleLargeTimestamp2 = j5 + Util.scaleLargeTimestamp(scaleLargeTimestamp, track.timescale, track.movieTimescale);
                    i = Util.binarySearchCeil(jArr, j5, true, true);
                    int binarySearchCeil = Util.binarySearchCeil(jArr, scaleLargeTimestamp2, true, false);
                    if (readUnsignedIntToInt3 != 0) {
                        i2 = binarySearchCeil - i;
                        System.arraycopy(obj3, i, obj7, i12, i2);
                        System.arraycopy(obj2, i, obj8, i12, i2);
                        System.arraycopy(obj, i, obj9, i12, i2);
                    }
                    i7 = i12;
                    for (int i14 = i; i14 < binarySearchCeil; i14++) {
                        jArr4[i7] = Util.scaleLargeTimestamp(jArr[i14] - j5, C.MICROS_PER_SECOND, track.timescale) + Util.scaleLargeTimestamp(j, C.MICROS_PER_SECOND, track.movieTimescale);
                        if (readUnsignedIntToInt3 != 0 && obj8[i7] > i4) {
                            i4 = obj2[i14];
                        }
                        i7++;
                    }
                    i = i4;
                    i4 = i7;
                } else {
                    i = i4;
                    i4 = i12;
                }
                r2++;
                i12 = i4;
                j = scaleLargeTimestamp + j;
                i4 = i;
            }
            i3 = 0;
            for (r2 = 0; r2 < obj9.length && i3 == 0; r2++) {
                i3 |= (obj9[r2] & 1) != 0 ? 1 : 0;
            }
            if (i3 != 0) {
                return new TrackSampleTable(obj7, obj8, i4, jArr4, obj9);
            }
            throw new ParserException("The edited sample sequence does not contain a sync sample.");
        }
    }

    public static GaplessInfo parseUdta(LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(parsableByteArray.getPosition() - 8);
                parsableByteArray.setLimit(parsableByteArray.getPosition() + readInt);
                return parseMetaAtom(parsableByteArray);
            }
            parsableByteArray.skipBytes(readInt - 8);
        }
        return null;
    }

    private static GaplessInfo parseMetaAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(12);
        ParsableByteArray parsableByteArray2 = new ParsableByteArray();
        while (parsableByteArray.bytesLeft() >= 8) {
            int readInt = parsableByteArray.readInt() - 8;
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray2.reset(parsableByteArray.data, parsableByteArray.getPosition() + readInt);
                parsableByteArray2.setPosition(parsableByteArray.getPosition());
                GaplessInfo parseIlst = parseIlst(parsableByteArray2);
                if (parseIlst != null) {
                    return parseIlst;
                }
            }
            parsableByteArray.skipBytes(readInt);
        }
        return null;
    }

    private static GaplessInfo parseIlst(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition() + parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_DASHES) {
                String str = null;
                String str2 = null;
                Object obj = null;
                while (parsableByteArray.getPosition() < position) {
                    int readInt = parsableByteArray.readInt() - 12;
                    int readInt2 = parsableByteArray.readInt();
                    parsableByteArray.skipBytes(4);
                    if (readInt2 == Atom.TYPE_mean) {
                        obj = parsableByteArray.readString(readInt);
                    } else if (readInt2 == Atom.TYPE_name) {
                        str2 = parsableByteArray.readString(readInt);
                    } else if (readInt2 == Atom.TYPE_data) {
                        parsableByteArray.skipBytes(4);
                        str = parsableByteArray.readString(readInt - 4);
                    } else {
                        parsableByteArray.skipBytes(readInt);
                    }
                }
                if (!(str2 == null || str == null || !"com.apple.iTunes".equals(r2))) {
                    return GaplessInfo.createFromComment(str2, str);
                }
            }
            parsableByteArray.setPosition(position);
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0) {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j;
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        Object obj = 1;
        int position = parsableByteArray.getPosition();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (parsableByteArray.data[position + i2] != -1) {
                obj = null;
                break;
            }
        }
        if (obj != null) {
            parsableByteArray.skipBytes(i);
            j = -1;
        } else {
            j = parseFullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (j == 0) {
                j = -1;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        readInt2 = (readInt2 == 0 && readInt3 == 65536 && readInt4 == (-65536) && readInt5 == 0) ? 90 : (readInt2 == 0 && readInt3 == (-65536) && readInt4 == 65536 && readInt5 == 0) ? 270 : (readInt2 == (-65536) && readInt3 == 0 && readInt4 == 0 && readInt5 == (-65536)) ? 180 : 0;
        return new TkhdData(readInt, j, readInt2);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        int i = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(parseFullAtomVersion == 0 ? 8 : 16);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            i = 4;
        }
        parsableByteArray.skipBytes(i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(readUnsignedInt), TtmlNode.ANONYMOUS_REGION_ID + ((char) (((readUnsignedShort >> 10) & 31) + 96)) + ((char) (((readUnsignedShort >> 5) & 31) + 96)) + ((char) ((readUnsignedShort & 31) + 96)));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, long j, int i2, String str, boolean z) {
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        for (int i3 = 0; i3 < readInt; i3++) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            Assertions.checkArgument(readInt2 > 0, "childAtomSize should be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == Atom.TYPE_avc1 || readInt3 == Atom.TYPE_avc3 || readInt3 == Atom.TYPE_encv || readInt3 == Atom.TYPE_mp4v || readInt3 == Atom.TYPE_hvc1 || readInt3 == Atom.TYPE_hev1 || readInt3 == Atom.TYPE_s263) {
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, j, i2, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_mp4a || readInt3 == Atom.TYPE_enca || readInt3 == Atom.TYPE_ac_3 || readInt3 == Atom.TYPE_ec_3 || readInt3 == Atom.TYPE_dtsc || readInt3 == Atom.TYPE_dtse || readInt3 == Atom.TYPE_dtsh || readInt3 == Atom.TYPE_dtsl || readInt3 == Atom.TYPE_samr || readInt3 == Atom.TYPE_sawb || readInt3 == Atom.TYPE_lpcm || readInt3 == Atom.TYPE_sowt) {
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, j, str, z, stsdData, i3);
            } else if (readInt3 == Atom.TYPE_TTML) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TTML, -1, j, str);
            } else if (readInt3 == Atom.TYPE_tx3g) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TX3G, -1, j, str);
            } else if (readInt3 == Atom.TYPE_wvtt) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_MP4VTT, -1, j, str);
            } else if (readInt3 == Atom.TYPE_stpp) {
                stsdData.mediaFormat = MediaFormat.createTextFormat(Integer.toString(i), MimeTypes.APPLICATION_TTML, -1, j, str, 0);
            }
            parsableByteArray.setPosition(position + readInt2);
        }
        return stsdData;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, long j, int i5, StsdData stsdData, int i6) {
        parsableByteArray.setPosition(i2 + 8);
        parsableByteArray.skipBytes(24);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        Object obj = null;
        float f = 1.0f;
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        if (i == Atom.TYPE_encv) {
            parseSampleEntryEncryptionData(parsableByteArray, i2, i3, stsdData, i6);
            parsableByteArray.setPosition(position);
        }
        List list = null;
        String str = null;
        int i7 = position;
        while (i7 - i2 < i3) {
            parsableByteArray.setPosition(i7);
            int position2 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (readInt == 0 && parsableByteArray.getPosition() - i2 == i3) {
                break;
            }
            Object obj2;
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            position = parsableByteArray.readInt();
            if (position == Atom.TYPE_avcC) {
                Assertions.checkState(str == null);
                str = MimeTypes.VIDEO_H264;
                AvcCData parseAvcCFromParent = parseAvcCFromParent(parsableByteArray, position2);
                list = parseAvcCFromParent.initializationData;
                stsdData.nalUnitLengthFieldLength = parseAvcCFromParent.nalUnitLengthFieldLength;
                if (obj == null) {
                    f = parseAvcCFromParent.pixelWidthAspectRatio;
                }
                obj2 = obj;
            } else if (position == Atom.TYPE_hvcC) {
                Assertions.checkState(str == null);
                String str2 = MimeTypes.VIDEO_H265;
                Pair parseHvcCFromParent = parseHvcCFromParent(parsableByteArray, position2);
                List list2 = (List) parseHvcCFromParent.first;
                stsdData.nalUnitLengthFieldLength = ((Integer) parseHvcCFromParent.second).intValue();
                list = list2;
                obj2 = obj;
                str = str2;
            } else if (position == Atom.TYPE_d263) {
                Assertions.checkState(str == null);
                str = MimeTypes.VIDEO_H263;
                obj2 = obj;
            } else if (position == Atom.TYPE_esds) {
                Assertions.checkState(str == null);
                Pair parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                String str3 = (String) parseEsdsFromParent.first;
                list = Collections.singletonList(parseEsdsFromParent.second);
                str = str3;
                obj2 = obj;
            } else if (position == Atom.TYPE_pasp) {
                f = parsePaspFromParent(parsableByteArray, position2);
                obj2 = 1;
            } else {
                obj2 = obj;
            }
            i7 += readInt;
            obj = obj2;
        }
        if (str != null) {
            stsdData.mediaFormat = MediaFormat.createVideoFormat(Integer.toString(i4), str, -1, -1, j, readUnsignedShort, readUnsignedShort2, list, i5, f);
        }
    }

    private static AvcCData parseAvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition((i + 8) + 4);
        int readUnsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
        if (readUnsignedByte == 3) {
            throw new IllegalStateException();
        }
        int i2;
        List arrayList = new ArrayList();
        float f = 1.0f;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
        for (i2 = 0; i2 < readUnsignedByte2; i2++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
        for (i2 = 0; i2 < readUnsignedByte3; i2++) {
            arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
        }
        if (readUnsignedByte2 > 0) {
            ParsableBitArray parsableBitArray = new ParsableBitArray((byte[]) arrayList.get(0));
            parsableBitArray.setPosition((readUnsignedByte + 1) * 8);
            f = NalUnitUtil.parseSpsNalUnit(parsableBitArray).pixelWidthAspectRatio;
        }
        return new AvcCData(arrayList, readUnsignedByte, f);
    }

    private static Pair<List<byte[]>, Integer> parseHvcCFromParent(ParsableByteArray parsableByteArray, int i) {
        int i2;
        parsableByteArray.setPosition((i + 8) + 21);
        int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        int position = parsableByteArray.getPosition();
        int i3 = 0;
        int i4 = 0;
        while (i3 < readUnsignedByte2) {
            parsableByteArray.skipBytes(1);
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            int i5 = i4;
            for (i2 = 0; i2 < readUnsignedShort; i2++) {
                i4 = parsableByteArray.readUnsignedShort();
                i5 += i4 + 4;
                parsableByteArray.skipBytes(i4);
            }
            i3++;
            i4 = i5;
        }
        parsableByteArray.setPosition(position);
        Object obj = new byte[i4];
        i3 = 0;
        i2 = 0;
        while (i3 < readUnsignedByte2) {
            parsableByteArray.skipBytes(1);
            readUnsignedShort = parsableByteArray.readUnsignedShort();
            i5 = i2;
            for (i2 = 0; i2 < readUnsignedShort; i2++) {
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, obj, i5, NalUnitUtil.NAL_START_CODE.length);
                i5 += NalUnitUtil.NAL_START_CODE.length;
                System.arraycopy(parsableByteArray.data, parsableByteArray.getPosition(), obj, i5, readUnsignedShort2);
                i5 += readUnsignedShort2;
                parsableByteArray.skipBytes(readUnsignedShort2);
            }
            i3++;
            i2 = i5;
        }
        return Pair.create(i4 == 0 ? null : Collections.singletonList(obj), Integer.valueOf(readUnsignedByte + 1));
    }

    private static Pair<long[], long[]> parseEdts(ContainerAtom containerAtom) {
        if (containerAtom != null) {
            LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst);
            if (leafAtomOfType != null) {
                ParsableByteArray parsableByteArray = leafAtomOfType.data;
                parsableByteArray.setPosition(8);
                int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
                Object obj = new long[readUnsignedIntToInt];
                Object obj2 = new long[readUnsignedIntToInt];
                for (int i = 0; i < readUnsignedIntToInt; i++) {
                    obj[i] = parseFullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
                    obj2[i] = parseFullAtomVersion == 1 ? parsableByteArray.readLong() : (long) parsableByteArray.readInt();
                    if (parsableByteArray.readShort() != (short) 1) {
                        throw new IllegalArgumentException("Unsupported media rate.");
                    }
                    parsableByteArray.skipBytes(2);
                }
                return Pair.create(obj, obj2);
            }
        }
        return Pair.create(null, null);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return ((float) parsableByteArray.readUnsignedIntToInt()) / ((float) parsableByteArray.readUnsignedIntToInt());
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, long j, String str, boolean z, StsdData stsdData, int i5) {
        int readUnsignedShort;
        int i6;
        int readUnsignedShort2;
        parsableByteArray.setPosition(i2 + 8);
        if (z) {
            parsableByteArray.skipBytes(8);
            readUnsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            i6 = readUnsignedShort;
        } else {
            parsableByteArray.skipBytes(16);
            i6 = 0;
        }
        if (i6 == 0 || i6 == 1) {
            readUnsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            readUnsignedShort = parsableByteArray.readUnsignedFixedPoint1616();
            if (i6 == 1) {
                parsableByteArray.skipBytes(16);
            }
        } else if (i6 == 2) {
            parsableByteArray.skipBytes(16);
            readUnsignedShort = (int) Math.round(parsableByteArray.readDouble());
            readUnsignedShort2 = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
        } else {
            return;
        }
        int position = parsableByteArray.getPosition();
        if (i == Atom.TYPE_enca) {
            i = parseSampleEntryEncryptionData(parsableByteArray, i2, i3, stsdData, i5);
            parsableByteArray.setPosition(position);
        }
        String str2 = null;
        if (i == Atom.TYPE_ac_3) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (i == Atom.TYPE_ec_3) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (i == Atom.TYPE_dtsc) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (i == Atom.TYPE_dtsh || i == Atom.TYPE_dtsl) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (i == Atom.TYPE_dtse) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (i == Atom.TYPE_samr) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else if (i == Atom.TYPE_sawb) {
            str2 = MimeTypes.AUDIO_AMR_WB;
        } else if (i == Atom.TYPE_lpcm || i == Atom.TYPE_sowt) {
            str2 = MimeTypes.AUDIO_RAW;
        }
        Object obj = null;
        int i7 = readUnsignedShort;
        int i8 = readUnsignedShort2;
        String str3 = str2;
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            readUnsignedShort = parsableByteArray.readInt();
            if (readUnsignedShort == Atom.TYPE_esds || (z && readUnsignedShort == Atom.TYPE_wave)) {
                Object obj2;
                if (readUnsignedShort == Atom.TYPE_esds) {
                    readUnsignedShort = position;
                } else {
                    readUnsignedShort = findEsdsPosition(parsableByteArray, position, readInt);
                }
                if (readUnsignedShort != -1) {
                    Pair parseEsdsFromParent = parseEsdsFromParent(parsableByteArray, readUnsignedShort);
                    str3 = (String) parseEsdsFromParent.first;
                    obj2 = (byte[]) parseEsdsFromParent.second;
                    if (MimeTypes.AUDIO_AAC.equals(str3)) {
                        Pair parseAacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(obj2);
                        i7 = ((Integer) parseAacAudioSpecificConfig.first).intValue();
                        i8 = ((Integer) parseAacAudioSpecificConfig.second).intValue();
                    }
                } else {
                    obj2 = obj;
                }
                obj = obj2;
            } else if (readUnsignedShort == Atom.TYPE_dac3) {
                parsableByteArray.setPosition(position + 8);
                stsdData.mediaFormat = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), j, str);
            } else if (readUnsignedShort == Atom.TYPE_dec3) {
                parsableByteArray.setPosition(position + 8);
                stsdData.mediaFormat = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), j, str);
            } else if (readUnsignedShort == Atom.TYPE_ddts) {
                stsdData.mediaFormat = MediaFormat.createAudioFormat(Integer.toString(i4), str3, -1, -1, j, i8, i7, null, str);
            }
            position += readInt;
        }
        if (stsdData.mediaFormat == null && str3 != null) {
            stsdData.mediaFormat = MediaFormat.createAudioFormat(Integer.toString(i4), str3, -1, -1, j, i8, i7, obj == null ? null : Collections.singletonList(obj), str, MimeTypes.AUDIO_RAW.equals(str3) ? 2 : -1);
        }
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i, int i2) {
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        Object obj = null;
        parsableByteArray.setPosition((i + 8) + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        switch (parsableByteArray.readUnsignedByte()) {
            case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                obj = MimeTypes.VIDEO_MP4V;
                break;
            case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                obj = MimeTypes.VIDEO_H264;
                break;
            case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                obj = MimeTypes.VIDEO_H265;
                break;
            case bdd.AppCompatTheme_imageButtonStyle /*64*/:
            case bdd.AppCompatTheme_checkboxStyle /*102*/:
            case bdd.AppCompatTheme_checkedTextViewStyle /*103*/:
            case bdd.AppCompatTheme_editTextStyle /*104*/:
                obj = MimeTypes.AUDIO_AAC;
                break;
            case bdd.AppCompatTheme_ratingBarStyleIndicator /*107*/:
                return Pair.create(MimeTypes.AUDIO_MPEG, null);
            case 165:
                obj = MimeTypes.AUDIO_AC3;
                break;
            case 166:
                obj = MimeTypes.AUDIO_E_AC3;
                break;
            case 169:
            case 172:
                return Pair.create(MimeTypes.AUDIO_DTS, null);
            case 170:
            case 171:
                return Pair.create(MimeTypes.AUDIO_DTS_HD, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        readUnsignedByte = parseExpandableClassSize(parsableByteArray);
        Object obj2 = new byte[readUnsignedByte];
        parsableByteArray.readBytes(obj2, 0, readUnsignedByte);
        return Pair.create(obj, obj2);
    }

    private static int parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2, StsdData stsdData, int i3) {
        boolean z = true;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            Assertions.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf) {
                Pair parseSinfFromParent = parseSinfFromParent(parsableByteArray, position, readInt);
                Integer num = (Integer) parseSinfFromParent.first;
                if (num == null) {
                    z = false;
                }
                Assertions.checkArgument(z, "frma atom is mandatory");
                stsdData.trackEncryptionBoxes[i3] = (TrackEncryptionBox) parseSinfFromParent.second;
                return num.intValue();
            }
            position += readInt;
        }
        return 0;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        Object obj = null;
        int i3 = i + 8;
        Object obj2 = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == Atom.TYPE_frma) {
                obj = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                parsableByteArray.readInt();
                parsableByteArray.readInt();
            } else if (readInt2 == Atom.TYPE_schi) {
                obj2 = parseSchiFromParent(parsableByteArray, i3, readInt);
            }
            i3 += readInt;
        }
        return Pair.create(obj, obj2);
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        boolean z = true;
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                parsableByteArray.skipBytes(6);
                if (parsableByteArray.readUnsignedByte() != 1) {
                    z = false;
                }
                i3 = parsableByteArray.readUnsignedByte();
                byte[] bArr = new byte[16];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                return new TrackEncryptionBox(z, i3, bArr);
            }
            i3 += readInt;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    private AtomParsers() {
    }
}
