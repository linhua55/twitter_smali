.class public final Lcom/twitter/model/av/af;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/av/ae;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:F

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/twitter/model/av/af;
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/twitter/model/av/af;->b:F

    .line 55
    return-object p0
.end method

.method public a(I)Lcom/twitter/model/av/af;
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/twitter/model/av/af;->c:I

    .line 61
    return-object p0
.end method

.method public a(J)Lcom/twitter/model/av/af;
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/twitter/model/av/af;->a:J

    .line 49
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/model/av/af;->e()Lcom/twitter/model/av/ae;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/av/ae;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/twitter/model/av/ae;

    invoke-direct {v0, p0}, Lcom/twitter/model/av/ae;-><init>(Lcom/twitter/model/av/af;)V

    return-object v0
.end method
