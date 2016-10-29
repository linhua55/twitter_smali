package com.google.android.exoplayer.text.ttml;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParserUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import defpackage.bdd;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: Twttr */
public final class TtmlParser implements SubtitleParser {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    private static final Pattern CLOCK_TIME;
    private static final int DEFAULT_FRAMERATE = 30;
    private static final int DEFAULT_SUBFRAMERATE = 1;
    private static final int DEFAULT_TICKRATE = 1;
    private static final Pattern FONT_SIZE;
    private static final Pattern OFFSET_TIME;
    private static final Pattern PERCENTAGE_COORDINATES;
    private static final String TAG = "TtmlParser";
    private final XmlPullParserFactory xmlParserFactory;

    static {
        CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
        OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
        FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
        PERCENTAGE_COORDINATES = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    }

    public TtmlParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
            this.xmlParserFactory.setNamespaceAware(true);
        } catch (Throwable e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    public boolean canParse(String str) {
        return MimeTypes.APPLICATION_TTML.equals(str);
    }

    public TtmlSubtitle parse(byte[] bArr, int i, int i2) throws ParserException {
        TtmlSubtitle ttmlSubtitle = null;
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            Map hashMap = new HashMap();
            Map hashMap2 = new HashMap();
            hashMap2.put(TtmlNode.ANONYMOUS_REGION_ID, new TtmlRegion());
            newPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            LinkedList linkedList = new LinkedList();
            int i3 = 0;
            for (int eventType = newPullParser.getEventType(); eventType != DEFAULT_TICKRATE; eventType = newPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
                if (i3 == 0) {
                    int i4;
                    TtmlSubtitle ttmlSubtitle2;
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (!isSupportedTag(name)) {
                            Log.i(TAG, "Ignoring unsupported tag: " + newPullParser.getName());
                            i4 = i3 + DEFAULT_TICKRATE;
                            ttmlSubtitle2 = ttmlSubtitle;
                        } else if (TtmlNode.TAG_HEAD.equals(name)) {
                            parseHeader(newPullParser, hashMap, hashMap2);
                            i4 = i3;
                            ttmlSubtitle2 = ttmlSubtitle;
                        } else {
                            try {
                                TtmlNode parseNode = parseNode(newPullParser, ttmlNode, hashMap2);
                                linkedList.addLast(parseNode);
                                if (ttmlNode != null) {
                                    ttmlNode.addChild(parseNode);
                                }
                                i4 = i3;
                                ttmlSubtitle2 = ttmlSubtitle;
                            } catch (Throwable e) {
                                Log.w(TAG, "Suppressing parser error", e);
                                i4 = i3 + DEFAULT_TICKRATE;
                                ttmlSubtitle2 = ttmlSubtitle;
                            }
                        }
                    } else if (eventType == 4) {
                        ttmlNode.addChild(TtmlNode.buildTextNode(newPullParser.getText()));
                        i4 = i3;
                        ttmlSubtitle2 = ttmlSubtitle;
                    } else if (eventType == 3) {
                        TtmlSubtitle ttmlSubtitle3;
                        if (newPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            ttmlSubtitle3 = new TtmlSubtitle((TtmlNode) linkedList.getLast(), hashMap, hashMap2);
                        } else {
                            ttmlSubtitle3 = ttmlSubtitle;
                        }
                        linkedList.removeLast();
                        int i5 = i3;
                        ttmlSubtitle2 = ttmlSubtitle3;
                        i4 = i5;
                    } else {
                        i4 = i3;
                        ttmlSubtitle2 = ttmlSubtitle;
                    }
                    ttmlSubtitle = ttmlSubtitle2;
                    i3 = i4;
                } else if (eventType == 2) {
                    i3 += DEFAULT_TICKRATE;
                } else if (eventType == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            return ttmlSubtitle;
        } catch (Throwable e2) {
            throw new ParserException("Unable to parse source", e2);
        } catch (Throwable e22) {
            throw new IllegalStateException("Unexpected error when reading input.", e22);
        }
    }

    private Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (ParserUtil.isStartTag(xmlPullParser, ATTR_STYLE)) {
                String attributeValue = ParserUtil.getAttributeValue(xmlPullParser, ATTR_STYLE);
                TtmlStyle parseStyleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    String[] parseStyleIds = parseStyleIds(attributeValue);
                    for (int i = 0; i < parseStyleIds.length; i += DEFAULT_TICKRATE) {
                        parseStyleAttributes.chain((TtmlStyle) map.get(parseStyleIds[i]));
                    }
                }
                if (parseStyleAttributes.getId() != null) {
                    map.put(parseStyleAttributes.getId(), parseStyleAttributes);
                }
            } else if (ParserUtil.isStartTag(xmlPullParser, ATTR_REGION)) {
                Pair parseRegionAttributes = parseRegionAttributes(xmlPullParser);
                if (parseRegionAttributes != null) {
                    map2.put(parseRegionAttributes.first, parseRegionAttributes.second);
                }
            }
        } while (!ParserUtil.isEndTag(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private Pair<String, TtmlRegion> parseRegionAttributes(XmlPullParser xmlPullParser) {
        String attributeValue = ParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_ID);
        Object attributeValue2 = ParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_ORIGIN);
        Object attributeValue3 = ParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue2 == null || attributeValue == null) {
            return null;
        }
        float parseFloat;
        float parseFloat2;
        float parseFloat3;
        Matcher matcher = PERCENTAGE_COORDINATES.matcher(attributeValue2);
        if (matcher.matches()) {
            try {
                parseFloat = Float.parseFloat(matcher.group(DEFAULT_TICKRATE)) / 100.0f;
                parseFloat2 = Float.parseFloat(matcher.group(2)) / 100.0f;
            } catch (Throwable e) {
                Log.w(TAG, "Ignoring region with malformed origin: '" + attributeValue2 + "'", e);
                parseFloat2 = Cue.DIMEN_UNSET;
                parseFloat = Cue.DIMEN_UNSET;
            }
        } else {
            parseFloat2 = Cue.DIMEN_UNSET;
            parseFloat = Cue.DIMEN_UNSET;
        }
        if (attributeValue3 != null) {
            matcher = PERCENTAGE_COORDINATES.matcher(attributeValue3);
            if (matcher.matches()) {
                try {
                    parseFloat3 = Float.parseFloat(matcher.group(DEFAULT_TICKRATE)) / 100.0f;
                } catch (Throwable e2) {
                    Log.w(TAG, "Ignoring malformed region extent: '" + attributeValue3 + "'", e2);
                }
                if (parseFloat == Cue.DIMEN_UNSET) {
                    return new Pair(attributeValue, new TtmlRegion(parseFloat, parseFloat2, parseFloat3));
                }
                return null;
            }
        }
        parseFloat3 = Cue.DIMEN_UNSET;
        if (parseFloat == Cue.DIMEN_UNSET) {
            return null;
        }
        return new Pair(attributeValue, new TtmlRegion(parseFloat, parseFloat2, parseFloat3));
    }

    private String[] parseStyleIds(String str) {
        return str.split("\\s+");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.android.exoplayer.text.ttml.TtmlStyle parseStyleAttributes(org.xmlpull.v1.XmlPullParser r13, com.google.android.exoplayer.text.ttml.TtmlStyle r14) {
        /*
        r12 = this;
        r6 = 3;
        r5 = 2;
        r3 = -1;
        r4 = 1;
        r2 = 0;
        r8 = r13.getAttributeCount();
        r7 = r2;
        r0 = r14;
    L_0x000b:
        if (r7 >= r8) goto L_0x0242;
    L_0x000d:
        r9 = r13.getAttributeValue(r7);
        r1 = r13.getAttributeName(r7);
        r10 = r1.hashCode();
        switch(r10) {
            case -1550943582: goto L_0x0066;
            case -1224696685: goto L_0x0045;
            case -1065511464: goto L_0x0071;
            case -879295043: goto L_0x007c;
            case -734428249: goto L_0x005b;
            case 3355: goto L_0x0024;
            case 94842723: goto L_0x003a;
            case 365601008: goto L_0x0050;
            case 1287124693: goto L_0x002f;
            default: goto L_0x001c;
        };
    L_0x001c:
        r1 = r3;
    L_0x001d:
        switch(r1) {
            case 0: goto L_0x0088;
            case 1: goto L_0x009e;
            case 2: goto L_0x00cf;
            case 3: goto L_0x0100;
            case 4: goto L_0x010a;
            case 5: goto L_0x0137;
            case 6: goto L_0x0148;
            case 7: goto L_0x0159;
            case 8: goto L_0x01dd;
            default: goto L_0x0020;
        };
    L_0x0020:
        r1 = r7 + 1;
        r7 = r1;
        goto L_0x000b;
    L_0x0024:
        r10 = "id";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x002d:
        r1 = r2;
        goto L_0x001d;
    L_0x002f:
        r10 = "backgroundColor";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x0038:
        r1 = r4;
        goto L_0x001d;
    L_0x003a:
        r10 = "color";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x0043:
        r1 = r5;
        goto L_0x001d;
    L_0x0045:
        r10 = "fontFamily";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x004e:
        r1 = r6;
        goto L_0x001d;
    L_0x0050:
        r10 = "fontSize";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x0059:
        r1 = 4;
        goto L_0x001d;
    L_0x005b:
        r10 = "fontWeight";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x0064:
        r1 = 5;
        goto L_0x001d;
    L_0x0066:
        r10 = "fontStyle";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x006f:
        r1 = 6;
        goto L_0x001d;
    L_0x0071:
        r10 = "textAlign";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x007a:
        r1 = 7;
        goto L_0x001d;
    L_0x007c:
        r10 = "textDecoration";
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x001c;
    L_0x0085:
        r1 = 8;
        goto L_0x001d;
    L_0x0088:
        r1 = "style";
        r10 = r13.getName();
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x0020;
    L_0x0095:
        r0 = r12.createIfNull(r0);
        r0 = r0.setId(r9);
        goto L_0x0020;
    L_0x009e:
        r0 = r12.createIfNull(r0);
        r1 = com.google.android.exoplayer.text.ttml.TtmlColorParser.parseColor(r9);	 Catch:{ IllegalArgumentException -> 0x00ab }
        r0.setBackgroundColor(r1);	 Catch:{ IllegalArgumentException -> 0x00ab }
        goto L_0x0020;
    L_0x00ab:
        r1 = move-exception;
        r1 = "TtmlParser";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "failed parsing background value: '";
        r10 = r10.append(r11);
        r9 = r10.append(r9);
        r10 = "'";
        r9 = r9.append(r10);
        r9 = r9.toString();
        android.util.Log.w(r1, r9);
        goto L_0x0020;
    L_0x00cf:
        r0 = r12.createIfNull(r0);
        r1 = com.google.android.exoplayer.text.ttml.TtmlColorParser.parseColor(r9);	 Catch:{ IllegalArgumentException -> 0x00dc }
        r0.setFontColor(r1);	 Catch:{ IllegalArgumentException -> 0x00dc }
        goto L_0x0020;
    L_0x00dc:
        r1 = move-exception;
        r1 = "TtmlParser";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "failed parsing color value: '";
        r10 = r10.append(r11);
        r9 = r10.append(r9);
        r10 = "'";
        r9 = r9.append(r10);
        r9 = r9.toString();
        android.util.Log.w(r1, r9);
        goto L_0x0020;
    L_0x0100:
        r0 = r12.createIfNull(r0);
        r0 = r0.setFontFamily(r9);
        goto L_0x0020;
    L_0x010a:
        r0 = r12.createIfNull(r0);	 Catch:{ ParserException -> 0x0113 }
        parseFontSize(r9, r0);	 Catch:{ ParserException -> 0x0113 }
        goto L_0x0020;
    L_0x0113:
        r1 = move-exception;
        r1 = "TtmlParser";
        r10 = new java.lang.StringBuilder;
        r10.<init>();
        r11 = "failed parsing fontSize value: '";
        r10 = r10.append(r11);
        r9 = r10.append(r9);
        r10 = "'";
        r9 = r9.append(r10);
        r9 = r9.toString();
        android.util.Log.w(r1, r9);
        goto L_0x0020;
    L_0x0137:
        r0 = r12.createIfNull(r0);
        r1 = "bold";
        r1 = r1.equalsIgnoreCase(r9);
        r0 = r0.setBold(r1);
        goto L_0x0020;
    L_0x0148:
        r0 = r12.createIfNull(r0);
        r1 = "italic";
        r1 = r1.equalsIgnoreCase(r9);
        r0 = r0.setItalic(r1);
        goto L_0x0020;
    L_0x0159:
        r1 = com.google.android.exoplayer.util.Util.toLowerInvariant(r9);
        r9 = r1.hashCode();
        switch(r9) {
            case -1364013995: goto L_0x01a2;
            case 100571: goto L_0x0197;
            case 3317767: goto L_0x0176;
            case 108511772: goto L_0x018c;
            case 109757538: goto L_0x0181;
            default: goto L_0x0164;
        };
    L_0x0164:
        r1 = r3;
    L_0x0165:
        switch(r1) {
            case 0: goto L_0x016a;
            case 1: goto L_0x01ad;
            case 2: goto L_0x01b9;
            case 3: goto L_0x01c5;
            case 4: goto L_0x01d1;
            default: goto L_0x0168;
        };
    L_0x0168:
        goto L_0x0020;
    L_0x016a:
        r0 = r12.createIfNull(r0);
        r1 = android.text.Layout.Alignment.ALIGN_NORMAL;
        r0 = r0.setTextAlign(r1);
        goto L_0x0020;
    L_0x0176:
        r9 = "left";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x0164;
    L_0x017f:
        r1 = r2;
        goto L_0x0165;
    L_0x0181:
        r9 = "start";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x0164;
    L_0x018a:
        r1 = r4;
        goto L_0x0165;
    L_0x018c:
        r9 = "right";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x0164;
    L_0x0195:
        r1 = r5;
        goto L_0x0165;
    L_0x0197:
        r9 = "end";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x0164;
    L_0x01a0:
        r1 = r6;
        goto L_0x0165;
    L_0x01a2:
        r9 = "center";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x0164;
    L_0x01ab:
        r1 = 4;
        goto L_0x0165;
    L_0x01ad:
        r0 = r12.createIfNull(r0);
        r1 = android.text.Layout.Alignment.ALIGN_NORMAL;
        r0 = r0.setTextAlign(r1);
        goto L_0x0020;
    L_0x01b9:
        r0 = r12.createIfNull(r0);
        r1 = android.text.Layout.Alignment.ALIGN_OPPOSITE;
        r0 = r0.setTextAlign(r1);
        goto L_0x0020;
    L_0x01c5:
        r0 = r12.createIfNull(r0);
        r1 = android.text.Layout.Alignment.ALIGN_OPPOSITE;
        r0 = r0.setTextAlign(r1);
        goto L_0x0020;
    L_0x01d1:
        r0 = r12.createIfNull(r0);
        r1 = android.text.Layout.Alignment.ALIGN_CENTER;
        r0 = r0.setTextAlign(r1);
        goto L_0x0020;
    L_0x01dd:
        r1 = com.google.android.exoplayer.util.Util.toLowerInvariant(r9);
        r9 = r1.hashCode();
        switch(r9) {
            case -1461280213: goto L_0x0219;
            case -1026963764: goto L_0x020e;
            case 913457136: goto L_0x0203;
            case 1679736913: goto L_0x01f8;
            default: goto L_0x01e8;
        };
    L_0x01e8:
        r1 = r3;
    L_0x01e9:
        switch(r1) {
            case 0: goto L_0x01ee;
            case 1: goto L_0x0224;
            case 2: goto L_0x022e;
            case 3: goto L_0x0238;
            default: goto L_0x01ec;
        };
    L_0x01ec:
        goto L_0x0020;
    L_0x01ee:
        r0 = r12.createIfNull(r0);
        r0 = r0.setLinethrough(r4);
        goto L_0x0020;
    L_0x01f8:
        r9 = "linethrough";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x01e8;
    L_0x0201:
        r1 = r2;
        goto L_0x01e9;
    L_0x0203:
        r9 = "nolinethrough";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x01e8;
    L_0x020c:
        r1 = r4;
        goto L_0x01e9;
    L_0x020e:
        r9 = "underline";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x01e8;
    L_0x0217:
        r1 = r5;
        goto L_0x01e9;
    L_0x0219:
        r9 = "nounderline";
        r1 = r1.equals(r9);
        if (r1 == 0) goto L_0x01e8;
    L_0x0222:
        r1 = r6;
        goto L_0x01e9;
    L_0x0224:
        r0 = r12.createIfNull(r0);
        r0 = r0.setLinethrough(r2);
        goto L_0x0020;
    L_0x022e:
        r0 = r12.createIfNull(r0);
        r0 = r0.setUnderline(r4);
        goto L_0x0020;
    L_0x0238:
        r0 = r12.createIfNull(r0);
        r0 = r0.setUnderline(r2);
        goto L_0x0020;
    L_0x0242:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.text.ttml.TtmlParser.parseStyleAttributes(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer.text.ttml.TtmlStyle):com.google.android.exoplayer.text.ttml.TtmlStyle");
    }

    private TtmlStyle createIfNull(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    private TtmlNode parseNode(XmlPullParser xmlPullParser, TtmlNode ttmlNode, Map<String, TtmlRegion> map) throws ParserException {
        long parseTimeExpression;
        long j = 0;
        long j2 = -1;
        long j3 = -1;
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        String[] strArr = null;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle parseStyleAttributes = parseStyleAttributes(xmlPullParser, null);
        int i = 0;
        while (i < attributeCount) {
            long j4;
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (ATTR_BEGIN.equals(attributeName)) {
                j2 = j;
                parseTimeExpression = parseTimeExpression(attributeValue, DEFAULT_FRAMERATE, DEFAULT_TICKRATE, DEFAULT_TICKRATE);
                j4 = j3;
                j3 = parseTimeExpression;
            } else if (ATTR_END.equals(attributeName)) {
                j4 = parseTimeExpression(attributeValue, DEFAULT_FRAMERATE, DEFAULT_TICKRATE, DEFAULT_TICKRATE);
                j3 = j2;
                j2 = j;
            } else if (ATTR_DURATION.equals(attributeName)) {
                parseTimeExpression = j3;
                j3 = j2;
                j2 = parseTimeExpression(attributeValue, DEFAULT_FRAMERATE, DEFAULT_TICKRATE, DEFAULT_TICKRATE);
                j4 = parseTimeExpression;
            } else if (ATTR_STYLE.equals(attributeName)) {
                String[] parseStyleIds = parseStyleIds(attributeValue);
                if (parseStyleIds.length > 0) {
                    strArr = parseStyleIds;
                }
                j4 = j3;
                j3 = j2;
                j2 = j;
            } else if (ATTR_REGION.equals(attributeName) && map.containsKey(attributeValue)) {
                str = attributeValue;
                j4 = j3;
                j3 = j2;
                j2 = j;
            } else {
                j4 = j3;
                j3 = j2;
                j2 = j;
            }
            i += DEFAULT_TICKRATE;
            j = j2;
            j2 = j3;
            j3 = j4;
        }
        if (!(ttmlNode == null || ttmlNode.startTimeUs == -1)) {
            if (j2 != -1) {
                j2 += ttmlNode.startTimeUs;
            }
            if (j3 != -1) {
                parseTimeExpression = j3 + ttmlNode.startTimeUs;
                j3 = j2;
                j2 = parseTimeExpression;
                if (j2 == -1) {
                    if (j <= 0) {
                        j2 = j3 + j;
                    } else if (!(ttmlNode == null || ttmlNode.endTimeUs == -1)) {
                        j2 = ttmlNode.endTimeUs;
                    }
                }
                return TtmlNode.buildNode(xmlPullParser.getName(), j3, j2, parseStyleAttributes, strArr, str);
            }
        }
        parseTimeExpression = j3;
        j3 = j2;
        j2 = parseTimeExpression;
        if (j2 == -1) {
            if (j <= 0) {
                j2 = ttmlNode.endTimeUs;
            } else {
                j2 = j3 + j;
            }
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), j3, j2, parseStyleAttributes, strArr, str);
    }

    private static boolean isSupportedTag(String str) {
        if (str.equals(TtmlNode.TAG_TT) || str.equals(TtmlNode.TAG_HEAD) || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals(TtmlNode.TAG_BR) || str.equals(ATTR_STYLE) || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(ATTR_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals(TtmlNode.TAG_SMPTE_IMAGE) || str.equals(TtmlNode.TAG_SMPTE_DATA) || str.equals(TtmlNode.TAG_SMPTE_INFORMATION)) {
            return true;
        }
        return false;
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws ParserException {
        Matcher matcher;
        String[] split = str.split("\\s+");
        if (split.length == DEFAULT_TICKRATE) {
            matcher = FONT_SIZE.matcher(str);
        } else if (split.length == 2) {
            matcher = FONT_SIZE.matcher(split[DEFAULT_TICKRATE]);
            Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new ParserException("Invalid number of entries for fontSize: " + split.length + ".");
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            int i = -1;
            switch (group.hashCode()) {
                case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                    if (group.equals("%")) {
                        i = 2;
                        break;
                    }
                    break;
                case 3240:
                    if (group.equals("em")) {
                        i = DEFAULT_TICKRATE;
                        break;
                    }
                    break;
                case 3592:
                    if (group.equals("px")) {
                        i = 0;
                        break;
                    }
                    break;
            }
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    ttmlStyle.setFontSizeUnit(DEFAULT_TICKRATE);
                    break;
                case DEFAULT_TICKRATE /*1*/:
                    ttmlStyle.setFontSizeUnit(2);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    ttmlStyle.setFontSizeUnit(3);
                    break;
                default:
                    throw new ParserException("Invalid unit for fontSize: '" + group + "'.");
            }
            ttmlStyle.setFontSize(Float.valueOf(matcher.group(DEFAULT_TICKRATE)).floatValue());
            return;
        }
        throw new ParserException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static long parseTimeExpression(String str, int i, int i2, int i3) throws ParserException {
        double d = 0.0d;
        Matcher matcher = CLOCK_TIME.matcher(str);
        double parseLong;
        if (matcher.matches()) {
            double parseLong2 = ((double) Long.parseLong(matcher.group(3))) + (((double) (Long.parseLong(matcher.group(DEFAULT_TICKRATE)) * 3600)) + ((double) (Long.parseLong(matcher.group(2)) * 60)));
            String group = matcher.group(4);
            parseLong2 += group != null ? Double.parseDouble(group) : 0.0d;
            group = matcher.group(5);
            if (group != null) {
                parseLong = ((double) Long.parseLong(group)) / ((double) i);
            } else {
                parseLong = 0.0d;
            }
            parseLong += parseLong2;
            String group2 = matcher.group(6);
            if (group2 != null) {
                d = (((double) Long.parseLong(group2)) / ((double) i2)) / ((double) i);
            }
            return (long) ((parseLong + d) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (matcher2.matches()) {
            parseLong = Double.parseDouble(matcher2.group(DEFAULT_TICKRATE));
            String group3 = matcher2.group(2);
            if (group3.equals("h")) {
                parseLong *= 3600.0d;
            } else if (group3.equals("m")) {
                parseLong *= 60.0d;
            } else if (!group3.equals("s")) {
                if (group3.equals("ms")) {
                    parseLong /= 1000.0d;
                } else if (group3.equals("f")) {
                    parseLong /= (double) i;
                } else if (group3.equals("t")) {
                    parseLong /= (double) i3;
                }
            }
            return (long) (parseLong * 1000000.0d);
        }
        throw new ParserException("Malformed time expression: " + str);
    }
}
