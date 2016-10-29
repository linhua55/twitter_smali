.class public Lanv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public b:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lanv;->a:I

    .line 12
    iput p2, p0, Lanv;->b:I

    .line 13
    return-void
.end method
