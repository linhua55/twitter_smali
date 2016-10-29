.class Lcom/twitter/android/moments/data/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/at;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/at;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/twitter/android/moments/data/au;->a:Lcom/twitter/android/moments/data/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/moments/data/au;->a:Lcom/twitter/android/moments/data/at;

    invoke-static {v0}, Lcom/twitter/android/moments/data/at;->a(Lcom/twitter/android/moments/data/at;)Lcom/twitter/library/widget/av;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/twitter/android/moments/data/au;->a:Lcom/twitter/android/moments/data/at;

    invoke-static {v0}, Lcom/twitter/android/moments/data/at;->a(Lcom/twitter/android/moments/data/at;)Lcom/twitter/library/widget/av;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/av;->d(Z)V

    .line 110
    :cond_0
    return-void
.end method
