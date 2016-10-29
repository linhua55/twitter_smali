package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.media.MediaCodecInfo.VideoCapabilities;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.util.Log;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import com.twitter.android.mx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@TargetApi(16)
/* compiled from: Twttr */
public final class MediaCodecUtil {
    private static final DecoderInfo PASSTHROUGH_DECODER_INFO;
    private static final String TAG = "MediaCodecUtil";
    private static final Map<CodecKey, List<DecoderInfo>> decoderInfosCache;
    private static int maxH264DecodableFrameSize;

    static {
        PASSTHROUGH_DECODER_INFO = new DecoderInfo("OMX.google.raw.decoder", null);
        decoderInfosCache = new HashMap();
        maxH264DecodableFrameSize = -1;
    }

    private MediaCodecUtil() {
    }

    public static void warmCodec(String str, boolean z) {
        try {
            getDecoderInfos(str, z);
        } catch (DecoderQueryException e) {
            Log.e(TAG, "Codec warming failed", e);
        }
    }

    public static DecoderInfo getPassthroughDecoderInfo() {
        return PASSTHROUGH_DECODER_INFO;
    }

    public static DecoderInfo getDecoderInfo(String str, boolean z) throws DecoderQueryException {
        List decoderInfos = getDecoderInfos(str, z);
        return decoderInfos.isEmpty() ? null : (DecoderInfo) decoderInfos.get(0);
    }

    public static synchronized List<DecoderInfo> getDecoderInfos(String str, boolean z) throws DecoderQueryException {
        List<DecoderInfo> list;
        synchronized (MediaCodecUtil.class) {
            CodecKey codecKey = new CodecKey(str, z);
            list = (List) decoderInfosCache.get(codecKey);
            if (list == null) {
                List decoderInfosInternal = getDecoderInfosInternal(codecKey, Util.SDK_INT >= 21 ? new MediaCodecListCompatV21(z) : new MediaCodecListCompatV16(null));
                if (z && decoderInfosInternal.isEmpty() && 21 <= Util.SDK_INT && Util.SDK_INT <= 23) {
                    List decoderInfosInternal2 = getDecoderInfosInternal(codecKey, new MediaCodecListCompatV16(null));
                    if (!decoderInfosInternal2.isEmpty()) {
                        Log.w(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((DecoderInfo) decoderInfosInternal2.get(0)).name);
                    }
                    decoderInfosInternal = decoderInfosInternal2;
                }
                list = Collections.unmodifiableList(decoderInfosInternal);
                decoderInfosCache.put(codecKey, list);
            }
        }
        return list;
    }

