.class public Lorg/spongycastle/util/encoders/b;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Lorg/spongycastle/util/encoders/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/spongycastle/util/encoders/c;

    invoke-direct {v0}, Lorg/spongycastle/util/encoders/c;-><init>()V

    sput-object v0, Lorg/spongycastle/util/encoders/b;->a:Lorg/spongycastle/util/encoders/a;

    return-void
.end method

.method public static a([B)[B
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/encoders/b;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    :try_start_0
    sget-object v1, Lorg/spongycastle/util/encoders/b;->a:Lorg/spongycastle/util/encoders/a;

    invoke-interface {v1, p0, p1, p2, v0}, Lorg/spongycastle/util/encoders/a;->a([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lorg/spongycastle/util/encoders/EncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception encoding Hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
