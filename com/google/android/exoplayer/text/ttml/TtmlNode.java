package com.google.android.exoplayer.text.ttml;

import android.text.SpannableStringBuilder;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: Twttr */
final class TtmlNode {
    public static final String ANONYMOUS_REGION_ID = "";
    public static final String ATTR_ID = "id";
    public static final String ATTR_TTS_BACKGROUND_COLOR = "backgroundColor";
    public static final String ATTR_TTS_COLOR = "color";
    public static final String ATTR_TTS_EXTENT = "extent";
    public static final String ATTR_TTS_FONT_FAMILY = "fontFamily";
    public static final String ATTR_TTS_FONT_SIZE = "fontSize";
    public static final String ATTR_TTS_FONT_STYLE = "fontStyle";
    public static final String ATTR_TTS_FONT_WEIGHT = "fontWeight";
    public static final String ATTR_TTS_ORIGIN = "origin";
    public static final String ATTR_TTS_TEXT_ALIGN = "textAlign";
    public static final String ATTR_TTS_TEXT_DECORATION = "textDecoration";
    public static final String BOLD = "bold";
    public static final String CENTER = "center";
    public static final String END = "end";
    public static final String ITALIC = "italic";
    public static final String LEFT = "left";
    public static final String LINETHROUGH = "linethrough";
    public static final String NO_LINETHROUGH = "nolinethrough";
    public static final String NO_UNDERLINE = "nounderline";
    public static final String RIGHT = "right";
    public static final String START = "start";
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SMPTE_DATA = "smpte:data";
    public static final String TAG_SMPTE_IMAGE = "smpte:image";
    public static final String TAG_SMPTE_INFORMATION = "smpte:information";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final long UNDEFINED_TIME = -1;
    public static final String UNDERLINE = "underline";
    private List<TtmlNode> children;
    public final long endTimeUs;
    public final boolean isTextNode;
    private final HashMap<String, Integer> nodeEndsByRegion;
    private final HashMap<String, Integer> nodeStartsByRegion;
    public final String regionId;
    public final long startTimeUs;
    public final TtmlStyle style;
    private final String[] styleIds;
    public final String tag;
    public final String text;

    public static TtmlNode buildTextNode(String str) {
        return new TtmlNode(null, TtmlRenderUtil.applyTextElementSpacePolicy(str), UNDEFINED_TIME, UNDEFINED_TIME, null, null, ANONYMOUS_REGION_ID);
    }

    public static TtmlNode buildNode(String str, long j, long j2, TtmlStyle ttmlStyle, String[] strArr, String str2) {
        return new TtmlNode(str, null, j, j2, ttmlStyle, strArr, str2);
    }

    private TtmlNode(String str, String str2, long j, long j2, TtmlStyle ttmlStyle, String[] strArr, String str3) {
        this.tag = str;
        this.text = str2;
        this.style = ttmlStyle;
        this.styleIds = strArr;
        this.isTextNode = str2 != null;
        this.startTimeUs = j;
        this.endTimeUs = j2;
        this.regionId = (String) Assertions.checkNotNull(str3);
        this.nodeStartsByRegion = new HashMap();
        this.nodeEndsByRegion = new HashMap();
    }

    public boolean isActive(long j) {
        return (this.startTimeUs == UNDEFINED_TIME && this.endTimeUs == UNDEFINED_TIME) || ((this.startTimeUs <= j && this.endTimeUs == UNDEFINED_TIME) || ((this.startTimeUs == UNDEFINED_TIME && j < this.endTimeUs) || (this.startTimeUs <= j && j < this.endTimeUs)));
    }

