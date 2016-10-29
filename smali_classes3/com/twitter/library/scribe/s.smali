.class public Lcom/twitter/library/scribe/s;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/scribe/s;
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/twitter/library/scribe/s;->a:I

    .line 441
    return-object p0
.end method

.method public a(J)Lcom/twitter/library/scribe/s;
    .locals 1

    .prologue
    .line 445
    iput-wide p1, p0, Lcom/twitter/library/scribe/s;->b:J

    .line 446
    return-object p0
.end method

.method public b(I)Lcom/twitter/library/scribe/s;
    .locals 0

    .prologue
    .line 450
    iput p1, p0, Lcom/twitter/library/scribe/s;->c:I

    .line 451
    return-object p0
.end method

.method public c(I)Lcom/twitter/library/scribe/s;
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Lcom/twitter/library/scribe/s;->d:I

    .line 456
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/twitter/library/scribe/s;->e()Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;

    invoke-direct {v0, p0}, Lcom/twitter/library/scribe/MomentScribeDetails$Metadata;-><init>(Lcom/twitter/library/scribe/s;)V

    return-object v0
.end method
