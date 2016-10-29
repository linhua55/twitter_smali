.class public Lorg/spongycastle/asn1/au;
.super Lorg/spongycastle/asn1/j;
.source "Twttr"


# static fields
.field public static final a:Lorg/spongycastle/asn1/au;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lorg/spongycastle/asn1/au;

    invoke-direct {v0}, Lorg/spongycastle/asn1/au;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/au;->a:Lorg/spongycastle/asn1/au;

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/au;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/j;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method a(Lorg/spongycastle/asn1/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x5

    sget-object v1, Lorg/spongycastle/asn1/au;->b:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 37
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    return v0
.end method
