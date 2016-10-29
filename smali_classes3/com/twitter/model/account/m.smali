.class public Lcom/twitter/model/account/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Z

.field b:I

.field c:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-boolean p1, p0, Lcom/twitter/model/account/m;->a:Z

    .line 564
    iput p2, p0, Lcom/twitter/model/account/m;->b:I

    .line 565
    iput p3, p0, Lcom/twitter/model/account/m;->c:I

    .line 566
    return-void
.end method
