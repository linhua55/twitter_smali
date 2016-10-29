.class public Lcom/twitter/android/av/bt;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/av/bw;

.field private c:Lcom/twitter/android/av/bv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/av/bt;->a:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/twitter/android/av/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/av/bw;-><init>(Lcom/twitter/android/av/bt;Lcom/twitter/android/av/bu;)V

    iput-object v0, p0, Lcom/twitter/android/av/bt;->b:Lcom/twitter/android/av/bw;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/twitter/android/av/bt;->b:Lcom/twitter/android/av/bw;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bw;->removeMessages(I)V

    .line 43
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 34
    iget-object v0, p0, Lcom/twitter/android/av/bt;->b:Lcom/twitter/android/av/bw;

    invoke-virtual {v0, v1}, Lcom/twitter/android/av/bw;->removeMessages(I)V

    .line 35
    iget-object v0, p0, Lcom/twitter/android/av/bt;->b:Lcom/twitter/android/av/bw;

    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/android/av/bw;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    return-void
.end method

.method public a(Lcom/twitter/android/av/bv;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/av/bt;->c:Lcom/twitter/android/av/bv;

    .line 52
    return-void
.end method

.method public b()Lcom/twitter/android/av/bv;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/av/bt;->c:Lcom/twitter/android/av/bv;

    return-object v0
.end method
