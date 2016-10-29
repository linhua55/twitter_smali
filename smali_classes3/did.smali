.class public Ldid;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:Lorg/spongycastle/asn1/l;

.field private b:Lorg/spongycastle/asn1/d;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldid;->c:Z

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/l;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/l;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldid;->c:Z

    .line 53
    iput-object p1, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/l;Lorg/spongycastle/asn1/d;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldid;->c:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldid;->c:Z

    .line 71
    iput-object p1, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    .line 72
    iput-object p2, p0, Ldid;->b:Lorg/spongycastle/asn1/d;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/r;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 18
    iput-boolean v2, p0, Ldid;->c:Z

    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/r;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/l;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/l;

    move-result-object v0

    iput-object v0, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 92
    iput-boolean v1, p0, Ldid;->c:Z

    .line 93
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/r;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v0

    iput-object v0, p0, Ldid;->b:Lorg/spongycastle/asn1/d;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ldid;->b:Lorg/spongycastle/asn1/d;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ldid;
    .locals 2

    .prologue
    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Ldid;

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    check-cast p0, Ldid;

    .line 47
    :goto_0
    return-object p0

    .line 36
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/l;

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Ldid;

    check-cast p0, Lorg/spongycastle/asn1/l;

    invoke-direct {v0, p0}, Ldid;-><init>(Lorg/spongycastle/asn1/l;)V

    move-object p0, v0

    goto :goto_0

    .line 42
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Ldid;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ldid;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 47
    :cond_3
    new-instance v0, Ldid;

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ldid;-><init>(Lorg/spongycastle/asn1/r;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/spongycastle/asn1/l;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/l;

    iget-object v1, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 132
    iget-object v1, p0, Ldid;->a:Lorg/spongycastle/asn1/l;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 134
    iget-boolean v1, p0, Ldid;->c:Z

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Ldid;->b:Lorg/spongycastle/asn1/d;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Ldid;->b:Lorg/spongycastle/asn1/d;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 146
    :cond_0
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1

    .line 142
    :cond_1
    sget-object v1, Lorg/spongycastle/asn1/au;->a:Lorg/spongycastle/asn1/au;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0
.end method
