.class Lorg/spongycastle/asn1/ab;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final a:Lorg/spongycastle/asn1/af;

.field static final b:Lorg/spongycastle/asn1/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lorg/spongycastle/asn1/af;

    invoke-direct {v0}, Lorg/spongycastle/asn1/af;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/ab;->a:Lorg/spongycastle/asn1/af;

    .line 6
    new-instance v0, Lorg/spongycastle/asn1/ah;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ah;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/ab;->b:Lorg/spongycastle/asn1/ah;

    return-void
.end method

.method static a(Lorg/spongycastle/asn1/e;)Lorg/spongycastle/asn1/af;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/spongycastle/asn1/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ab;->a:Lorg/spongycastle/asn1/af;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/af;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/af;-><init>(Lorg/spongycastle/asn1/e;)V

    goto :goto_0
.end method
