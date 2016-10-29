package com.twitter.library.av.model.parser;

import bbl;
import bbn;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.config.d;
import com.twitter.model.av.Video;
import com.twitter.model.av.VideoCta;
import com.twitter.model.av.u;
import com.twitter.model.core.am;
import com.twitter.util.aj;
import com.twitter.util.collection.x;
import com.twitter.util.telephony.TelephonyUtil;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* compiled from: Twttr */
public class VideoVmapPlaylistParser extends c {
    private static final String[] l;
    long c;
    String d;
    String e;
    long f;
    String g;
    String h;
    TwitterVmapVersion i;
    Map<String, List<String>> j;
    Map<String, List<String>> k;
    private VideoCta m;
    private VideoCta n;
    private List<am> o;
    private List<am> p;
    private final TelephonyUtil q;
    private final d r;

    /* compiled from: Twttr */
    enum TwitterVmapVersion {
        V1,
        V2,
        UNKNOWN
    }

    static {
        l = new String[]{"cta_download_app", "cta_open_url", "cta_watch_now"};
    }

    protected VideoVmapPlaylistParser(TelephonyUtil telephonyUtil, d dVar) {
        this.q = telephonyUtil;
        this.r = dVar;
    }

    public static VideoVmapPlaylistParser a() {
        return new VideoVmapPlaylistParser(TelephonyUtil.i(), d.a);
    }

    protected void a(InputStream inputStream) throws Exception {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        Document parse = newInstance.newDocumentBuilder().parse(inputStream);
        this.i = a(parse);
        if (b(parse)) {
            boolean c = c(parse);
            String a = a(this.e, this.o);
            if (c) {
                this.a = new Video[2];
                this.a[0] = (Video) new u().a(this.g).b("ad").a(this.f).c(a(this.h, this.p)).a(this.j).a(this.n).q();
                this.a[1] = (Video) new u().a(this.d).b(MimeTypes.BASE_TYPE_VIDEO).a(this.c).c(a).a(true).a(this.k).a(this.m).q();
                return;
            }
            this.a = new Video[1];
            this.a[0] = (Video) new u().a(this.d).b(MimeTypes.BASE_TYPE_VIDEO).a(this.c).c(a).a(true).a(this.k).a(this.m).q();
        }
    }

    private String a(String str, List<am> list) {
        if (!d.a("video_configurations_amplify_video_bird_url_android_enabled")) {
            return str;
        }
        return (String) this.r.a((List) list, this.q.e()).c(str);
    }