    public void addChild(TtmlNode ttmlNode) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(ttmlNode);
    }

    public TtmlNode getChild(int i) {
        if (this.children != null) {
            return (TtmlNode) this.children.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int getChildCount() {
        return this.children == null ? 0 : this.children.size();
    }

    public long[] getEventTimesUs() {
        TreeSet treeSet = new TreeSet();
        getEventTimes(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            jArr[i] = ((Long) it.next()).longValue();
            i = i2;
        }
        return jArr;
    }

    private void getEventTimes(TreeSet<Long> treeSet, boolean z) {
        boolean equals = TAG_P.equals(this.tag);
        if (z || equals) {
            if (this.startTimeUs != UNDEFINED_TIME) {
                treeSet.add(Long.valueOf(this.startTimeUs));
            }
            if (this.endTimeUs != UNDEFINED_TIME) {
                treeSet.add(Long.valueOf(this.endTimeUs));
            }
        }
        if (this.children != null) {
            for (int i = 0; i < this.children.size(); i++) {
                boolean z2;
                TtmlNode ttmlNode = (TtmlNode) this.children.get(i);
                if (z || equals) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                ttmlNode.getEventTimes(treeSet, z2);
            }
        }
    }

    public String[] getStyleIds() {
        return this.styleIds;
    }

    public List<Cue> getCues(long j, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) {
        Object treeMap = new TreeMap();
        traverseForText(j, false, this.regionId, treeMap);
        traverseForStyle(map, treeMap);
        List<Cue> arrayList = new ArrayList();
        for (Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion = (TtmlRegion) map2.get(entry.getKey());
            arrayList.add(new Cue(cleanUpText((SpannableStringBuilder) entry.getValue()), null, ttmlRegion.line, Cue.TYPE_UNSET, Cue.TYPE_UNSET, ttmlRegion.position, Cue.TYPE_UNSET, ttmlRegion.width));
        }
        return arrayList;
    }

    private void traverseForText(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.nodeStartsByRegion.clear();
        this.nodeEndsByRegion.clear();
        String str2 = this.regionId;
        if (ANONYMOUS_REGION_ID.equals(str2)) {
            str2 = str;
        }
        if (this.isTextNode && z) {
            getRegionOutput(str2, map).append(this.text);
        } else if (TAG_BR.equals(this.tag) && z) {
            getRegionOutput(str2, map).append('\n');
        } else if (!TAG_METADATA.equals(this.tag) && isActive(j)) {
            boolean equals = TAG_P.equals(this.tag);
            for (Entry entry : map.entrySet()) {
                this.nodeStartsByRegion.put(entry.getKey(), Integer.valueOf(((SpannableStringBuilder) entry.getValue()).length()));
            }
            for (int i = 0; i < getChildCount(); i++) {
                boolean z2;
                TtmlNode child = getChild(i);
                if (z || equals) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                child.traverseForText(j, z2, str2, map);
            }
            if (equals) {
                TtmlRenderUtil.endParagraph(getRegionOutput(str2, map));
            }
            for (Entry entry2 : map.entrySet()) {
                this.nodeEndsByRegion.put(entry2.getKey(), Integer.valueOf(((SpannableStringBuilder) entry2.getValue()).length()));
            }
        }
    }

    private static SpannableStringBuilder getRegionOutput(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return (SpannableStringBuilder) map.get(str);
    }

    private void traverseForStyle(Map<String, TtmlStyle> map, Map<String, SpannableStringBuilder> map2) {
        for (Entry entry : this.nodeEndsByRegion.entrySet()) {
            int intValue;
            String str = (String) entry.getKey();
            if (this.nodeStartsByRegion.containsKey(str)) {
                intValue = ((Integer) this.nodeStartsByRegion.get(str)).intValue();
            } else {
                intValue = 0;
            }
            applyStyleToOutput(map, (SpannableStringBuilder) map2.get(str), intValue, ((Integer) entry.getValue()).intValue());
            for (int i = 0; i < getChildCount(); i++) {
                getChild(i).traverseForStyle(map, map2);
            }
        }
    }

    private void applyStyleToOutput(Map<String, TtmlStyle> map, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        if (i != i2) {
            TtmlStyle resolveStyle = TtmlRenderUtil.resolveStyle(this.style, this.styleIds, map);
            if (resolveStyle != null) {
                TtmlRenderUtil.applyStylesToSpan(spannableStringBuilder, i, i2, resolveStyle);
            }
        }
    }

    private SpannableStringBuilder cleanUpText(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int length = spannableStringBuilder.length();
        int i2 = 0;
        while (i2 < length) {
            if (spannableStringBuilder.charAt(i2) == ' ') {
                i = i2 + 1;
                while (i < spannableStringBuilder.length() && spannableStringBuilder.charAt(i) == ' ') {
                    i++;
                }
                i -= i2 + 1;
                if (i > 0) {
                    spannableStringBuilder.delete(i2, i2 + i);
                    i = length - i;
                    i2++;
                    length = i;
                }
            }
            i = length;
            i2++;
            length = i;
        }
        if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
            length--;
        }
        i = length;
        length = 0;
        while (length < i - 1) {
            if (spannableStringBuilder.charAt(length) == '\n' && spannableStringBuilder.charAt(length + 1) == ' ') {
                spannableStringBuilder.delete(length + 1, length + 2);
                i--;
            }
            length++;
        }
        if (i > 0 && spannableStringBuilder.charAt(i - 1) == ' ') {
            spannableStringBuilder.delete(i - 1, i);
            i--;
        }
        length = 0;
        while (length < i - 1) {
            if (spannableStringBuilder.charAt(length) == ' ' && spannableStringBuilder.charAt(length + 1) == '\n') {
                spannableStringBuilder.delete(length, length + 1);
                i--;
            }
            length++;
        }
        if (i > 0 && spannableStringBuilder.charAt(i - 1) == '\n') {
            spannableStringBuilder.delete(i - 1, i);
        }
        return spannableStringBuilder;
    }
}
