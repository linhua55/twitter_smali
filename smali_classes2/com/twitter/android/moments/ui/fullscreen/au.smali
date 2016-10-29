.class Lcom/twitter/android/moments/ui/fullscreen/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/w",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ar;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ar;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/au;->a:Lcom/twitter/android/moments/ui/fullscreen/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/au;->a(Ljava/lang/Boolean;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/au;->a:Lcom/twitter/android/moments/ui/fullscreen/ar;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ar;->c(Lcom/twitter/android/moments/ui/fullscreen/ar;)Lcom/twitter/android/client/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/bo;->a()Lrx/w;

    move-result-object v0

    goto :goto_0
.end method
