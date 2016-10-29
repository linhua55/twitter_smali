.class public final Lcom/twitter/library/scribe/bh;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/bf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/scribe/bh;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/twitter/library/scribe/bh;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/scribe/bh;
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/twitter/library/scribe/bh;->a:J

    .line 70
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/twitter/library/scribe/bh;->e()Lcom/twitter/library/scribe/bf;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/bf;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/twitter/library/scribe/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/scribe/bf;-><init>(Lcom/twitter/library/scribe/bh;Lcom/twitter/library/scribe/bg;)V

    return-object v0
.end method
