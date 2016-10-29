.class public abstract Lcom/twitter/android/revenue/card/bb;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected i:Landroid/view/View;

.field protected j:J

.field protected k:Lcom/twitter/android/card/CardActionHelper;

.field protected l:Lcom/twitter/android/revenue/card/o;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/revenue/card/o;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/revenue/card/bb;->l:Lcom/twitter/android/revenue/card/o;

    .line 28
    invoke-virtual {p1}, Lcom/twitter/android/revenue/card/o;->o()Lcom/twitter/android/card/CardActionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bb;->k:Lcom/twitter/android/card/CardActionHelper;

    .line 29
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)V
.end method

.method protected a(Lcom/twitter/library/card/av;)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/revenue/card/bb;->j:J

    .line 33
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected f()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bb;->i:Landroid/view/View;

    return-object v0
.end method
