.class public Lcom/twitter/library/scribe/bf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/library/scribe/bf;",
            "Lcom/twitter/library/scribe/bh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/library/scribe/bi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/bi;-><init>(Lcom/twitter/library/scribe/bg;)V

    sput-object v0, Lcom/twitter/library/scribe/bf;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/library/scribe/bh;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/twitter/library/scribe/bh;->a(Lcom/twitter/library/scribe/bh;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/scribe/bf;->b:J

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/scribe/bh;Lcom/twitter/library/scribe/bg;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/twitter/library/scribe/bf;-><init>(Lcom/twitter/library/scribe/bh;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 53
    const-string/jumbo v0, "sticker_id"

    iget-wide v2, p0, Lcom/twitter/library/scribe/bf;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 54
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 55
    return-void
.end method

.method public a(Lcom/twitter/library/scribe/bf;)Z
    .locals 4

    .prologue
    .line 42
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/twitter/library/scribe/bf;->b:J

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/library/scribe/bf;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/library/scribe/bf;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/library/scribe/bf;

    invoke-virtual {p0, p1}, Lcom/twitter/library/scribe/bf;->a(Lcom/twitter/library/scribe/bf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/twitter/library/scribe/bf;->b:J

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v0

    return v0
.end method
