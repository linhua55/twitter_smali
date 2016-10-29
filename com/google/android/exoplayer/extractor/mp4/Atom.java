package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
abstract class Atom {
    public static final int FULL_HEADER_SIZE = 12;
    public static final int HEADER_SIZE = 8;
    public static final int LONG_HEADER_SIZE = 16;
    public static final int LONG_SIZE_PREFIX = 1;
    public static final int TYPE_DASHES;
    public static final int TYPE_TTML;
    public static final int TYPE_ac_3;
    public static final int TYPE_avc1;
    public static final int TYPE_avc3;
    public static final int TYPE_avcC;
    public static final int TYPE_co64;
    public static final int TYPE_ctts;
    public static final int TYPE_d263;
    public static final int TYPE_dac3;
    public static final int TYPE_data;
    public static final int TYPE_ddts;
    public static final int TYPE_dec3;
    public static final int TYPE_dtsc;
    public static final int TYPE_dtse;
    public static final int TYPE_dtsh;
    public static final int TYPE_dtsl;
    public static final int TYPE_ec_3;
    public static final int TYPE_edts;
    public static final int TYPE_elst;
    public static final int TYPE_emsg;
    public static final int TYPE_enca;
    public static final int TYPE_encv;
    public static final int TYPE_esds;
    public static final int TYPE_frma;
    public static final int TYPE_ftyp;
    public static final int TYPE_hdlr;
    public static final int TYPE_hev1;
    public static final int TYPE_hvc1;
    public static final int TYPE_hvcC;
    public static final int TYPE_ilst;
    public static final int TYPE_lpcm;
    public static final int TYPE_mdat;
    public static final int TYPE_mdhd;
    public static final int TYPE_mdia;
    public static final int TYPE_mean;
    public static final int TYPE_mehd;
    public static final int TYPE_meta;
    public static final int TYPE_minf;
    public static final int TYPE_moof;
    public static final int TYPE_moov;
    public static final int TYPE_mp4a;
    public static final int TYPE_mp4v;
    public static final int TYPE_mvex;
    public static final int TYPE_mvhd;
    public static final int TYPE_name;
    public static final int TYPE_pasp;
    public static final int TYPE_pssh;
    public static final int TYPE_s263;
    public static final int TYPE_saio;
    public static final int TYPE_saiz;
    public static final int TYPE_samr;
    public static final int TYPE_sawb;
    public static final int TYPE_sbgp;
    public static final int TYPE_schi;
    public static final int TYPE_schm;
    public static final int TYPE_senc;
    public static final int TYPE_sgpd;
    public static final int TYPE_sidx;
    public static final int TYPE_sinf;
    public static final int TYPE_sowt;
    public static final int TYPE_stbl;
    public static final int TYPE_stco;
    public static final int TYPE_stpp;
    public static final int TYPE_stsc;
    public static final int TYPE_stsd;
    public static final int TYPE_stss;
    public static final int TYPE_stsz;
    public static final int TYPE_stts;
    public static final int TYPE_tenc;
    public static final int TYPE_tfdt;
    public static final int TYPE_tfhd;
    public static final int TYPE_tkhd;
    public static final int TYPE_traf;
    public static final int TYPE_trak;
    public static final int TYPE_trex;
    public static final int TYPE_trun;
    public static final int TYPE_tx3g;
    public static final int TYPE_udta;
    public static final int TYPE_uuid;
    public static final int TYPE_vmhd;
    public static final int TYPE_wave;
    public static final int TYPE_wvtt;
    public final int type;

    /* compiled from: Twttr */
    final class ContainerAtom extends Atom {
        public final List<ContainerAtom> containerChildren;
        public final long endPosition;
        public final List<LeafAtom> leafChildren;

        public ContainerAtom(int i, long j) {
            super(i);
            this.endPosition = j;
            this.leafChildren = new ArrayList();
            this.containerChildren = new ArrayList();
        }

        public void add(LeafAtom leafAtom) {
            this.leafChildren.add(leafAtom);
        }

        public void add(ContainerAtom containerAtom) {
            this.containerChildren.add(containerAtom);
        }

        public LeafAtom getLeafAtomOfType(int i) {
            int size = this.leafChildren.size();
            for (int i2 = 0; i2 < size; i2 += Atom.LONG_SIZE_PREFIX) {
                LeafAtom leafAtom = (LeafAtom) this.leafChildren.get(i2);
                if (leafAtom.type == i) {
                    return leafAtom;
                }
            }
            return null;
        }