    private static List<DecoderInfo> getDecoderInfosInternal(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat) throws DecoderQueryException {
        String name;
        try {
            List<DecoderInfo> arrayList = new ArrayList();
            String str = codecKey.mimeType;
            int codecCount = mediaCodecListCompat.getCodecCount();
            boolean secureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
            loop0:
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = mediaCodecListCompat.getCodecInfoAt(i);
                name = codecInfoAt.getName();
                if (isCodecUsableDecoder(codecInfoAt, name, secureDecodersExplicit)) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str2);
                            boolean isSecurePlaybackSupported = mediaCodecListCompat.isSecurePlaybackSupported(str, capabilitiesForType);
                            if ((!secureDecodersExplicit || codecKey.secure != isSecurePlaybackSupported) && (secureDecodersExplicit || codecKey.secure)) {
                                if (!secureDecodersExplicit && isSecurePlaybackSupported) {
                                    arrayList.add(new DecoderInfo(name + ".secure", capabilitiesForType));
                                    break loop0;
                                }
                            }
                            arrayList.add(new DecoderInfo(name, capabilitiesForType));
                        }
                    }
                    continue;
                }
            }
            return arrayList;
        } catch (Exception e) {
            if (Util.SDK_INT > 23 || arrayList.isEmpty()) {
                Log.e(TAG, "Failed to query codec " + name + " (" + str2 + ")");
                throw e;
            }
            Log.e(TAG, "Skipping codec " + name + " (failed to query capabilities)");
        } catch (Throwable e2) {
            throw new DecoderQueryException(e2, null);
        }
    }

    private static boolean isCodecUsableDecoder(MediaCodecInfo mediaCodecInfo, String str, boolean z) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        if ((Util.SDK_INT < 21 && "CIPAACDecoder".equals(str)) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str)) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.SEC.MP3.Decoder".equals(str)) {
            return false;
        }
        if (Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && "a70".equals(Util.DEVICE)) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(Util.DEVICE) || "protou".equals(Util.DEVICE) || "C6602".equals(Util.DEVICE) || "C6603".equals(Util.DEVICE) || "C6606".equals(Util.DEVICE) || "C6616".equals(Util.DEVICE) || "L36h".equals(Util.DEVICE) || "SO-02E".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(Util.DEVICE) || "C1505".equals(Util.DEVICE) || "C1604".equals(Util.DEVICE) || "C1605".equals(Util.DEVICE))) {
            return false;
        }
        if (Util.SDK_INT > 19 || Util.DEVICE == null || ((!Util.DEVICE.startsWith("d2") && !Util.DEVICE.startsWith("serrano")) || !"samsung".equals(Util.MANUFACTURER) || !str.equals("OMX.SEC.vp8.dec"))) {
            return true;
        }
        return false;
    }

    @TargetApi(21)
    public static boolean isSizeSupportedV21(String str, boolean z, int i, int i2) throws DecoderQueryException {
        boolean z2;
        if (Util.SDK_INT >= 21) {
            z2 = true;
        } else {
            z2 = false;
        }
        Assertions.checkState(z2);
        VideoCapabilities videoCapabilitiesV21 = getVideoCapabilitiesV21(str, z);
        return videoCapabilitiesV21 != null && videoCapabilitiesV21.isSizeSupported(i, i2);
    }

    @TargetApi(21)
    public static boolean isSizeAndRateSupportedV21(String str, boolean z, int i, int i2, double d) throws DecoderQueryException {
        boolean z2;
        if (Util.SDK_INT >= 21) {
            z2 = true;
        } else {
            z2 = false;
        }
        Assertions.checkState(z2);
        VideoCapabilities videoCapabilitiesV21 = getVideoCapabilitiesV21(str, z);
        return videoCapabilitiesV21 != null && videoCapabilitiesV21.areSizeAndRateSupported(i, i2, d);
    }

    @Deprecated
    public static boolean isH264ProfileSupported(int i, int i2) throws DecoderQueryException {
        DecoderInfo decoderInfo = getDecoderInfo("video/avc", false);
        if (decoderInfo == null) {
            return false;
        }
        for (CodecProfileLevel codecProfileLevel : decoderInfo.capabilities.profileLevels) {
            if (codecProfileLevel.profile == i && codecProfileLevel.level >= i2) {
                return true;
            }
        }
        return false;
    }

    public static int maxH264DecodableFrameSize() throws DecoderQueryException {
        int i = 0;
        if (maxH264DecodableFrameSize == -1) {
            DecoderInfo decoderInfo = getDecoderInfo("video/avc", false);
            if (decoderInfo != null) {
                CodecProfileLevel[] codecProfileLevelArr = decoderInfo.capabilities.profileLevels;
                int length = codecProfileLevelArr.length;
                int i2 = 0;
                while (i < length) {
                    i2 = Math.max(avcLevelToMaxFrameSize(codecProfileLevelArr[i].level), i2);
                    i++;
                }
                i = Math.max(i2, 172800);
            }
            maxH264DecodableFrameSize = i;
        }
        return maxH264DecodableFrameSize;
    }

    @TargetApi(21)
    private static VideoCapabilities getVideoCapabilitiesV21(String str, boolean z) throws DecoderQueryException {
        DecoderInfo decoderInfo = getDecoderInfo(str, z);
        return decoderInfo == null ? null : decoderInfo.capabilities.getVideoCapabilities();
    }

    private static int avcLevelToMaxFrameSize(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                return 25344;
            case ControlMessage.CONTROL_BAN /*8*/:
                return 101376;
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                return 101376;
            case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                return 101376;
            case mx.AppCompatTheme_imageButtonStyle /*64*/:
                return 202752;
            case AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS /*128*/:
                return 414720;
            case AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY /*256*/:
                return 414720;
            case AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY /*512*/:
                return 921600;
            case AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT /*1024*/:
                return 1310720;
            case ItemAnimator.FLAG_MOVED /*2048*/:
                return AccessibilityNodeInfoCompat.ACTION_SET_TEXT;
            case ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT /*4096*/:
                return AccessibilityNodeInfoCompat.ACTION_SET_TEXT;
            case AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD /*8192*/:
                return 2228224;
            case AccessibilityNodeInfoCompat.ACTION_COPY /*16384*/:
                return 5652480;
            case AccessibilityNodeInfoCompat.ACTION_PASTE /*32768*/:
                return 9437184;
            default:
                return -1;
        }
    }
}
