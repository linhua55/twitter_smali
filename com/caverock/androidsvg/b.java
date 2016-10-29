package com.caverock.androidsvg;

import org.xml.sax.SAXException;

/* compiled from: Twttr */
class b extends cb {
    public b(String str) {
        super(str.replaceAll("(?s)/\\*.*?\\*/", TtmlNode.ANONYMOUS_REGION_ID));
    }

    public String a() {
        int s = s();
        if (s == this.b) {
            return null;
        }
        String substring = this.a.substring(this.b, s);
        this.b = s;
        return substring;
    }

    private int s() {
        if (c()) {
            return this.b;
        }
        int i = this.b;
        int i2 = this.b;
        char charAt = this.a.charAt(this.b);
        if (charAt == '-') {
            charAt = k();
        }
        if ((charAt >= 'A' && charAt <= 'Z') || ((charAt >= 'a' && charAt <= 'z') || charAt == '_')) {
            i2 = k();
            while (true) {
                if ((i2 < 65 || i2 > 90) && ((i2 < 97 || i2 > 122) && !((i2 >= 48 && i2 <= 57) || i2 == 45 || i2 == 95))) {
                    break;
                }
                i2 = k();
            }
            i2 = this.b;
        }
        this.b = i;
        return i2;
    }

    public boolean a(e eVar) throws SAXException {
        if (c()) {
            return false;
        }
        Combinator combinator;
        String a;
        f fVar;
        String a2;
        AttribOp attribOp;
        int i;
        int i2 = this.b;
        if (!eVar.b()) {
            if (a('>')) {
                combinator = Combinator.CHILD;
                d();
            } else if (a('+')) {
                combinator = Combinator.FOLLOWS;
                d();
            }
            if (a('*')) {
                a = a();
                if (a == null) {
                    fVar = new f(combinator, a);
                    eVar.e();
                } else {
                    fVar = null;
                }
            } else {
                fVar = new f(combinator, null);
            }
            while (!c()) {
                if (a('.')) {
                    if (a('#')) {
                        if (fVar == null) {
                            fVar = new f(combinator, null);
                        }
                        a = a();
                        if (a != null) {
                            throw new SAXException("Invalid \"#id\" selector in <style> element");
                        }
                        fVar.a(TtmlNode.ATTR_ID, AttribOp.EQUALS, a);
                        eVar.c();
                    }
                    if (fVar == null) {
                        break;
                    } else if (a('[')) {
                        d();
                        a2 = a();
                        if (a2 != null) {
                            throw new SAXException("Invalid attribute selector in <style> element");
                        }
                        d();
                        if (a('=')) {
                            attribOp = AttribOp.EQUALS;
                        } else if (a("~=")) {
                            attribOp = AttribOp.INCLUDES;
                        } else if (a("|=")) {
                            attribOp = null;
                        } else {
                            attribOp = AttribOp.DASHMATCH;
                        }
                        if (attribOp == null) {
                            d();
                            a = t();
                            if (a != null) {
                                throw new SAXException("Invalid attribute selector in <style> element");
                            }
                            d();
                        } else {
                            a = null;
                        }
                        if (a(']')) {
                            throw new SAXException("Invalid attribute selector in <style> element");
                        }
                        if (attribOp == null) {
                            attribOp = AttribOp.EXISTS;
                        }
                        fVar.a(a2, attribOp, a);
                        eVar.d();
                    } else if (a(':')) {
                        i = this.b;
                        if (a() != null) {
                            if (a('(')) {
                                d();
                                if (a() != null) {
                                    d();
                                    if (!a(')')) {
                                        this.b = i - 1;
                                    }
                                }
                            }
                            fVar.a(this.a.substring(i, this.b));
                            eVar.d();
                        }
                    }
                } else {
                    if (fVar == null) {
                        fVar = new f(combinator, null);
                    }
                    a = a();
                    if (a != null) {
                        throw new SAXException("Invalid \".class\" selector in <style> element");
                    }
                    fVar.a("class", AttribOp.EQUALS, a);
                    eVar.d();
                }
            }
            if (fVar != null) {
                eVar.a(fVar);
                return true;
            }
            this.b = i2;
            return false;
        }
        combinator = null;
        if (a('*')) {
            a = a();
            if (a == null) {
                fVar = null;
            } else {
                fVar = new f(combinator, a);
                eVar.e();
            }
        } else {
            fVar = new f(combinator, null);
        }
        while (!c()) {
            if (a('.')) {
                if (a('#')) {
                    if (fVar == null) {
                        fVar = new f(combinator, null);
                    }
                    a = a();
                    if (a != null) {
                        fVar.a(TtmlNode.ATTR_ID, AttribOp.EQUALS, a);
                        eVar.c();
                    } else {
                        throw new SAXException("Invalid \"#id\" selector in <style> element");
                    }
                }
                if (fVar == null) {
                    break;
                } else if (a('[')) {
                    d();
                    a2 = a();
                    if (a2 != null) {
                        d();
                        if (a('=')) {
                            attribOp = AttribOp.EQUALS;
                        } else if (a("~=")) {
                            attribOp = AttribOp.INCLUDES;
                        } else if (a("|=")) {
                            attribOp = null;
                        } else {
                            attribOp = AttribOp.DASHMATCH;
                        }
                        if (attribOp == null) {
                            a = null;
                        } else {
                            d();
                            a = t();
                            if (a != null) {
                                d();
                            } else {
                                throw new SAXException("Invalid attribute selector in <style> element");
                            }
                        }
                        if (a(']')) {
                            if (attribOp == null) {
                                attribOp = AttribOp.EXISTS;
                            }
                            fVar.a(a2, attribOp, a);
                            eVar.d();
                        } else {
                            throw new SAXException("Invalid attribute selector in <style> element");
                        }
                    }
                    throw new SAXException("Invalid attribute selector in <style> element");
                } else if (a(':')) {
                    i = this.b;
                    if (a() != null) {
                        if (a('(')) {
                            d();
                            if (a() != null) {
                                d();
                                if (a(')')) {
                                    this.b = i - 1;
                                }
                            }
                        }
                        fVar.a(this.a.substring(i, this.b));
                        eVar.d();
                    }
                }
                if (fVar != null) {
                    this.b = i2;
                    return false;
                }
                eVar.a(fVar);
                return true;
            }
            if (fVar == null) {
                fVar = new f(combinator, null);
            }
            a = a();
            if (a != null) {
                fVar.a("class", AttribOp.EQUALS, a);
                eVar.d();
            } else {
                throw new SAXException("Invalid \".class\" selector in <style> element");
            }
        }
        if (fVar != null) {
            eVar.a(fVar);
            return true;
        }
        this.b = i2;
        return false;
    }

    private String t() {
        if (c()) {
            return null;
        }
        String q = q();
        return q == null ? a() : q;
    }

    public String b() {
        if (c()) {
            return null;
        }
        int i = this.b;
        int i2 = this.b;
        int i3 = i2;
        i2 = this.a.charAt(this.b);
        while (i2 != -1 && i2 != 59 && i2 != 125 && i2 != 33 && !b(i2)) {
            if (!a(i2)) {
                i3 = this.b + 1;
            }
            i2 = k();
        }
        if (this.b > i) {
            return this.a.substring(i, i3);
        }
        this.b = i;
        return null;
    }
}