    private TwitterVmapVersion a(Document document) {
        TwitterVmapVersion twitterVmapVersion = TwitterVmapVersion.V1;
        NodeList elementsByTagNameNS = document.getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "*");
        if (elementsByTagNameNS == null || elementsByTagNameNS.getLength() <= 0) {
            return twitterVmapVersion;
        }
        return TwitterVmapVersion.V2;
    }

    private boolean b(Document document) throws Exception {
        NodeList elementsByTagName;
        if (this.i == TwitterVmapVersion.V1) {
            elementsByTagName = document.getDocumentElement().getElementsByTagName("tw:content");
        } else {
            elementsByTagName = document.getDocumentElement().getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "content");
        }
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return false;
        }
        Element element = (Element) elementsByTagName.item(0);
        Object attribute = element.getAttribute("ownerId");
        if (aj.a(attribute)) {
            return false;
        }
        this.c = Long.parseLong(attribute);
        this.d = element.getAttribute("contentId");
        if (aj.a(this.d)) {
            return false;
        }
        this.e = e(element);
        if (this.e == null) {
            return false;
        }
        Element element2;
        if (this.i == TwitterVmapVersion.V1) {
            element2 = (Element) element.getParentNode();
        } else {
            element2 = element;
        }
        this.m = d(element);
        Map hashMap = new HashMap();
        a(element2, true, hashMap);
        this.k = !hashMap.isEmpty() ? hashMap : null;
        this.o = a(element);
        return true;
    }

    private void a(Element element, boolean z, Map<String, List<String>> map) {
        NodeList elementsByTagName;
        if (this.i == TwitterVmapVersion.V1 && z) {
            elementsByTagName = element.getElementsByTagName("tw:TrackingEvents");
        } else {
            elementsByTagName = element.getElementsByTagName("TrackingEvents");
        }
        if (elementsByTagName != null && elementsByTagName.getLength() > 0) {
            NodeList elementsByTagName2 = ((Element) elementsByTagName.item(0)).getElementsByTagName("Tracking");
            int length = elementsByTagName2.getLength();
            for (int i = 0; i < length; i++) {
                a((Map) map, elementsByTagName2.item(i));
            }
        }
    }

    private void a(Map<String, List<String>> map, Node node) {
        Object attribute = ((Element) node).getAttribute("event");
        Object textContent = node.getTextContent();
        if (aj.b(attribute) && aj.b(textContent)) {
            String trim = attribute.trim();
            String trim2 = textContent.trim();
            List list = (List) map.get(trim);
            if (list == null) {
                list = new ArrayList();
                map.put(trim, list);
            }
            list.add(trim2);
        }
    }

    private void a(NodeList nodeList, String str, Map<String, List<String>> map) {
        List list = (List) map.get(str);
        for (int i = 0; i < nodeList.getLength(); i++) {
            Object textContent = nodeList.item(i).getTextContent();
            if (aj.b(textContent)) {
                if (list == null) {
                    list = new ArrayList();
                    map.put(str, list);
                }
                list.add(textContent.trim());
            }
        }
    }

    private boolean c(Document document) throws Exception {
        NodeList elementsByTagName = document.getDocumentElement().getElementsByTagName("Ad");
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return false;
        }
        boolean z;
        Element element = (Element) elementsByTagName.item(0);
        NodeList elementsByTagName2 = document.getElementsByTagName("Extensions");
        if (elementsByTagName2 != null) {
            int i = 0;
            z = false;
            while (!z && i < elementsByTagName2.getLength()) {
                boolean c = c((Element) elementsByTagName2.item(i));
                i++;
                z = c;
            }
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        this.h = e(element);
        if (this.h == null) {
            return false;
        }
        Map hashMap = new HashMap();
        a(element, false, hashMap);
        NodeList elementsByTagName3 = element.getElementsByTagName("Impression");
        if (elementsByTagName3 != null) {
            a(elementsByTagName3, "impressionTag", hashMap);
        }
        elementsByTagName = element.getElementsByTagName("Error");
        if (elementsByTagName != null) {
            a(elementsByTagName, "errorTag", hashMap);
        }
        this.j = !hashMap.isEmpty() ? hashMap : null;
        return true;
    }

    private List<am> a(Element element) {
        int i = 0;
        List<am> arrayList = new ArrayList();
        NodeList elementsByTagNameNS = element.getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "videoVariants");
        if (elementsByTagNameNS != null && elementsByTagNameNS.getLength() > 0) {
            NodeList elementsByTagNameNS2 = ((Element) elementsByTagNameNS.item(0)).getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "videoVariant");
            if (elementsByTagNameNS2 != null) {
                while (i < elementsByTagNameNS2.getLength()) {
                    x b = b((Element) elementsByTagNameNS2.item(i));
                    if (b.c()) {
                        arrayList.add(b.b());
                    }
                    i++;
                }
            }
        }
        return arrayList;
    }

    private x<am> b(Element element) {
        String attribute = element.getAttribute("url");
        String attribute2 = element.getAttribute("content_type");
        String attribute3 = element.getAttribute("bit_rate");
        int i = 0;
        if (aj.b(attribute3)) {
            try {
                i = Integer.parseInt(attribute3);
            } catch (Throwable e) {
                a(e, attribute, attribute2, attribute3);
            }
        }
        if (attribute != null && attribute2 != null) {
            return x.a(new am(attribute, attribute2, i));
        }
        a(new Exception("Either the url or the contentType is missing"), attribute, attribute2, attribute3);
        return x.a();
    }

    private void a(Throwable th, String str, String str2, String str3) {
        bbn.a(new bbl(th).a("videoVariant.url", str).a("videoVariant.contentType", str2).a("videoVariant.bitRate", str3));
    }

    private boolean c(Element element) throws Exception {
        NodeList elementsByTagNameNS;
        if (this.i != TwitterVmapVersion.V1) {
            elementsByTagNameNS = element.getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "ad");
        } else {
            elementsByTagNameNS = element.getElementsByTagName("tw:ad");
        }
        if (elementsByTagNameNS == null || elementsByTagNameNS.getLength() <= 0) {
            return false;
        }
        Element element2 = (Element) elementsByTagNameNS.item(0);
        Object attribute = element2.getAttribute("ownerId");
        if (aj.a(attribute)) {
            return false;
        }
        this.f = Long.parseLong(attribute);
        this.g = element2.getAttribute("adId");
        if (aj.a(this.g)) {
            return false;
        }
        this.n = d(element2);
        this.p = a(element2);
        return true;
    }

    private VideoCta d(Element element) {
        int i = 0;
        int length;
        for (String str : l) {
            Element a = a(str, element);
            if (a != null) {
                Map hashMap = new HashMap();
                NamedNodeMap attributes = a.getAttributes();
                if (attributes != null) {
                    length = attributes.getLength();
                    while (i < length) {
                        Node item = attributes.item(i);
                        hashMap.put(item.getNodeName(), item.getNodeValue());
                        i++;
                    }
                    if ("cta_download_app".equals(str)) {
                        String textContent = a.getTextContent();
                        if (textContent != null) {
                            hashMap.put(VideoCta.b, textContent.trim());
                        }
                    }
                    if (hashMap.size() > 0) {
                        return new VideoCta(str, hashMap);
                    }
                    return null;
                }
            }
        }
        return null;
    }

    Element a(String str, Element element) {
        NodeList elementsByTagNameNS = element.getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", str);
        if (elementsByTagNameNS == null || elementsByTagNameNS.getLength() <= 0) {
            return null;
        }
        Element element2 = (Element) elementsByTagNameNS.item(0);
        if (!"cta_download_app".equals(str)) {
            return element2;
        }
        elementsByTagNameNS = element2.getElementsByTagNameNS("http://twitter.com/schema/videoVMapV2.xsd", "play_store");
        if (elementsByTagNameNS == null || elementsByTagNameNS.getLength() <= 0) {
            return element2;
        }
        return (Element) elementsByTagNameNS.item(0);
    }

    private String e(Element element) throws Exception {
        NodeList elementsByTagName = element.getElementsByTagName("MediaFile");
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return null;
        }
        String textContent = ((Element) elementsByTagName.item(0)).getTextContent();
        if (aj.b(textContent)) {
            return textContent.trim();
        }
        return textContent;
    }
}
