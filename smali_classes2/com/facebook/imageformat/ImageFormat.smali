.class public final enum Lcom/facebook/imageformat/ImageFormat;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imageformat/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum b:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum c:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum d:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum e:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum f:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum g:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum h:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum i:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum j:Lcom/facebook/imageformat/ImageFormat;

.field private static final synthetic k:[Lcom/facebook/imageformat/ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->a:Lcom/facebook/imageformat/ImageFormat;

    .line 18
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_LOSSLESS"

    invoke-direct {v0, v1, v4}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    .line 19
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_EXTENDED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->c:Lcom/facebook/imageformat/ImageFormat;

    .line 20
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v1, v6}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->d:Lcom/facebook/imageformat/ImageFormat;

    .line 21
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "WEBP_ANIMATED"

    invoke-direct {v0, v1, v7}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->e:Lcom/facebook/imageformat/ImageFormat;

    .line 22
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "JPEG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->f:Lcom/facebook/imageformat/ImageFormat;

    .line 23
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "PNG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->g:Lcom/facebook/imageformat/ImageFormat;

    .line 24
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "GIF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->h:Lcom/facebook/imageformat/ImageFormat;

    .line 25
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "BMP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->i:Lcom/facebook/imageformat/ImageFormat;

    .line 29
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->j:Lcom/facebook/imageformat/ImageFormat;

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/facebook/imageformat/ImageFormat;

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->a:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->c:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->d:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->e:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->f:Lcom/facebook/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->g:Lcom/facebook/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->h:Lcom/facebook/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->i:Lcom/facebook/imageformat/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/imageformat/ImageFormat;->j:Lcom/facebook/imageformat/ImageFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->k:[Lcom/facebook/imageformat/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->a:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->b:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->c:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->d:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->e:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/imageformat/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imageformat/ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->k:[Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v0}, [Lcom/facebook/imageformat/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imageformat/ImageFormat;

    return-object v0
.end method
