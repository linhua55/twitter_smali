.class public Ldia;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private h:Ljava/math/BigInteger;

.field private i:Ljava/math/BigInteger;

.field private j:Lorg/spongycastle/asn1/r;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ldia;->j:Lorg/spongycastle/asn1/r;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->a:Ljava/math/BigInteger;

    .line 62
    iput-object p1, p0, Ldia;->b:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Ldia;->c:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Ldia;->d:Ljava/math/BigInteger;

    .line 65
    iput-object p4, p0, Ldia;->e:Ljava/math/BigInteger;

    .line 66
    iput-object p5, p0, Ldia;->f:Ljava/math/BigInteger;

    .line 67
    iput-object p6, p0, Ldia;->g:Ljava/math/BigInteger;

    .line 68
    iput-object p7, p0, Ldia;->h:Ljava/math/BigInteger;

    .line 69
    iput-object p8, p0, Ldia;->i:Ljava/math/BigInteger;

    .line 70
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/r;)V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Ldia;->j:Lorg/spongycastle/asn1/r;

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong version for RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object v0, p0, Ldia;->a:Ljava/math/BigInteger;

    .line 84
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->b:Ljava/math/BigInteger;

    .line 85
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->c:Ljava/math/BigInteger;

    .line 86
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->d:Ljava/math/BigInteger;

    .line 87
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->e:Ljava/math/BigInteger;

    .line 88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->f:Ljava/math/BigInteger;

    .line 89
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->g:Ljava/math/BigInteger;

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->h:Ljava/math/BigInteger;

    .line 91
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldia;->i:Ljava/math/BigInteger;

    .line 93
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/r;

    iput-object v0, p0, Ldia;->j:Lorg/spongycastle/asn1/r;

    .line 97
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldia;
    .locals 2

    .prologue
    .line 38
    instance-of v0, p0, Ldia;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Ldia;

    .line 48
    :goto_0
    return-object p0

    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Ldia;

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ldia;-><init>(Lorg/spongycastle/asn1/r;)V

    move-object p0, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldia;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldia;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 170
    new-instance v1, Lorg/spongycastle/asn1/i;

    iget-object v2, p0, Ldia;->a:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 171
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 172
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 173
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 174
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 175
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->g()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 176
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->h()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 177
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->i()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 178
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldia;->j()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 180
    iget-object v1, p0, Ldia;->j:Lorg/spongycastle/asn1/r;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Ldia;->j:Lorg/spongycastle/asn1/r;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 185
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1
.end method

.method public d()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ldia;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ldia;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public g()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ldia;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public h()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ldia;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public i()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ldia;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ldia;->i:Ljava/math/BigInteger;

    return-object v0
.end method