        public ContainerAtom getContainerAtomOfType(int i) {
            int size = this.containerChildren.size();
            for (int i2 = 0; i2 < size; i2 += Atom.LONG_SIZE_PREFIX) {
                ContainerAtom containerAtom = (ContainerAtom) this.containerChildren.get(i2);
                if (containerAtom.type == i) {
                    return containerAtom;
                }
            }
            return null;
        }

        public int getChildAtomOfTypeCount(int i) {
            int i2;
            int i3 = 0;
            int size = this.leafChildren.size();
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                if (((LeafAtom) this.leafChildren.get(i4)).type == i) {
                    i2 = i5 + Atom.LONG_SIZE_PREFIX;
                } else {
                    i2 = i5;
                }
                i4 += Atom.LONG_SIZE_PREFIX;
                i5 = i2;
            }
            i4 = this.containerChildren.size();
            while (i3 < i4) {
                if (((ContainerAtom) this.containerChildren.get(i3)).type == i) {
                    i2 = i5 + Atom.LONG_SIZE_PREFIX;
                } else {
                    i2 = i5;
                }
                i3 += Atom.LONG_SIZE_PREFIX;
                i5 = i2;
            }
            return i5;
        }

        public String toString() {
            return Atom.getAtomTypeString(this.type) + " leaves: " + Arrays.toString(this.leafChildren.toArray(new LeafAtom[0])) + " containers: " + Arrays.toString(this.containerChildren.toArray(new ContainerAtom[0]));
        }
    }

    /* compiled from: Twttr */
    final class LeafAtom extends Atom {
        public final ParsableByteArray data;

        public LeafAtom(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.data = parsableByteArray;
        }
    }

    static {
        TYPE_ftyp = Util.getIntegerCodeForString("ftyp");
        TYPE_avc1 = Util.getIntegerCodeForString("avc1");
        TYPE_avc3 = Util.getIntegerCodeForString("avc3");
        TYPE_hvc1 = Util.getIntegerCodeForString("hvc1");
        TYPE_hev1 = Util.getIntegerCodeForString("hev1");
        TYPE_s263 = Util.getIntegerCodeForString("s263");
        TYPE_d263 = Util.getIntegerCodeForString("d263");
        TYPE_mdat = Util.getIntegerCodeForString("mdat");
        TYPE_mp4a = Util.getIntegerCodeForString("mp4a");
        TYPE_wave = Util.getIntegerCodeForString("wave");
        TYPE_lpcm = Util.getIntegerCodeForString("lpcm");
        TYPE_sowt = Util.getIntegerCodeForString("sowt");
        TYPE_ac_3 = Util.getIntegerCodeForString("ac-3");
        TYPE_dac3 = Util.getIntegerCodeForString("dac3");
        TYPE_ec_3 = Util.getIntegerCodeForString("ec-3");
        TYPE_dec3 = Util.getIntegerCodeForString("dec3");
        TYPE_dtsc = Util.getIntegerCodeForString("dtsc");
        TYPE_dtsh = Util.getIntegerCodeForString("dtsh");
        TYPE_dtsl = Util.getIntegerCodeForString("dtsl");
        TYPE_dtse = Util.getIntegerCodeForString("dtse");
        TYPE_ddts = Util.getIntegerCodeForString("ddts");
        TYPE_tfdt = Util.getIntegerCodeForString("tfdt");
        TYPE_tfhd = Util.getIntegerCodeForString("tfhd");
        TYPE_trex = Util.getIntegerCodeForString("trex");
        TYPE_trun = Util.getIntegerCodeForString("trun");
        TYPE_sidx = Util.getIntegerCodeForString("sidx");
        TYPE_moov = Util.getIntegerCodeForString("moov");
        TYPE_mvhd = Util.getIntegerCodeForString("mvhd");
        TYPE_trak = Util.getIntegerCodeForString("trak");
        TYPE_mdia = Util.getIntegerCodeForString("mdia");
        TYPE_minf = Util.getIntegerCodeForString("minf");
        TYPE_stbl = Util.getIntegerCodeForString("stbl");
        TYPE_avcC = Util.getIntegerCodeForString("avcC");
        TYPE_hvcC = Util.getIntegerCodeForString("hvcC");
        TYPE_esds = Util.getIntegerCodeForString("esds");
        TYPE_moof = Util.getIntegerCodeForString("moof");
        TYPE_traf = Util.getIntegerCodeForString("traf");
        TYPE_mvex = Util.getIntegerCodeForString("mvex");
        TYPE_mehd = Util.getIntegerCodeForString("mehd");
        TYPE_tkhd = Util.getIntegerCodeForString("tkhd");
        TYPE_edts = Util.getIntegerCodeForString("edts");
        TYPE_elst = Util.getIntegerCodeForString("elst");
        TYPE_mdhd = Util.getIntegerCodeForString("mdhd");
        TYPE_hdlr = Util.getIntegerCodeForString("hdlr");
        TYPE_stsd = Util.getIntegerCodeForString("stsd");
        TYPE_pssh = Util.getIntegerCodeForString("pssh");
        TYPE_sinf = Util.getIntegerCodeForString("sinf");
        TYPE_schm = Util.getIntegerCodeForString("schm");
        TYPE_schi = Util.getIntegerCodeForString("schi");
        TYPE_tenc = Util.getIntegerCodeForString("tenc");
        TYPE_encv = Util.getIntegerCodeForString("encv");
        TYPE_enca = Util.getIntegerCodeForString("enca");
        TYPE_frma = Util.getIntegerCodeForString("frma");
        TYPE_saiz = Util.getIntegerCodeForString("saiz");
        TYPE_saio = Util.getIntegerCodeForString("saio");
        TYPE_sbgp = Util.getIntegerCodeForString("sbgp");
        TYPE_sgpd = Util.getIntegerCodeForString("sgpd");
        TYPE_uuid = Util.getIntegerCodeForString("uuid");
        TYPE_senc = Util.getIntegerCodeForString("senc");
        TYPE_pasp = Util.getIntegerCodeForString("pasp");
        TYPE_TTML = Util.getIntegerCodeForString("TTML");
        TYPE_vmhd = Util.getIntegerCodeForString("vmhd");
        TYPE_mp4v = Util.getIntegerCodeForString("mp4v");
        TYPE_stts = Util.getIntegerCodeForString("stts");
        TYPE_stss = Util.getIntegerCodeForString("stss");
        TYPE_ctts = Util.getIntegerCodeForString("ctts");
        TYPE_stsc = Util.getIntegerCodeForString("stsc");
        TYPE_stsz = Util.getIntegerCodeForString("stsz");
        TYPE_stco = Util.getIntegerCodeForString("stco");
        TYPE_co64 = Util.getIntegerCodeForString("co64");
        TYPE_tx3g = Util.getIntegerCodeForString("tx3g");
        TYPE_wvtt = Util.getIntegerCodeForString("wvtt");
        TYPE_stpp = Util.getIntegerCodeForString("stpp");
        TYPE_samr = Util.getIntegerCodeForString("samr");
        TYPE_sawb = Util.getIntegerCodeForString("sawb");
        TYPE_udta = Util.getIntegerCodeForString("udta");
        TYPE_meta = Util.getIntegerCodeForString("meta");
        TYPE_ilst = Util.getIntegerCodeForString("ilst");
        TYPE_mean = Util.getIntegerCodeForString("mean");
        TYPE_name = Util.getIntegerCodeForString("name");
        TYPE_data = Util.getIntegerCodeForString("data");
        TYPE_emsg = Util.getIntegerCodeForString("emsg");
        TYPE_DASHES = Util.getIntegerCodeForString("----");
    }

    public Atom(int i) {
        this.type = i;
    }

    public String toString() {
        return getAtomTypeString(this.type);
    }

    public static int parseFullAtomVersion(int i) {
        return (i >> 24) & NalUnitUtil.EXTENDED_SAR;
    }

    public static int parseFullAtomFlags(int i) {
        return 16777215 & i;
    }

    public static String getAtomTypeString(int i) {
        return TtmlNode.ANONYMOUS_REGION_ID + ((char) (i >> 24)) + ((char) ((i >> LONG_HEADER_SIZE) & NalUnitUtil.EXTENDED_SAR)) + ((char) ((i >> HEADER_SIZE) & NalUnitUtil.EXTENDED_SAR)) + ((char) (i & NalUnitUtil.EXTENDED_SAR));
    }
}
