.class final Lcom/twitter/android/moments/ui/fullscreen/ec;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dialog/k;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ei;

.field final synthetic b:Lcom/twitter/model/moments/ad;

.field final synthetic c:Lcom/twitter/model/moments/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->b:Lcom/twitter/model/moments/ad;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->c:Lcom/twitter/model/moments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->a:Lcom/twitter/android/moments/ui/fullscreen/ei;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->b:Lcom/twitter/model/moments/ad;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ec;->c:Lcom/twitter/model/moments/a;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ei;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;)V

    .line 57
    return-void
.end method
