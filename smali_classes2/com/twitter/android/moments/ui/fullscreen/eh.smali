.class final Lcom/twitter/android/moments/ui/fullscreen/eh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dialog/k;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field final synthetic b:Lcom/twitter/model/moments/ad;

.field final synthetic c:Lcom/twitter/model/core/Tweet;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->b:Lcom/twitter/model/moments/ad;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->c:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->b:Lcom/twitter/model/moments/ad;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/eh;->c:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ei;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)V

    .line 128
    return-void
.end method
