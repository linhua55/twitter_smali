package com.google.android.exoplayer;

/* compiled from: Twttr */
public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT;

    DecoderInfo getDecoderInfo(String str, boolean z) throws MediaCodecUtil$DecoderQueryException;

    DecoderInfo getPassthroughDecoderInfo() throws MediaCodecUtil$DecoderQueryException;

    static {
        DEFAULT = new MediaCodecSelector() {
            public DecoderInfo getDecoderInfo(String str, boolean z) throws MediaCodecUtil$DecoderQueryException {
                return MediaCodecUtil.getDecoderInfo(str, z);
            }

            public DecoderInfo getPassthroughDecoderInfo() throws MediaCodecUtil$DecoderQueryException {
                return MediaCodecUtil.getPassthroughDecoderInfo();
            }
        };
    }
}
